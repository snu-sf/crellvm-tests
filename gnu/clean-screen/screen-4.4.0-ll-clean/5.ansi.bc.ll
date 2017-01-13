; ModuleID = './ansi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type { %struct.logfile*, %struct._IO_FILE*, i8*, i32, i32, i32, %struct.stat* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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

@visual_bell = global i32 0, align 4
@use_hardstatus = global i32 1, align 4
@printcmd = global i8* null, align 8
@use_altscreen = global i32 0, align 4
@mchar_blank = global %struct.mchar { i8 32, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@mchar_so = global %struct.mchar { i8 32, i8 16, i8 0, i8 0, i8 0, i8 0 }, align 1
@renditions = global [3 x i32] [i32 65529, i32 65531, i32 65533], align 4
@nwin_default = external global %struct.NewWindow, align 8
@mchar_null = common global %struct.mchar zeroinitializer, align 1
@state_t_string = internal global [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@string_t_string = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"BBBB02\00", align 1
@curr = internal global %struct.win* null, align 8
@cols = internal global i32 0, align 4
@rows = internal global i32 0, align 4
@display = external global %struct.display*, align 8
@mline_old = common global %struct.mline zeroinitializer, align 8
@blank = common global i8* null, align 8
@null = common global i8* null, align 8
@displays = external global %struct.display*, align 8
@flayer = external global %struct.layer*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Z0width = common global i32 0, align 4
@Z1width = common global i32 0, align 4
@captionstring = external global i8*, align 8
@hstatusstring = external global i8*, align 8
@wliststr = external global i8*, align 8
@mline_blank = common global %struct.mline zeroinitializer, align 8
@mline_null = common global %struct.mline zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ASTR\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"STRESC\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CSI\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PRIN\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PRINESC\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PRINCSI\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"PRIN4\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DCS\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"OSC\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"APC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"AKA\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"GM\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@logtstamp_on = external global i32, align 4
@logtstamp_after = external global i32, align 4
@logtstamp_string = external global i8*, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"Error writing logfile\00", align 1
@log_flush = external global i32, align 4
@compacthist = external global i32, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"\1B[?%d;%dc\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\1B[1t\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\1B[2t\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\1B]l\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\1B\5C\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\1B[0n\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"\1B[%d;1;1;112;112;1;0x\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"\1B[>%d;%d;0c\00", align 1
@nversion = external global i32, align 4
@rendlist = internal global [28 x i8] c"\C0\04\01\10\02 \00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\EA\EF\FD\DF\00\F7", align 16
@.str.30 = private unnamed_addr constant [9 x i8] c":window:\00", align 1
@EffectiveAclUser = external global %struct.acluser*, align 8
@fore = external global %struct.win*, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"printing aborted\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"Warning: no space for attr - turned off\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Warning: no space for font - turned off\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Warning: no space for color - turned off\00", align 1

; Function Attrs: nounwind uwtable
define void @ResetAnsiState(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 34
  store i32 0, i32* %w_state, align 4
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 35
  store i32 0, i32* %w_StringType, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResetWindow(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 12), align 4
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_wrap = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 48
  store i32 %0, i32* %w_wrap, align 4
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_origin = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 49
  store i32 0, i32* %w_origin, align 4
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_insert = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 50
  store i32 0, i32* %w_insert, align 4
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_revvid = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 53
  store i32 0, i32* %w_revvid, align 4
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mouse = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 75
  store i32 0, i32* %w_mouse, align 4
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_curinv = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 54
  store i32 0, i32* %w_curinv, align 4
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_curvvis = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 55
  store i32 0, i32* %w_curvvis, align 4
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autolf = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 56
  store i32 0, i32* %w_autolf, align 4
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_keypad = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 51
  store i32 0, i32* %w_keypad, align 4
  %10 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cursorkeys = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 52
  store i32 0, i32* %w_cursorkeys, align 4
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 46
  store i32 0, i32* %w_top, align 4
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %13 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 47
  store i32 %sub, i32* %w_bot, align 4
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 45
  %on = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved, i32 0, i32 0
  store i32 0, i32* %on, align 4
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  store i32 0, i32* %l_y, align 4
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 34
  store i32 0, i32* %w_state, align 4
  %19 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 35
  store i32 0, i32* %w_StringType, align 4
  %20 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 65
  %21 = load i8*, i8** %w_tabs, align 8
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer3, i32 0, i32 1
  %23 = load i32, i32* %l_width, align 4
  %conv = sext i32 %23 to i64
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %conv, i32 1, i1 false)
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 3
  %l_width5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 1
  %26 = load i32, i32* %l_width5, align 4
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs7 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 65
  %29 = load i8*, i8** %w_tabs7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %add = add nsw i32 %30, 8
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 37
  %32 = bitcast %struct.mchar* %w_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @ResetCharsets(%struct.win* %33)
  %34 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 17), align 4
  %35 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 60
  store i32 %34, i32* %w_bce, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @ResetCharsets(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 15), align 4
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_gr = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 58
  store i32 %0, i32* %w_gr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 16), align 4
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_c1 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 59
  store i32 %2, i32* %w_c1, align 4
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @SetCharsets(%struct.win* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %5 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 20), align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 20), align 8
  call void @SetCharsets(%struct.win* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @ResetEncoding(%struct.win* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetAnsiStatus(%struct.win* %w, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.win*, align 8
  %buf.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.win* %w, %struct.win** %w.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 34
  %2 = load i32, i32* %w_state, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_state1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 34
  %5 = load i32, i32* %w_state1, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [9 x i8*], [9 x i8*]* @state_t_string, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strcpy(i8* %3, i8* %6) #1
  %7 = load i8*, i8** %p, align 8
  %call2 = call i64 @strlen(i8* %7) #6
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_intermediate = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 26
  %10 = load i32, i32* %w_intermediate, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 45, i8* %11, align 1
  %12 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_intermediate4 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 26
  %13 = load i32, i32* %w_intermediate4, align 4
  %cmp5 = icmp sgt i32 %13, 255
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.then.3
  %14 = load i8*, i8** %p, align 8
  %15 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_intermediate7 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 26
  %16 = load i32, i32* %w_intermediate7, align 4
  %shr = ashr i32 %16, 8
  %call8 = call i32 @AddXChar(i8* %14, i32 %shr)
  %17 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %call8 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr9, i8** %p, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.then.3
  %18 = load i8*, i8** %p, align 8
  %19 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_intermediate11 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 26
  %20 = load i32, i32* %w_intermediate11, align 4
  %and = and i32 %20, 255
  %call12 = call i32 @AddXChar(i8* %18, i32 %and)
  %21 = load i8*, i8** %p, align 8
  %idx.ext13 = sext i32 %call12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 %idx.ext13
  store i8* %add.ptr14, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  store i8 0, i8* %22, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.10, %if.end
  %23 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_state16 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 34
  %24 = load i32, i32* %w_state16, align 4
  %cmp17 = icmp eq i32 %24, 2
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %25 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_state18 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 34
  %26 = load i32, i32* %w_state18, align 4
  %cmp19 = icmp eq i32 %26, 3
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.15
  %27 = load i8*, i8** %p, align 8
  %28 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 35
  %29 = load i32, i32* %w_StringType, align 4
  %idxprom21 = zext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [8 x i8*], [8 x i8*]* @string_t_string, i32 0, i64 %idxprom21
  %30 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %30) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %lor.lhs.false
  %31 = load i8*, i8** %p, align 8
  %call25 = call i64 @strlen(i8* %31) #6
  %32 = load i8*, i8** %p, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %32, i64 %call25
  store i8* %add.ptr26, i8** %p, align 8
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @AddXChar(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @SetCharsets(%struct.win* %p, i8* %s) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv1, 46
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 66
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv7, %cond.false ]
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv8 = sext i8 %15 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.end
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv11 = sext i8 %17 to i32
  %cmp12 = icmp ne i32 %conv11, 46
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %19 to i32
  %sub = sub nsw i32 %conv16, 48
  %20 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 41
  store i32 %sub, i32* %w_Charset, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %for.end
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = sext i8 %22 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.27

land.lhs.true.20:                                 ; preds = %if.end.17
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp ne i32 %conv21, 46
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true.20
  %25 = load i8*, i8** %s.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv25 = sext i8 %26 to i32
  %sub26 = sub nsw i32 %conv25, 48
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 42
  store i32 %sub26, i32* %w_CharsetR, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.20, %if.end.17
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  %29 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_Charset28 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 41
  %30 = load i32, i32* %w_Charset28, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_charsets30 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 43
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets30, i32 0, i64 %idxprom29
  %32 = load i32, i32* %arrayidx31, align 4
  %conv32 = trunc i32 %32 to i8
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 38
  store i8 %conv32, i8* %w_FontL, align 1
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_CharsetR33 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 42
  %35 = load i32, i32* %w_CharsetR33, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_charsets35 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 43
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets35, i32 0, i64 %idxprom34
  %37 = load i32, i32* %arrayidx36, align 4
  %conv37 = trunc i32 %37 to i8
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 39
  store i8 %conv37, i8* %w_FontR, align 1
  ret void
}

declare void @ResetEncoding(%struct.win*) #4

; Function Attrs: nounwind uwtable
define void @WriteString(%struct.win* %wp, i8* %buf, i32 %len) #0 {
entry:
  %wp.addr = alloca %struct.win*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %font = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %currx = alloca i32, align 4
  %imp = alloca i8*, align 8
  %mc = alloca %struct.mchar, align 1
  %mcp = alloca %struct.mchar*, align 8
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %omc = alloca %struct.mchar, align 1
  %t = alloca i32, align 4
  store %struct.win* %wp, %struct.win** %wp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.1096

if.end:                                           ; preds = %entry
  %1 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_log = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 68
  %2 = load %struct.logfile*, %struct.logfile** %w_log, align 8
  %tobool1 = icmp ne %struct.logfile* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.win*, %struct.win** %wp.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  call void @WLogString(%struct.win* %3, i8* %4, i32 %5)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.win*, %struct.win** %wp.addr, align 8
  store %struct.win* %6, %struct.win** @curr, align 8
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %8 = load i32, i32* %l_width, align 4
  store i32 %8, i32* @cols, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 2
  %10 = load i32, i32* %l_height, align 4
  store i32 %10, i32* @rows, align 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 72
  %12 = load i32, i32* %w_silence, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_silenceev = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 12
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_silencewait = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 71
  %15 = load i32, i32* %w_silencewait, align 4
  %mul = mul nsw i32 %15, 1000
  call void @SetTimeout(%struct.event* %w_silenceev, i32 %mul)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_monitor = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 70
  %17 = load i32, i32* %w_monitor, align 4
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_monitor9 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 70
  store i32 2, i32* %w_monitor9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.end.7
  %19 = load i32, i32* @cols, align 4
  %cmp11 = icmp sgt i32 %19, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.1089

land.lhs.true:                                    ; preds = %if.end.10
  %20 = load i32, i32* @rows, align 4
  %cmp12 = icmp sgt i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.1089

if.then.13:                                       ; preds = %land.lhs.true
  br label %do.body.14

do.body.14:                                       ; preds = %do.cond, %if.then.13
  %21 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv = zext i8 %22 to i32
  store i32 %conv, i32* %c, align 4
  %23 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 62
  %24 = load i32, i32* %w_mbcs, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %do.body.14
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 38
  %26 = load i8, i8* %w_FontL, align 1
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 37
  %font17 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 2
  store i8 %26, i8* %font17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.body.14
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 34
  %29 = load i32, i32* %w_state, align 4
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.129

land.lhs.true.21:                                 ; preds = %if.end.18
  %30 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer22 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer22, i32 0, i32 5
  %31 = load i32, i32* %l_encoding, align 4
  %cmp23 = icmp ne i32 %31, 8
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.129

land.lhs.true.25:                                 ; preds = %land.lhs.true.21
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend26 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 37
  %font27 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend26, i32 0, i32 2
  %33 = load i8, i8* %font27, align 1
  %conv28 = zext i8 %33 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %land.lhs.true.36

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %34 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend31 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 37
  %font32 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend31, i32 0, i32 2
  %35 = load i8, i8* %font32, align 1
  %conv33 = zext i8 %35 to i32
  %and = and i32 %conv33, 96
  %cmp34 = icmp eq i32 %and, 0
  br i1 %cmp34, label %if.end.129, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %land.lhs.true.30, %land.lhs.true.25
  %36 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend37 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 37
  %font38 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend37, i32 0, i32 2
  %37 = load i8, i8* %font38, align 1
  %conv39 = zext i8 %37 to i32
  %cmp40 = icmp ne i32 %conv39, 73
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.129

land.lhs.true.42:                                 ; preds = %land.lhs.true.36
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs43 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 62
  %39 = load i32, i32* %w_mbcs43, align 4
  %tobool44 = icmp ne i32 %39, 0
  br i1 %tobool44, label %if.end.129, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %land.lhs.true.42
  %40 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend46 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 37
  %font47 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend46, i32 0, i32 2
  %41 = load i8, i8* %font47, align 1
  %conv48 = zext i8 %41 to i32
  %cmp49 = icmp ne i32 %conv48, 60
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.129

land.lhs.true.51:                                 ; preds = %land.lhs.true.45
  %42 = load i32, i32* %c, align 4
  %cmp52 = icmp sge i32 %42, 32
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.129

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %43 = load i32, i32* %c, align 4
  %cmp55 = icmp ne i32 %43, 127
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.129

land.lhs.true.57:                                 ; preds = %land.lhs.true.54
  %44 = load i32, i32* %c, align 4
  %and58 = and i32 %44, 128
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %land.lhs.true.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.57
  %45 = load i32, i32* %c, align 4
  %cmp61 = icmp sge i32 %45, 160
  br i1 %cmp61, label %land.lhs.true.65, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %46 = load %struct.win*, %struct.win** @curr, align 8
  %w_c1 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 59
  %47 = load i32, i32* %w_c1, align 4
  %tobool64 = icmp ne i32 %47, 0
  br i1 %tobool64, label %if.end.129, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %lor.lhs.false.63, %lor.lhs.false
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 58
  %49 = load i32, i32* %w_gr, align 4
  %tobool66 = icmp ne i32 %49, 0
  br i1 %tobool66, label %if.end.129, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %land.lhs.true.65, %land.lhs.true.57
  %50 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 44
  %51 = load i32, i32* %w_ss, align 4
  %tobool68 = icmp ne i32 %51, 0
  br i1 %tobool68, label %if.end.129, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %land.lhs.true.67
  %52 = load %struct.win*, %struct.win** @curr, align 8
  %w_insert = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 50
  %53 = load i32, i32* %w_insert, align 4
  %tobool70 = icmp ne i32 %53, 0
  br i1 %tobool70, label %if.end.129, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %land.lhs.true.69
  %54 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer72 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer72, i32 0, i32 3
  %55 = load i32, i32* %l_x, align 4
  %56 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %56, 1
  %cmp73 = icmp slt i32 %55, %sub
  br i1 %cmp73, label %if.then.75, label %if.end.129

if.then.75:                                       ; preds = %land.lhs.true.71
  %57 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer76 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 3
  %l_x77 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer76, i32 0, i32 3
  %58 = load i32, i32* %l_x77, align 4
  store i32 %58, i32* %currx, align 4
  %59 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 -1
  store i8* %add.ptr, i8** %imp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %if.then.75
  %60 = load i32, i32* %currx, align 4
  %61 = load i32, i32* @cols, align 4
  %sub78 = sub nsw i32 %61, 1
  %cmp79 = icmp slt i32 %60, %sub78
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i32, i32* %currx, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %currx, align 4
  %63 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp81 = icmp eq i32 %dec, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %while.body
  br label %while.end

if.end.84:                                        ; preds = %while.body
  %64 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr85, i8** %buf.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv86 = zext i8 %65 to i32
  store i32 %conv86, i32* %c, align 4
  %66 = load i32, i32* %c, align 4
  %cmp87 = icmp slt i32 %66, 32
  br i1 %cmp87, label %if.then.104, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.84
  %67 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %67, 127
  br i1 %cmp90, label %if.then.104, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.89
  %68 = load i32, i32* %c, align 4
  %and93 = and i32 %68, 128
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.105

land.lhs.true.95:                                 ; preds = %lor.lhs.false.92
  %69 = load i32, i32* %c, align 4
  %cmp96 = icmp slt i32 %69, 160
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.101

land.lhs.true.98:                                 ; preds = %land.lhs.true.95
  %70 = load %struct.win*, %struct.win** @curr, align 8
  %w_c199 = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 59
  %71 = load i32, i32* %w_c199, align 4
  %tobool100 = icmp ne i32 %71, 0
  br i1 %tobool100, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.98, %land.lhs.true.95
  %72 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr102 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 58
  %73 = load i32, i32* %w_gr102, align 4
  %tobool103 = icmp ne i32 %73, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %land.lhs.true.98, %lor.lhs.false.89, %if.end.84
  br label %while.end

if.end.105:                                       ; preds = %lor.lhs.false.101, %lor.lhs.false.92
  br label %while.cond

while.end:                                        ; preds = %if.then.104, %if.then.83, %while.cond
  %74 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer106 = getelementptr inbounds %struct.win, %struct.win* %74, i32 0, i32 3
  %l_x107 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer106, i32 0, i32 3
  %75 = load i32, i32* %l_x107, align 4
  %76 = load i32, i32* %currx, align 4
  %sub108 = sub nsw i32 %76, %75
  store i32 %sub108, i32* %currx, align 4
  %77 = load i32, i32* %currx, align 4
  %cmp109 = icmp sgt i32 %77, 0
  br i1 %cmp109, label %if.then.111, label %if.end.124

if.then.111:                                      ; preds = %while.end
  %78 = load %struct.win*, %struct.win** @curr, align 8
  %79 = load i8*, i8** %imp, align 8
  %80 = load i32, i32* %currx, align 4
  %81 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend112 = getelementptr inbounds %struct.win, %struct.win* %81, i32 0, i32 37
  %82 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer113 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 3
  %l_x114 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer113, i32 0, i32 3
  %83 = load i32, i32* %l_x114, align 4
  %84 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer115 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer115, i32 0, i32 4
  %85 = load i32, i32* %l_y, align 4
  call void @MPutStr(%struct.win* %78, i8* %79, i32 %80, %struct.mchar* %w_rend112, i32 %83, i32 %85)
  %86 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer116 = getelementptr inbounds %struct.win, %struct.win* %86, i32 0, i32 3
  %87 = load i8*, i8** %imp, align 8
  %88 = load i32, i32* %currx, align 4
  %89 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend117 = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 37
  %90 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer118 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 3
  %l_x119 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer118, i32 0, i32 3
  %91 = load i32, i32* %l_x119, align 4
  %92 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer120 = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 3
  %l_y121 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer120, i32 0, i32 4
  %93 = load i32, i32* %l_y121, align 4
  call void @LPutStr(%struct.layer* %w_layer116, i8* %87, i32 %88, %struct.mchar* %w_rend117, i32 %91, i32 %93)
  %94 = load i32, i32* %currx, align 4
  %95 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer122 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 3
  %l_x123 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer122, i32 0, i32 3
  %96 = load i32, i32* %l_x123, align 4
  %add = add nsw i32 %96, %94
  store i32 %add, i32* %l_x123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.111, %while.end
  %97 = load i32, i32* %len.addr, align 4
  %cmp125 = icmp eq i32 %97, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  br label %do.end.1088

if.end.128:                                       ; preds = %if.end.124
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.lhs.true.71, %land.lhs.true.69, %land.lhs.true.67, %land.lhs.true.65, %lor.lhs.false.63, %land.lhs.true.54, %land.lhs.true.51, %land.lhs.true.45, %land.lhs.true.42, %land.lhs.true.36, %land.lhs.true.30, %land.lhs.true.21, %if.end.18
  %98 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer130 = getelementptr inbounds %struct.win, %struct.win* %98, i32 0, i32 3
  %l_encoding131 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer130, i32 0, i32 5
  %99 = load i32, i32* %l_encoding131, align 4
  %cmp132 = icmp eq i32 %99, 8
  br i1 %cmp132, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %if.end.129
  %100 = load i32, i32* %c, align 4
  %101 = load %struct.win*, %struct.win** @curr, align 8
  %w_decodestate = getelementptr inbounds %struct.win, %struct.win* %101, i32 0, i32 61
  %call = call i32 @FromUtf8(i32 %100, i32* %w_decodestate)
  store i32 %call, i32* %c, align 4
  %102 = load i32, i32* %c, align 4
  %cmp135 = icmp eq i32 %102, -1
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.134
  br label %do.cond

if.end.138:                                       ; preds = %if.then.134
  %103 = load i32, i32* %c, align 4
  %cmp139 = icmp eq i32 %103, -2
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.138
  store i32 65533, i32* %c, align 4
  %104 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr142, i8** %buf.addr, align 8
  %105 = load i32, i32* %len.addr, align 4
  %inc143 = add nsw i32 %105, 1
  store i32 %inc143, i32* %len.addr, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.138
  %106 = load i32, i32* %c, align 4
  %cmp145 = icmp sgt i32 %106, 255
  br i1 %cmp145, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %if.end.144
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.body.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %if.end.144
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.129
  br label %tryagain

tryagain:                                         ; preds = %if.then.893, %if.then.846, %if.else.368, %if.else.286, %if.end.151
  %107 = load %struct.win*, %struct.win** @curr, align 8
  %w_state152 = getelementptr inbounds %struct.win, %struct.win* %107, i32 0, i32 34
  %108 = load i32, i32* %w_state152, align 4
  switch i32 %108, label %sw.default.374 [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.155
    i32 7, label %sw.bb.161
    i32 8, label %sw.bb.167
    i32 2, label %sw.bb.186
    i32 3, label %sw.bb.213
    i32 1, label %sw.bb.243
    i32 4, label %sw.bb.291
    i32 0, label %sw.bb.373
  ]

sw.bb:                                            ; preds = %tryagain
  %109 = load i32, i32* %c, align 4
  switch i32 %109, label %sw.default [
    i32 27, label %sw.bb.153
  ]

sw.bb.153:                                        ; preds = %sw.bb
  %110 = load %struct.win*, %struct.win** @curr, align 8
  %w_state154 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 34
  store i32 6, i32* %w_state154, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %111 = load i32, i32* %c, align 4
  call void @PrintChar(i32 %111)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.153
  br label %sw.epilog.1085

sw.bb.155:                                        ; preds = %tryagain
  %112 = load i32, i32* %c, align 4
  switch i32 %112, label %sw.default.158 [
    i32 91, label %sw.bb.156
  ]

sw.bb.156:                                        ; preds = %sw.bb.155
  %113 = load %struct.win*, %struct.win** @curr, align 8
  %w_state157 = getelementptr inbounds %struct.win, %struct.win* %113, i32 0, i32 34
  store i32 7, i32* %w_state157, align 4
  br label %sw.epilog.160

sw.default.158:                                   ; preds = %sw.bb.155
  call void @PrintChar(i32 27)
  %114 = load i32, i32* %c, align 4
  call void @PrintChar(i32 %114)
  %115 = load %struct.win*, %struct.win** @curr, align 8
  %w_state159 = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 34
  store i32 5, i32* %w_state159, align 4
  br label %sw.epilog.160

sw.epilog.160:                                    ; preds = %sw.default.158, %sw.bb.156
  br label %sw.epilog.1085

sw.bb.161:                                        ; preds = %tryagain
  %116 = load i32, i32* %c, align 4
  switch i32 %116, label %sw.default.164 [
    i32 52, label %sw.bb.162
  ]

sw.bb.162:                                        ; preds = %sw.bb.161
  %117 = load %struct.win*, %struct.win** @curr, align 8
  %w_state163 = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 34
  store i32 8, i32* %w_state163, align 4
  br label %sw.epilog.166

sw.default.164:                                   ; preds = %sw.bb.161
  call void @PrintChar(i32 27)
  call void @PrintChar(i32 91)
  %118 = load i32, i32* %c, align 4
  call void @PrintChar(i32 %118)
  %119 = load %struct.win*, %struct.win** @curr, align 8
  %w_state165 = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 34
  store i32 5, i32* %w_state165, align 4
  br label %sw.epilog.166

sw.epilog.166:                                    ; preds = %sw.default.164, %sw.bb.162
  br label %sw.epilog.1085

sw.bb.167:                                        ; preds = %tryagain
  %120 = load i32, i32* %c, align 4
  switch i32 %120, label %sw.default.183 [
    i32 105, label %sw.bb.168
  ]

sw.bb.168:                                        ; preds = %sw.bb.167
  %121 = load %struct.win*, %struct.win** @curr, align 8
  %w_state169 = getelementptr inbounds %struct.win, %struct.win* %121, i32 0, i32 34
  store i32 0, i32* %w_state169, align 4
  call void @PrintFlush()
  %122 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 7
  %123 = load %struct.display*, %struct.display** %w_pdisplay, align 8
  %tobool170 = icmp ne %struct.display* %123, null
  br i1 %tobool170, label %land.lhs.true.171, label %if.end.181

land.lhs.true.171:                                ; preds = %sw.bb.168
  %124 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay172 = getelementptr inbounds %struct.win, %struct.win* %124, i32 0, i32 7
  %125 = load %struct.display*, %struct.display** %w_pdisplay172, align 8
  %d_printfd = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 98
  %126 = load i32, i32* %d_printfd, align 4
  %cmp173 = icmp sge i32 %126, 0
  br i1 %cmp173, label %if.then.175, label %if.end.181

if.then.175:                                      ; preds = %land.lhs.true.171
  %127 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay176 = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 7
  %128 = load %struct.display*, %struct.display** %w_pdisplay176, align 8
  %d_printfd177 = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 98
  %129 = load i32, i32* %d_printfd177, align 4
  %call178 = call i32 @close(i32 %129)
  %130 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay179 = getelementptr inbounds %struct.win, %struct.win* %130, i32 0, i32 7
  %131 = load %struct.display*, %struct.display** %w_pdisplay179, align 8
  %d_printfd180 = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 98
  store i32 -1, i32* %d_printfd180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.175, %land.lhs.true.171, %sw.bb.168
  %132 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay182 = getelementptr inbounds %struct.win, %struct.win* %132, i32 0, i32 7
  store %struct.display* null, %struct.display** %w_pdisplay182, align 8
  br label %sw.epilog.185

sw.default.183:                                   ; preds = %sw.bb.167
  call void @PrintChar(i32 27)
  call void @PrintChar(i32 91)
  call void @PrintChar(i32 52)
  %133 = load i32, i32* %c, align 4
  call void @PrintChar(i32 %133)
  %134 = load %struct.win*, %struct.win** @curr, align 8
  %w_state184 = getelementptr inbounds %struct.win, %struct.win* %134, i32 0, i32 34
  store i32 5, i32* %w_state184, align 4
  br label %sw.epilog.185

sw.epilog.185:                                    ; preds = %sw.default.183, %if.end.181
  br label %sw.epilog.1085

sw.bb.186:                                        ; preds = %tryagain
  %135 = load i32, i32* %c, align 4
  %cmp187 = icmp eq i32 %135, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %sw.bb.186
  br label %sw.epilog.1085

if.end.190:                                       ; preds = %sw.bb.186
  %136 = load i32, i32* %c, align 4
  %cmp191 = icmp eq i32 %136, 27
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.end.190
  %137 = load %struct.win*, %struct.win** @curr, align 8
  %w_state194 = getelementptr inbounds %struct.win, %struct.win* %137, i32 0, i32 34
  store i32 3, i32* %w_state194, align 4
  br label %sw.epilog.1085

if.end.195:                                       ; preds = %if.end.190
  %138 = load %struct.win*, %struct.win** @curr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %138, i32 0, i32 35
  %139 = load i32, i32* %w_StringType, align 4
  %cmp196 = icmp eq i32 %139, 2
  br i1 %cmp196, label %land.lhs.true.198, label %if.then.204

land.lhs.true.198:                                ; preds = %if.end.195
  %140 = load i32, i32* %c, align 4
  %cmp199 = icmp slt i32 %140, 32
  br i1 %cmp199, label %land.lhs.true.201, label %if.then.204

land.lhs.true.201:                                ; preds = %land.lhs.true.198
  %141 = load i32, i32* %c, align 4
  %cmp202 = icmp ne i32 %141, 5
  br i1 %cmp202, label %if.end.212, label %if.then.204

if.then.204:                                      ; preds = %land.lhs.true.201, %land.lhs.true.198, %if.end.195
  %142 = load %struct.win*, %struct.win** @curr, align 8
  %w_c1205 = getelementptr inbounds %struct.win, %struct.win* %142, i32 0, i32 59
  %143 = load i32, i32* %w_c1205, align 4
  %tobool206 = icmp ne i32 %143, 0
  br i1 %tobool206, label %lor.lhs.false.207, label %if.then.210

lor.lhs.false.207:                                ; preds = %if.then.204
  %144 = load i32, i32* %c, align 4
  %cmp208 = icmp ne i32 %144, 156
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %lor.lhs.false.207, %if.then.204
  %145 = load i32, i32* %c, align 4
  call void @StringChar(i32 %145)
  br label %sw.epilog.1085

if.end.211:                                       ; preds = %lor.lhs.false.207
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %land.lhs.true.201
  store i32 92, i32* %c, align 4
  br label %sw.bb.213

sw.bb.213:                                        ; preds = %tryagain, %if.end.212
  %146 = load i32, i32* %c, align 4
  switch i32 %146, label %sw.default.240 [
    i32 92, label %sw.bb.214
    i32 27, label %sw.bb.239
  ]

sw.bb.214:                                        ; preds = %sw.bb.213
  %call215 = call i32 @StringEnd()
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then.221, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %sw.bb.214
  %147 = load i32, i32* %len.addr, align 4
  %cmp219 = icmp sle i32 %147, 1
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %lor.lhs.false.218, %sw.bb.214
  br label %sw.epilog.242

if.end.222:                                       ; preds = %lor.lhs.false.218
  %148 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer223 = getelementptr inbounds %struct.win, %struct.win* %148, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer223, i32 0, i32 0
  %149 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %149, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.222
  %150 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool224 = icmp ne %struct.canvas* %150, null
  br i1 %tobool224, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %151 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %151, i32 0, i32 1
  %152 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %152, %struct.display** @display, align 8
  %153 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %153, i32 0, i32 43
  %154 = load i32, i32* %d_status, align 4
  %cmp225 = icmp eq i32 %154, 1
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %for.body
  br label %for.end

if.end.228:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.228
  %155 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %155, i32 0, i32 10
  %156 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %156, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.227, %for.cond
  %157 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool229 = icmp ne %struct.canvas* %157, null
  br i1 %tobool229, label %if.then.230, label %if.end.238

if.then.230:                                      ; preds = %for.end
  %158 = load i32, i32* %len.addr, align 4
  %cmp231 = icmp sgt i32 %158, 4097
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.then.230
  store i32 4097, i32* %len.addr, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.then.230
  %159 = load i32, i32* %len.addr, align 4
  %sub235 = sub nsw i32 %159, 1
  %160 = load %struct.win*, %struct.win** @curr, align 8
  %w_outlen = getelementptr inbounds %struct.win, %struct.win* %160, i32 0, i32 19
  store i32 %sub235, i32* %w_outlen, align 4
  %161 = load i8*, i8** %buf.addr, align 8
  %162 = load %struct.win*, %struct.win** @curr, align 8
  %w_outbuf = getelementptr inbounds %struct.win, %struct.win* %162, i32 0, i32 18
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_outbuf, i32 0, i32 0
  %163 = load i32, i32* %len.addr, align 4
  %sub236 = sub nsw i32 %163, 1
  %conv237 = sext i32 %sub236 to i64
  call void @bcopy(i8* %161, i8* %arraydecay, i64 %conv237) #1
  br label %if.end.1096

if.end.238:                                       ; preds = %for.end
  br label %sw.epilog.242

sw.bb.239:                                        ; preds = %sw.bb.213
  call void @StringChar(i32 27)
  br label %sw.epilog.242

sw.default.240:                                   ; preds = %sw.bb.213
  %164 = load %struct.win*, %struct.win** @curr, align 8
  %w_state241 = getelementptr inbounds %struct.win, %struct.win* %164, i32 0, i32 34
  store i32 2, i32* %w_state241, align 4
  call void @StringChar(i32 27)
  %165 = load i32, i32* %c, align 4
  call void @StringChar(i32 %165)
  br label %sw.epilog.242

sw.epilog.242:                                    ; preds = %sw.default.240, %sw.bb.239, %if.end.238, %if.then.221
  br label %sw.epilog.1085

sw.bb.243:                                        ; preds = %tryagain
  %166 = load i32, i32* %c, align 4
  switch i32 %166, label %sw.default.253 [
    i32 91, label %sw.bb.244
    i32 93, label %sw.bb.247
    i32 95, label %sw.bb.248
    i32 80, label %sw.bb.249
    i32 94, label %sw.bb.250
    i32 33, label %sw.bb.251
    i32 34, label %sw.bb.252
    i32 107, label %sw.bb.252
  ]

sw.bb.244:                                        ; preds = %sw.bb.243
  %167 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs = getelementptr inbounds %struct.win, %struct.win* %167, i32 0, i32 28
  store i32 0, i32* %w_NumArgs, align 4
  %168 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate = getelementptr inbounds %struct.win, %struct.win* %168, i32 0, i32 26
  store i32 0, i32* %w_intermediate, align 4
  %169 = load %struct.win*, %struct.win** @curr, align 8
  %w_args = getelementptr inbounds %struct.win, %struct.win* %169, i32 0, i32 27
  %arraydecay245 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args, i32 0, i32 0
  %170 = bitcast i32* %arraydecay245 to i8*
  call void @llvm.memset.p0i8.i64(i8* %170, i8 0, i64 256, i32 1, i1 false)
  %171 = load %struct.win*, %struct.win** @curr, align 8
  %w_state246 = getelementptr inbounds %struct.win, %struct.win* %171, i32 0, i32 34
  store i32 4, i32* %w_state246, align 4
  br label %sw.epilog.290

sw.bb.247:                                        ; preds = %sw.bb.243
  call void @StringStart(i32 2)
  br label %sw.epilog.290

sw.bb.248:                                        ; preds = %sw.bb.243
  call void @StringStart(i32 3)
  br label %sw.epilog.290

sw.bb.249:                                        ; preds = %sw.bb.243
  call void @StringStart(i32 1)
  br label %sw.epilog.290

sw.bb.250:                                        ; preds = %sw.bb.243
  call void @StringStart(i32 4)
  br label %sw.epilog.290

sw.bb.251:                                        ; preds = %sw.bb.243
  call void @StringStart(i32 6)
  br label %sw.epilog.290

sw.bb.252:                                        ; preds = %sw.bb.243, %sw.bb.243
  call void @StringStart(i32 5)
  br label %sw.epilog.290

sw.default.253:                                   ; preds = %sw.bb.243
  %172 = load i32, i32* %c, align 4
  %call254 = call i32 @Special(i32 %172)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.258

if.then.256:                                      ; preds = %sw.default.253
  %173 = load %struct.win*, %struct.win** @curr, align 8
  %w_state257 = getelementptr inbounds %struct.win, %struct.win* %173, i32 0, i32 34
  store i32 0, i32* %w_state257, align 4
  br label %sw.epilog.290

if.end.258:                                       ; preds = %sw.default.253
  br label %do.body.259

do.body.259:                                      ; preds = %if.end.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.body.259
  %174 = load i32, i32* %c, align 4
  %cmp261 = icmp sge i32 %174, 32
  br i1 %cmp261, label %land.lhs.true.263, label %if.else.277

land.lhs.true.263:                                ; preds = %do.end.260
  %175 = load i32, i32* %c, align 4
  %cmp264 = icmp sle i32 %175, 47
  br i1 %cmp264, label %if.then.266, label %if.else.277

if.then.266:                                      ; preds = %land.lhs.true.263
  %176 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate267 = getelementptr inbounds %struct.win, %struct.win* %176, i32 0, i32 26
  %177 = load i32, i32* %w_intermediate267, align 4
  %tobool268 = icmp ne i32 %177, 0
  br i1 %tobool268, label %if.then.269, label %if.end.275

if.then.269:                                      ; preds = %if.then.266
  %178 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate270 = getelementptr inbounds %struct.win, %struct.win* %178, i32 0, i32 26
  %179 = load i32, i32* %w_intermediate270, align 4
  %cmp271 = icmp eq i32 %179, 36
  br i1 %cmp271, label %if.then.273, label %if.else

if.then.273:                                      ; preds = %if.then.269
  %180 = load i32, i32* %c, align 4
  %or = or i32 %180, 9216
  store i32 %or, i32* %c, align 4
  br label %if.end.274

if.else:                                          ; preds = %if.then.269
  store i32 -1, i32* %c, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.else, %if.then.273
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.266
  %181 = load i32, i32* %c, align 4
  %182 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate276 = getelementptr inbounds %struct.win, %struct.win* %182, i32 0, i32 26
  store i32 %181, i32* %w_intermediate276, align 4
  br label %if.end.289

if.else.277:                                      ; preds = %land.lhs.true.263, %do.end.260
  %183 = load i32, i32* %c, align 4
  %cmp278 = icmp sge i32 %183, 48
  br i1 %cmp278, label %land.lhs.true.280, label %if.else.286

land.lhs.true.280:                                ; preds = %if.else.277
  %184 = load i32, i32* %c, align 4
  %cmp281 = icmp sle i32 %184, 126
  br i1 %cmp281, label %if.then.283, label %if.else.286

if.then.283:                                      ; preds = %land.lhs.true.280
  %185 = load i32, i32* %c, align 4
  %186 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate284 = getelementptr inbounds %struct.win, %struct.win* %186, i32 0, i32 26
  %187 = load i32, i32* %w_intermediate284, align 4
  call void @DoESC(i32 %185, i32 %187)
  %188 = load %struct.win*, %struct.win** @curr, align 8
  %w_state285 = getelementptr inbounds %struct.win, %struct.win* %188, i32 0, i32 34
  store i32 0, i32* %w_state285, align 4
  br label %if.end.288

if.else.286:                                      ; preds = %land.lhs.true.280, %if.else.277
  %189 = load %struct.win*, %struct.win** @curr, align 8
  %w_state287 = getelementptr inbounds %struct.win, %struct.win* %189, i32 0, i32 34
  store i32 0, i32* %w_state287, align 4
  br label %tryagain

if.end.288:                                       ; preds = %if.then.283
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.275
  br label %sw.epilog.290

sw.epilog.290:                                    ; preds = %if.end.289, %if.then.256, %sw.bb.252, %sw.bb.251, %sw.bb.250, %sw.bb.249, %sw.bb.248, %sw.bb.247, %sw.bb.244
  br label %sw.epilog.1085

sw.bb.291:                                        ; preds = %tryagain
  %190 = load i32, i32* %c, align 4
  switch i32 %190, label %sw.default.327 [
    i32 48, label %sw.bb.292
    i32 49, label %sw.bb.292
    i32 50, label %sw.bb.292
    i32 51, label %sw.bb.292
    i32 52, label %sw.bb.292
    i32 53, label %sw.bb.292
    i32 54, label %sw.bb.292
    i32 55, label %sw.bb.292
    i32 56, label %sw.bb.292
    i32 57, label %sw.bb.292
    i32 59, label %sw.bb.319
    i32 58, label %sw.bb.319
  ]

sw.bb.292:                                        ; preds = %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291, %sw.bb.291
  %191 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs293 = getelementptr inbounds %struct.win, %struct.win* %191, i32 0, i32 28
  %192 = load i32, i32* %w_NumArgs293, align 4
  %cmp294 = icmp sge i32 %192, 0
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.318

land.lhs.true.296:                                ; preds = %sw.bb.292
  %193 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs297 = getelementptr inbounds %struct.win, %struct.win* %193, i32 0, i32 28
  %194 = load i32, i32* %w_NumArgs297, align 4
  %cmp298 = icmp slt i32 %194, 64
  br i1 %cmp298, label %if.then.300, label %if.end.318

if.then.300:                                      ; preds = %land.lhs.true.296
  %195 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs301 = getelementptr inbounds %struct.win, %struct.win* %195, i32 0, i32 28
  %196 = load i32, i32* %w_NumArgs301, align 4
  %idxprom = sext i32 %196 to i64
  %197 = load %struct.win*, %struct.win** @curr, align 8
  %w_args302 = getelementptr inbounds %struct.win, %struct.win* %197, i32 0, i32 27
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %w_args302, i32 0, i64 %idxprom
  %198 = load i32, i32* %arrayidx, align 4
  %cmp303 = icmp slt i32 %198, 100000000
  br i1 %cmp303, label %if.then.305, label %if.end.317

if.then.305:                                      ; preds = %if.then.300
  %199 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs306 = getelementptr inbounds %struct.win, %struct.win* %199, i32 0, i32 28
  %200 = load i32, i32* %w_NumArgs306, align 4
  %idxprom307 = sext i32 %200 to i64
  %201 = load %struct.win*, %struct.win** @curr, align 8
  %w_args308 = getelementptr inbounds %struct.win, %struct.win* %201, i32 0, i32 27
  %arrayidx309 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args308, i32 0, i64 %idxprom307
  %202 = load i32, i32* %arrayidx309, align 4
  %mul310 = mul nsw i32 10, %202
  %203 = load i32, i32* %c, align 4
  %sub311 = sub nsw i32 %203, 48
  %add312 = add nsw i32 %mul310, %sub311
  %204 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs313 = getelementptr inbounds %struct.win, %struct.win* %204, i32 0, i32 28
  %205 = load i32, i32* %w_NumArgs313, align 4
  %idxprom314 = sext i32 %205 to i64
  %206 = load %struct.win*, %struct.win** @curr, align 8
  %w_args315 = getelementptr inbounds %struct.win, %struct.win* %206, i32 0, i32 27
  %arrayidx316 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args315, i32 0, i64 %idxprom314
  store i32 %add312, i32* %arrayidx316, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.305, %if.then.300
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %land.lhs.true.296, %sw.bb.292
  br label %sw.epilog.372

sw.bb.319:                                        ; preds = %sw.bb.291, %sw.bb.291
  %207 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs320 = getelementptr inbounds %struct.win, %struct.win* %207, i32 0, i32 28
  %208 = load i32, i32* %w_NumArgs320, align 4
  %cmp321 = icmp slt i32 %208, 64
  br i1 %cmp321, label %if.then.323, label %if.end.326

if.then.323:                                      ; preds = %sw.bb.319
  %209 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs324 = getelementptr inbounds %struct.win, %struct.win* %209, i32 0, i32 28
  %210 = load i32, i32* %w_NumArgs324, align 4
  %inc325 = add nsw i32 %210, 1
  store i32 %inc325, i32* %w_NumArgs324, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.323, %sw.bb.319
  br label %sw.epilog.372

sw.default.327:                                   ; preds = %sw.bb.291
  %211 = load i32, i32* %c, align 4
  %call328 = call i32 @Special(i32 %211)
  %tobool329 = icmp ne i32 %call328, 0
  br i1 %tobool329, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %sw.default.327
  br label %sw.epilog.372

if.end.331:                                       ; preds = %sw.default.327
  %212 = load i32, i32* %c, align 4
  %cmp332 = icmp sge i32 %212, 64
  br i1 %cmp332, label %land.lhs.true.334, label %if.else.352

land.lhs.true.334:                                ; preds = %if.end.331
  %213 = load i32, i32* %c, align 4
  %cmp335 = icmp sle i32 %213, 126
  br i1 %cmp335, label %if.then.337, label %if.else.352

if.then.337:                                      ; preds = %land.lhs.true.334
  %214 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs338 = getelementptr inbounds %struct.win, %struct.win* %214, i32 0, i32 28
  %215 = load i32, i32* %w_NumArgs338, align 4
  %cmp339 = icmp slt i32 %215, 64
  br i1 %cmp339, label %if.then.341, label %if.end.344

if.then.341:                                      ; preds = %if.then.337
  %216 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs342 = getelementptr inbounds %struct.win, %struct.win* %216, i32 0, i32 28
  %217 = load i32, i32* %w_NumArgs342, align 4
  %inc343 = add nsw i32 %217, 1
  store i32 %inc343, i32* %w_NumArgs342, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.341, %if.then.337
  %218 = load i32, i32* %c, align 4
  %219 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate345 = getelementptr inbounds %struct.win, %struct.win* %219, i32 0, i32 26
  %220 = load i32, i32* %w_intermediate345, align 4
  call void @DoCSI(i32 %218, i32 %220)
  %221 = load %struct.win*, %struct.win** @curr, align 8
  %w_state346 = getelementptr inbounds %struct.win, %struct.win* %221, i32 0, i32 34
  %222 = load i32, i32* %w_state346, align 4
  %cmp347 = icmp ne i32 %222, 5
  br i1 %cmp347, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.end.344
  %223 = load %struct.win*, %struct.win** @curr, align 8
  %w_state350 = getelementptr inbounds %struct.win, %struct.win* %223, i32 0, i32 34
  store i32 0, i32* %w_state350, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.end.344
  br label %if.end.371

if.else.352:                                      ; preds = %land.lhs.true.334, %if.end.331
  %224 = load i32, i32* %c, align 4
  %cmp353 = icmp sge i32 %224, 32
  br i1 %cmp353, label %land.lhs.true.355, label %lor.lhs.false.358

land.lhs.true.355:                                ; preds = %if.else.352
  %225 = load i32, i32* %c, align 4
  %cmp356 = icmp sle i32 %225, 47
  br i1 %cmp356, label %if.then.364, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %land.lhs.true.355, %if.else.352
  %226 = load i32, i32* %c, align 4
  %cmp359 = icmp sge i32 %226, 60
  br i1 %cmp359, label %land.lhs.true.361, label %if.else.368

land.lhs.true.361:                                ; preds = %lor.lhs.false.358
  %227 = load i32, i32* %c, align 4
  %cmp362 = icmp sle i32 %227, 63
  br i1 %cmp362, label %if.then.364, label %if.else.368

if.then.364:                                      ; preds = %land.lhs.true.361, %land.lhs.true.355
  %228 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate365 = getelementptr inbounds %struct.win, %struct.win* %228, i32 0, i32 26
  %229 = load i32, i32* %w_intermediate365, align 4
  %tobool366 = icmp ne i32 %229, 0
  br i1 %tobool366, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.364
  br label %cond.end

cond.false:                                       ; preds = %if.then.364
  %230 = load i32, i32* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %230, %cond.false ]
  %231 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate367 = getelementptr inbounds %struct.win, %struct.win* %231, i32 0, i32 26
  store i32 %cond, i32* %w_intermediate367, align 4
  br label %if.end.370

if.else.368:                                      ; preds = %land.lhs.true.361, %lor.lhs.false.358
  %232 = load %struct.win*, %struct.win** @curr, align 8
  %w_state369 = getelementptr inbounds %struct.win, %struct.win* %232, i32 0, i32 34
  store i32 0, i32* %w_state369, align 4
  br label %tryagain

if.end.370:                                       ; preds = %cond.end
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.351
  br label %sw.epilog.372

sw.epilog.372:                                    ; preds = %if.end.371, %if.then.330, %if.end.326, %if.end.318
  br label %sw.epilog.1085

sw.bb.373:                                        ; preds = %tryagain
  br label %sw.default.374

sw.default.374:                                   ; preds = %tryagain, %sw.bb.373
  %233 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs375 = getelementptr inbounds %struct.win, %struct.win* %233, i32 0, i32 62
  %234 = load i32, i32* %w_mbcs375, align 4
  %tobool376 = icmp ne i32 %234, 0
  br i1 %tobool376, label %if.then.377, label %if.end.395

if.then.377:                                      ; preds = %sw.default.374
  %235 = load i32, i32* %c, align 4
  %cmp378 = icmp sle i32 %235, 32
  br i1 %cmp378, label %if.then.392, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %if.then.377
  %236 = load i32, i32* %c, align 4
  %cmp381 = icmp eq i32 %236, 127
  br i1 %cmp381, label %if.then.392, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %lor.lhs.false.380
  %237 = load i32, i32* %c, align 4
  %cmp384 = icmp sge i32 %237, 128
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.394

land.lhs.true.386:                                ; preds = %lor.lhs.false.383
  %238 = load i32, i32* %c, align 4
  %cmp387 = icmp slt i32 %238, 160
  br i1 %cmp387, label %land.lhs.true.389, label %if.end.394

land.lhs.true.389:                                ; preds = %land.lhs.true.386
  %239 = load %struct.win*, %struct.win** @curr, align 8
  %w_c1390 = getelementptr inbounds %struct.win, %struct.win* %239, i32 0, i32 59
  %240 = load i32, i32* %w_c1390, align 4
  %tobool391 = icmp ne i32 %240, 0
  br i1 %tobool391, label %if.then.392, label %if.end.394

if.then.392:                                      ; preds = %land.lhs.true.389, %lor.lhs.false.380, %if.then.377
  %241 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs393 = getelementptr inbounds %struct.win, %struct.win* %241, i32 0, i32 62
  store i32 0, i32* %w_mbcs393, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.392, %land.lhs.true.389, %land.lhs.true.386, %lor.lhs.false.383
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %sw.default.374
  %242 = load i32, i32* %c, align 4
  %cmp396 = icmp slt i32 %242, 32
  br i1 %cmp396, label %if.then.398, label %if.end.412

if.then.398:                                      ; preds = %if.end.395
  %243 = load i32, i32* %c, align 4
  %cmp399 = icmp eq i32 %243, 27
  br i1 %cmp399, label %if.then.401, label %if.else.409

if.then.401:                                      ; preds = %if.then.398
  %244 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate402 = getelementptr inbounds %struct.win, %struct.win* %244, i32 0, i32 26
  store i32 0, i32* %w_intermediate402, align 4
  %245 = load %struct.win*, %struct.win** @curr, align 8
  %w_state403 = getelementptr inbounds %struct.win, %struct.win* %245, i32 0, i32 34
  store i32 1, i32* %w_state403, align 4
  %246 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %246, i32 0, i32 24
  %247 = load i32, i32* %w_autoaka, align 4
  %cmp404 = icmp slt i32 %247, 0
  br i1 %cmp404, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %if.then.401
  %248 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka407 = getelementptr inbounds %struct.win, %struct.win* %248, i32 0, i32 24
  store i32 0, i32* %w_autoaka407, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %if.then.401
  br label %if.end.411

if.else.409:                                      ; preds = %if.then.398
  %249 = load i32, i32* %c, align 4
  %call410 = call i32 @Special(i32 %249)
  br label %if.end.411

if.end.411:                                       ; preds = %if.else.409, %if.end.408
  br label %sw.epilog.1085

if.end.412:                                       ; preds = %if.end.395
  %250 = load i32, i32* %c, align 4
  %cmp413 = icmp sge i32 %250, 128
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.449

land.lhs.true.415:                                ; preds = %if.end.412
  %251 = load i32, i32* %c, align 4
  %cmp416 = icmp slt i32 %251, 160
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.449

land.lhs.true.418:                                ; preds = %land.lhs.true.415
  %252 = load %struct.win*, %struct.win** @curr, align 8
  %w_c1419 = getelementptr inbounds %struct.win, %struct.win* %252, i32 0, i32 59
  %253 = load i32, i32* %w_c1419, align 4
  %tobool420 = icmp ne i32 %253, 0
  br i1 %tobool420, label %if.then.421, label %if.end.449

if.then.421:                                      ; preds = %land.lhs.true.418
  %254 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %254, i32 0, i32 39
  %255 = load i8, i8* %w_FontR, align 1
  %conv422 = sext i8 %255 to i32
  %and423 = and i32 %conv422, 240
  %cmp424 = icmp ne i32 %and423, 32
  br i1 %cmp424, label %if.then.431, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %if.then.421
  %256 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer427 = getelementptr inbounds %struct.win, %struct.win* %256, i32 0, i32 3
  %l_encoding428 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer427, i32 0, i32 5
  %257 = load i32, i32* %l_encoding428, align 4
  %cmp429 = icmp eq i32 %257, 8
  br i1 %cmp429, label %if.then.431, label %if.end.448

if.then.431:                                      ; preds = %lor.lhs.false.426, %if.then.421
  %258 = load i32, i32* %c, align 4
  switch i32 %258, label %sw.default.446 [
    i32 132, label %sw.bb.432
    i32 133, label %sw.bb.432
    i32 136, label %sw.bb.432
    i32 141, label %sw.bb.432
    i32 142, label %sw.bb.432
    i32 143, label %sw.bb.432
    i32 155, label %sw.bb.433
    i32 144, label %sw.bb.445
  ]

sw.bb.432:                                        ; preds = %if.then.431, %if.then.431, %if.then.431, %if.then.431, %if.then.431, %if.then.431
  %259 = load i32, i32* %c, align 4
  %xor = xor i32 %259, 192
  call void @DoESC(i32 %xor, i32 0)
  br label %sw.epilog.447

sw.bb.433:                                        ; preds = %if.then.431
  %260 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka434 = getelementptr inbounds %struct.win, %struct.win* %260, i32 0, i32 24
  %261 = load i32, i32* %w_autoaka434, align 4
  %cmp435 = icmp slt i32 %261, 0
  br i1 %cmp435, label %if.then.437, label %if.end.439

if.then.437:                                      ; preds = %sw.bb.433
  %262 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka438 = getelementptr inbounds %struct.win, %struct.win* %262, i32 0, i32 24
  store i32 0, i32* %w_autoaka438, align 4
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.437, %sw.bb.433
  %263 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs440 = getelementptr inbounds %struct.win, %struct.win* %263, i32 0, i32 28
  store i32 0, i32* %w_NumArgs440, align 4
  %264 = load %struct.win*, %struct.win** @curr, align 8
  %w_intermediate441 = getelementptr inbounds %struct.win, %struct.win* %264, i32 0, i32 26
  store i32 0, i32* %w_intermediate441, align 4
  %265 = load %struct.win*, %struct.win** @curr, align 8
  %w_args442 = getelementptr inbounds %struct.win, %struct.win* %265, i32 0, i32 27
  %arraydecay443 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args442, i32 0, i32 0
  %266 = bitcast i32* %arraydecay443 to i8*
  call void @llvm.memset.p0i8.i64(i8* %266, i8 0, i64 256, i32 1, i1 false)
  %267 = load %struct.win*, %struct.win** @curr, align 8
  %w_state444 = getelementptr inbounds %struct.win, %struct.win* %267, i32 0, i32 34
  store i32 4, i32* %w_state444, align 4
  br label %sw.epilog.447

sw.bb.445:                                        ; preds = %if.then.431
  call void @StringStart(i32 1)
  br label %sw.epilog.447

sw.default.446:                                   ; preds = %if.then.431
  br label %sw.epilog.447

sw.epilog.447:                                    ; preds = %sw.default.446, %sw.bb.445, %if.end.439, %sw.bb.432
  br label %sw.epilog.1085

if.end.448:                                       ; preds = %lor.lhs.false.426
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %land.lhs.true.418, %land.lhs.true.415, %if.end.412
  %268 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs450 = getelementptr inbounds %struct.win, %struct.win* %268, i32 0, i32 62
  %269 = load i32, i32* %w_mbcs450, align 4
  %tobool451 = icmp ne i32 %269, 0
  br i1 %tobool451, label %if.end.479, label %if.then.452

if.then.452:                                      ; preds = %if.end.449
  %270 = load i32, i32* %c, align 4
  %cmp453 = icmp slt i32 %270, 128
  br i1 %cmp453, label %if.then.459, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %if.then.452
  %271 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr456 = getelementptr inbounds %struct.win, %struct.win* %271, i32 0, i32 58
  %272 = load i32, i32* %w_gr456, align 4
  %cmp457 = icmp eq i32 %272, 0
  br i1 %cmp457, label %if.then.459, label %if.else.463

if.then.459:                                      ; preds = %lor.lhs.false.455, %if.then.452
  %273 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL460 = getelementptr inbounds %struct.win, %struct.win* %273, i32 0, i32 38
  %274 = load i8, i8* %w_FontL460, align 1
  %275 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend461 = getelementptr inbounds %struct.win, %struct.win* %275, i32 0, i32 37
  %font462 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend461, i32 0, i32 2
  store i8 %274, i8* %font462, align 1
  br label %if.end.478

if.else.463:                                      ; preds = %lor.lhs.false.455
  %276 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr464 = getelementptr inbounds %struct.win, %struct.win* %276, i32 0, i32 58
  %277 = load i32, i32* %w_gr464, align 4
  %cmp465 = icmp eq i32 %277, 2
  br i1 %cmp465, label %land.lhs.true.467, label %if.else.473

land.lhs.true.467:                                ; preds = %if.else.463
  %278 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss468 = getelementptr inbounds %struct.win, %struct.win* %278, i32 0, i32 44
  %279 = load i32, i32* %w_ss468, align 4
  %tobool469 = icmp ne i32 %279, 0
  br i1 %tobool469, label %if.else.473, label %if.then.470

if.then.470:                                      ; preds = %land.lhs.true.467
  %280 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontE = getelementptr inbounds %struct.win, %struct.win* %280, i32 0, i32 40
  %281 = load i8, i8* %w_FontE, align 1
  %282 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend471 = getelementptr inbounds %struct.win, %struct.win* %282, i32 0, i32 37
  %font472 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend471, i32 0, i32 2
  store i8 %281, i8* %font472, align 1
  br label %if.end.477

if.else.473:                                      ; preds = %land.lhs.true.467, %if.else.463
  %283 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR474 = getelementptr inbounds %struct.win, %struct.win* %283, i32 0, i32 39
  %284 = load i8, i8* %w_FontR474, align 1
  %285 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend475 = getelementptr inbounds %struct.win, %struct.win* %285, i32 0, i32 37
  %font476 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend475, i32 0, i32 2
  store i8 %284, i8* %font476, align 1
  br label %if.end.477

if.end.477:                                       ; preds = %if.else.473, %if.then.470
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.then.459
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.end.449
  %286 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer480 = getelementptr inbounds %struct.win, %struct.win* %286, i32 0, i32 3
  %l_encoding481 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer480, i32 0, i32 5
  %287 = load i32, i32* %l_encoding481, align 4
  %cmp482 = icmp eq i32 %287, 8
  br i1 %cmp482, label %if.then.484, label %if.end.506

if.then.484:                                      ; preds = %if.end.479
  %288 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend485 = getelementptr inbounds %struct.win, %struct.win* %288, i32 0, i32 37
  %font486 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend485, i32 0, i32 2
  %289 = load i8, i8* %font486, align 1
  %conv487 = zext i8 %289 to i32
  %cmp488 = icmp eq i32 %conv487, 48
  br i1 %cmp488, label %if.then.490, label %if.end.503

if.then.490:                                      ; preds = %if.then.484
  br label %do.body.491

do.body.491:                                      ; preds = %if.then.490
  br label %do.end.492

do.end.492:                                       ; preds = %do.body.491
  %290 = load i32, i32* %c, align 4
  %conv493 = trunc i32 %290 to i8
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %conv493, i8* %image, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  %font494 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 2
  store i8 48, i8* %font494, align 1
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 3
  store i8 0, i8* %fontx, align 1
  %call495 = call %struct.mchar* @recode_mchar(%struct.mchar* %mc, i32 0, i32 8)
  store %struct.mchar* %call495, %struct.mchar** %mcp, align 8
  br label %do.body.496

do.body.496:                                      ; preds = %do.end.492
  br label %do.end.497

do.end.497:                                       ; preds = %do.body.496
  %291 = load %struct.mchar*, %struct.mchar** %mcp, align 8
  %image498 = getelementptr inbounds %struct.mchar, %struct.mchar* %291, i32 0, i32 0
  %292 = load i8, i8* %image498, align 1
  %conv499 = zext i8 %292 to i32
  %293 = load %struct.mchar*, %struct.mchar** %mcp, align 8
  %font500 = getelementptr inbounds %struct.mchar, %struct.mchar* %293, i32 0, i32 2
  %294 = load i8, i8* %font500, align 1
  %conv501 = zext i8 %294 to i32
  %shl = shl i32 %conv501, 8
  %or502 = or i32 %conv499, %shl
  store i32 %or502, i32* %c, align 4
  br label %if.end.503

if.end.503:                                       ; preds = %do.end.497, %if.then.484
  %295 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend504 = getelementptr inbounds %struct.win, %struct.win* %295, i32 0, i32 37
  %font505 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend504, i32 0, i32 2
  store i8 0, i8* %font505, align 1
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.503, %if.end.479
  %296 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer507 = getelementptr inbounds %struct.win, %struct.win* %296, i32 0, i32 3
  %l_encoding508 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer507, i32 0, i32 5
  %297 = load i32, i32* %l_encoding508, align 4
  %cmp509 = icmp eq i32 %297, 8
  br i1 %cmp509, label %land.lhs.true.511, label %if.end.516

land.lhs.true.511:                                ; preds = %if.end.506
  %298 = load i32, i32* %c, align 4
  %call512 = call i32 @utf8_isdouble(i32 %298)
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %land.lhs.true.511
  %299 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs515 = getelementptr inbounds %struct.win, %struct.win* %299, i32 0, i32 62
  store i32 255, i32* %w_mbcs515, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %land.lhs.true.511, %if.end.506
  %300 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer517 = getelementptr inbounds %struct.win, %struct.win* %300, i32 0, i32 3
  %l_encoding518 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer517, i32 0, i32 5
  %301 = load i32, i32* %l_encoding518, align 4
  %cmp519 = icmp eq i32 %301, 8
  br i1 %cmp519, label %land.lhs.true.521, label %if.end.687

land.lhs.true.521:                                ; preds = %if.end.516
  %302 = load i32, i32* %c, align 4
  %cmp522 = icmp sge i32 %302, 768
  br i1 %cmp522, label %land.lhs.true.524, label %if.end.687

land.lhs.true.524:                                ; preds = %land.lhs.true.521
  %303 = load i32, i32* %c, align 4
  %call525 = call i32 @utf8_iscomb(i32 %303)
  %tobool526 = icmp ne i32 %call525, 0
  br i1 %tobool526, label %if.then.527, label %if.end.687

if.then.527:                                      ; preds = %land.lhs.true.524
  %304 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer528 = getelementptr inbounds %struct.win, %struct.win* %304, i32 0, i32 3
  %l_x529 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer528, i32 0, i32 3
  %305 = load i32, i32* %l_x529, align 4
  %sub530 = sub nsw i32 %305, 1
  store i32 %sub530, i32* %ox, align 4
  %306 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer531 = getelementptr inbounds %struct.win, %struct.win* %306, i32 0, i32 3
  %l_y532 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer531, i32 0, i32 4
  %307 = load i32, i32* %l_y532, align 4
  store i32 %307, i32* %oy, align 4
  %308 = load i32, i32* %ox, align 4
  %cmp533 = icmp slt i32 %308, 0
  br i1 %cmp533, label %if.then.535, label %if.end.540

if.then.535:                                      ; preds = %if.then.527
  %309 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer536 = getelementptr inbounds %struct.win, %struct.win* %309, i32 0, i32 3
  %l_width537 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer536, i32 0, i32 1
  %310 = load i32, i32* %l_width537, align 4
  %sub538 = sub nsw i32 %310, 1
  store i32 %sub538, i32* %ox, align 4
  %311 = load i32, i32* %oy, align 4
  %dec539 = add nsw i32 %311, -1
  store i32 %dec539, i32* %oy, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.535, %if.then.527
  %312 = load i32, i32* %oy, align 4
  %cmp541 = icmp slt i32 %312, 0
  br i1 %cmp541, label %if.then.543, label %if.end.544

if.then.543:                                      ; preds = %if.end.540
  store i32 0, i32* %oy, align 4
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.543, %if.end.540
  br label %do.body.545

do.body.545:                                      ; preds = %if.end.544
  %313 = load i32, i32* %ox, align 4
  %idxprom546 = sext i32 %313 to i64
  %314 = load i32, i32* %oy, align 4
  %idxprom547 = sext i32 %314 to i64
  %315 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %315, i32 0, i32 36
  %316 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx548 = getelementptr inbounds %struct.mline, %struct.mline* %316, i64 %idxprom547
  %image549 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx548, i32 0, i32 0
  %317 = load i8*, i8** %image549, align 8
  %arrayidx550 = getelementptr inbounds i8, i8* %317, i64 %idxprom546
  %318 = load i8, i8* %arrayidx550, align 1
  %image551 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 0
  store i8 %318, i8* %image551, align 1
  %319 = load i32, i32* %ox, align 4
  %idxprom552 = sext i32 %319 to i64
  %320 = load i32, i32* %oy, align 4
  %idxprom553 = sext i32 %320 to i64
  %321 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines554 = getelementptr inbounds %struct.win, %struct.win* %321, i32 0, i32 36
  %322 = load %struct.mline*, %struct.mline** %w_mlines554, align 8
  %arrayidx555 = getelementptr inbounds %struct.mline, %struct.mline* %322, i64 %idxprom553
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx555, i32 0, i32 1
  %323 = load i8*, i8** %attr, align 8
  %arrayidx556 = getelementptr inbounds i8, i8* %323, i64 %idxprom552
  %324 = load i8, i8* %arrayidx556, align 1
  %attr557 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 1
  store i8 %324, i8* %attr557, align 1
  %325 = load i32, i32* %ox, align 4
  %idxprom558 = sext i32 %325 to i64
  %326 = load i32, i32* %oy, align 4
  %idxprom559 = sext i32 %326 to i64
  %327 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines560 = getelementptr inbounds %struct.win, %struct.win* %327, i32 0, i32 36
  %328 = load %struct.mline*, %struct.mline** %w_mlines560, align 8
  %arrayidx561 = getelementptr inbounds %struct.mline, %struct.mline* %328, i64 %idxprom559
  %font562 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx561, i32 0, i32 2
  %329 = load i8*, i8** %font562, align 8
  %arrayidx563 = getelementptr inbounds i8, i8* %329, i64 %idxprom558
  %330 = load i8, i8* %arrayidx563, align 1
  %font564 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 2
  store i8 %330, i8* %font564, align 1
  %331 = load i32, i32* %ox, align 4
  %idxprom565 = sext i32 %331 to i64
  %332 = load i32, i32* %oy, align 4
  %idxprom566 = sext i32 %332 to i64
  %333 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines567 = getelementptr inbounds %struct.win, %struct.win* %333, i32 0, i32 36
  %334 = load %struct.mline*, %struct.mline** %w_mlines567, align 8
  %arrayidx568 = getelementptr inbounds %struct.mline, %struct.mline* %334, i64 %idxprom566
  %fontx569 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx568, i32 0, i32 3
  %335 = load i8*, i8** %fontx569, align 8
  %arrayidx570 = getelementptr inbounds i8, i8* %335, i64 %idxprom565
  %336 = load i8, i8* %arrayidx570, align 1
  %fontx571 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 3
  store i8 %336, i8* %fontx571, align 1
  %337 = load i32, i32* %ox, align 4
  %idxprom572 = sext i32 %337 to i64
  %338 = load i32, i32* %oy, align 4
  %idxprom573 = sext i32 %338 to i64
  %339 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines574 = getelementptr inbounds %struct.win, %struct.win* %339, i32 0, i32 36
  %340 = load %struct.mline*, %struct.mline** %w_mlines574, align 8
  %arrayidx575 = getelementptr inbounds %struct.mline, %struct.mline* %340, i64 %idxprom573
  %color = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx575, i32 0, i32 4
  %341 = load i8*, i8** %color, align 8
  %arrayidx576 = getelementptr inbounds i8, i8* %341, i64 %idxprom572
  %342 = load i8, i8* %arrayidx576, align 1
  %color577 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 4
  store i8 %342, i8* %color577, align 1
  %mbcs578 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 5
  store i8 0, i8* %mbcs578, align 1
  br label %do.end.579

do.end.579:                                       ; preds = %do.body.545
  %image580 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 0
  %343 = load i8, i8* %image580, align 1
  %conv581 = zext i8 %343 to i32
  %cmp582 = icmp eq i32 %conv581, 255
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.639

land.lhs.true.584:                                ; preds = %do.end.579
  %font585 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 2
  %344 = load i8, i8* %font585, align 1
  %conv586 = zext i8 %344 to i32
  %cmp587 = icmp eq i32 %conv586, 255
  br i1 %cmp587, label %land.lhs.true.589, label %if.end.639

land.lhs.true.589:                                ; preds = %land.lhs.true.584
  %fontx590 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 3
  %345 = load i8, i8* %fontx590, align 1
  %conv591 = zext i8 %345 to i32
  %cmp592 = icmp eq i32 %conv591, 0
  br i1 %cmp592, label %if.then.594, label %if.end.639

if.then.594:                                      ; preds = %land.lhs.true.589
  %346 = load i32, i32* %ox, align 4
  %dec595 = add nsw i32 %346, -1
  store i32 %dec595, i32* %ox, align 4
  %347 = load i32, i32* %ox, align 4
  %cmp596 = icmp sge i32 %347, 0
  br i1 %cmp596, label %if.then.598, label %if.end.638

if.then.598:                                      ; preds = %if.then.594
  br label %do.body.599

do.body.599:                                      ; preds = %if.then.598
  %348 = load i32, i32* %ox, align 4
  %idxprom600 = sext i32 %348 to i64
  %349 = load i32, i32* %oy, align 4
  %idxprom601 = sext i32 %349 to i64
  %350 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines602 = getelementptr inbounds %struct.win, %struct.win* %350, i32 0, i32 36
  %351 = load %struct.mline*, %struct.mline** %w_mlines602, align 8
  %arrayidx603 = getelementptr inbounds %struct.mline, %struct.mline* %351, i64 %idxprom601
  %image604 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx603, i32 0, i32 0
  %352 = load i8*, i8** %image604, align 8
  %arrayidx605 = getelementptr inbounds i8, i8* %352, i64 %idxprom600
  %353 = load i8, i8* %arrayidx605, align 1
  %image606 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 0
  store i8 %353, i8* %image606, align 1
  %354 = load i32, i32* %ox, align 4
  %idxprom607 = sext i32 %354 to i64
  %355 = load i32, i32* %oy, align 4
  %idxprom608 = sext i32 %355 to i64
  %356 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines609 = getelementptr inbounds %struct.win, %struct.win* %356, i32 0, i32 36
  %357 = load %struct.mline*, %struct.mline** %w_mlines609, align 8
  %arrayidx610 = getelementptr inbounds %struct.mline, %struct.mline* %357, i64 %idxprom608
  %attr611 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx610, i32 0, i32 1
  %358 = load i8*, i8** %attr611, align 8
  %arrayidx612 = getelementptr inbounds i8, i8* %358, i64 %idxprom607
  %359 = load i8, i8* %arrayidx612, align 1
  %attr613 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 1
  store i8 %359, i8* %attr613, align 1
  %360 = load i32, i32* %ox, align 4
  %idxprom614 = sext i32 %360 to i64
  %361 = load i32, i32* %oy, align 4
  %idxprom615 = sext i32 %361 to i64
  %362 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines616 = getelementptr inbounds %struct.win, %struct.win* %362, i32 0, i32 36
  %363 = load %struct.mline*, %struct.mline** %w_mlines616, align 8
  %arrayidx617 = getelementptr inbounds %struct.mline, %struct.mline* %363, i64 %idxprom615
  %font618 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx617, i32 0, i32 2
  %364 = load i8*, i8** %font618, align 8
  %arrayidx619 = getelementptr inbounds i8, i8* %364, i64 %idxprom614
  %365 = load i8, i8* %arrayidx619, align 1
  %font620 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 2
  store i8 %365, i8* %font620, align 1
  %366 = load i32, i32* %ox, align 4
  %idxprom621 = sext i32 %366 to i64
  %367 = load i32, i32* %oy, align 4
  %idxprom622 = sext i32 %367 to i64
  %368 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines623 = getelementptr inbounds %struct.win, %struct.win* %368, i32 0, i32 36
  %369 = load %struct.mline*, %struct.mline** %w_mlines623, align 8
  %arrayidx624 = getelementptr inbounds %struct.mline, %struct.mline* %369, i64 %idxprom622
  %fontx625 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx624, i32 0, i32 3
  %370 = load i8*, i8** %fontx625, align 8
  %arrayidx626 = getelementptr inbounds i8, i8* %370, i64 %idxprom621
  %371 = load i8, i8* %arrayidx626, align 1
  %fontx627 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 3
  store i8 %371, i8* %fontx627, align 1
  %372 = load i32, i32* %ox, align 4
  %idxprom628 = sext i32 %372 to i64
  %373 = load i32, i32* %oy, align 4
  %idxprom629 = sext i32 %373 to i64
  %374 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines630 = getelementptr inbounds %struct.win, %struct.win* %374, i32 0, i32 36
  %375 = load %struct.mline*, %struct.mline** %w_mlines630, align 8
  %arrayidx631 = getelementptr inbounds %struct.mline, %struct.mline* %375, i64 %idxprom629
  %color632 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx631, i32 0, i32 4
  %376 = load i8*, i8** %color632, align 8
  %arrayidx633 = getelementptr inbounds i8, i8* %376, i64 %idxprom628
  %377 = load i8, i8* %arrayidx633, align 1
  %color634 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 4
  store i8 %377, i8* %color634, align 1
  %mbcs635 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 5
  store i8 0, i8* %mbcs635, align 1
  br label %do.end.636

do.end.636:                                       ; preds = %do.body.599
  %mbcs637 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 5
  store i8 -1, i8* %mbcs637, align 1
  br label %if.end.638

if.end.638:                                       ; preds = %do.end.636, %if.then.594
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %land.lhs.true.589, %land.lhs.true.584, %do.end.579
  %378 = load i32, i32* %ox, align 4
  %cmp640 = icmp sge i32 %378, 0
  br i1 %cmp640, label %if.then.642, label %if.end.686

if.then.642:                                      ; preds = %if.end.639
  %379 = load i32, i32* %c, align 4
  call void @utf8_handle_comb(i32 %379, %struct.mchar* %omc)
  %380 = load %struct.win*, %struct.win** @curr, align 8
  %381 = load i32, i32* %oy, align 4
  call void @MFixLine(%struct.win* %380, i32 %381, %struct.mchar* %omc)
  br label %do.body.643

do.body.643:                                      ; preds = %if.then.642
  %image644 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 0
  %382 = load i8, i8* %image644, align 1
  %383 = load i32, i32* %ox, align 4
  %idxprom645 = sext i32 %383 to i64
  %384 = load i32, i32* %oy, align 4
  %idxprom646 = sext i32 %384 to i64
  %385 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines647 = getelementptr inbounds %struct.win, %struct.win* %385, i32 0, i32 36
  %386 = load %struct.mline*, %struct.mline** %w_mlines647, align 8
  %arrayidx648 = getelementptr inbounds %struct.mline, %struct.mline* %386, i64 %idxprom646
  %image649 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx648, i32 0, i32 0
  %387 = load i8*, i8** %image649, align 8
  %arrayidx650 = getelementptr inbounds i8, i8* %387, i64 %idxprom645
  store i8 %382, i8* %arrayidx650, align 1
  %attr651 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 1
  %388 = load i8, i8* %attr651, align 1
  %389 = load i32, i32* %ox, align 4
  %idxprom652 = sext i32 %389 to i64
  %390 = load i32, i32* %oy, align 4
  %idxprom653 = sext i32 %390 to i64
  %391 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines654 = getelementptr inbounds %struct.win, %struct.win* %391, i32 0, i32 36
  %392 = load %struct.mline*, %struct.mline** %w_mlines654, align 8
  %arrayidx655 = getelementptr inbounds %struct.mline, %struct.mline* %392, i64 %idxprom653
  %attr656 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx655, i32 0, i32 1
  %393 = load i8*, i8** %attr656, align 8
  %arrayidx657 = getelementptr inbounds i8, i8* %393, i64 %idxprom652
  store i8 %388, i8* %arrayidx657, align 1
  %font658 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 2
  %394 = load i8, i8* %font658, align 1
  %395 = load i32, i32* %ox, align 4
  %idxprom659 = sext i32 %395 to i64
  %396 = load i32, i32* %oy, align 4
  %idxprom660 = sext i32 %396 to i64
  %397 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines661 = getelementptr inbounds %struct.win, %struct.win* %397, i32 0, i32 36
  %398 = load %struct.mline*, %struct.mline** %w_mlines661, align 8
  %arrayidx662 = getelementptr inbounds %struct.mline, %struct.mline* %398, i64 %idxprom660
  %font663 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx662, i32 0, i32 2
  %399 = load i8*, i8** %font663, align 8
  %arrayidx664 = getelementptr inbounds i8, i8* %399, i64 %idxprom659
  store i8 %394, i8* %arrayidx664, align 1
  %fontx665 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 3
  %400 = load i8, i8* %fontx665, align 1
  %401 = load i32, i32* %ox, align 4
  %idxprom666 = sext i32 %401 to i64
  %402 = load i32, i32* %oy, align 4
  %idxprom667 = sext i32 %402 to i64
  %403 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines668 = getelementptr inbounds %struct.win, %struct.win* %403, i32 0, i32 36
  %404 = load %struct.mline*, %struct.mline** %w_mlines668, align 8
  %arrayidx669 = getelementptr inbounds %struct.mline, %struct.mline* %404, i64 %idxprom667
  %fontx670 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx669, i32 0, i32 3
  %405 = load i8*, i8** %fontx670, align 8
  %arrayidx671 = getelementptr inbounds i8, i8* %405, i64 %idxprom666
  store i8 %400, i8* %arrayidx671, align 1
  %color672 = getelementptr inbounds %struct.mchar, %struct.mchar* %omc, i32 0, i32 4
  %406 = load i8, i8* %color672, align 1
  %407 = load i32, i32* %ox, align 4
  %idxprom673 = sext i32 %407 to i64
  %408 = load i32, i32* %oy, align 4
  %idxprom674 = sext i32 %408 to i64
  %409 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines675 = getelementptr inbounds %struct.win, %struct.win* %409, i32 0, i32 36
  %410 = load %struct.mline*, %struct.mline** %w_mlines675, align 8
  %arrayidx676 = getelementptr inbounds %struct.mline, %struct.mline* %410, i64 %idxprom674
  %color677 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx676, i32 0, i32 4
  %411 = load i8*, i8** %color677, align 8
  %arrayidx678 = getelementptr inbounds i8, i8* %411, i64 %idxprom673
  store i8 %406, i8* %arrayidx678, align 1
  br label %do.end.679

do.end.679:                                       ; preds = %do.body.643
  %412 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer680 = getelementptr inbounds %struct.win, %struct.win* %412, i32 0, i32 3
  %413 = load i32, i32* %ox, align 4
  %414 = load i32, i32* %oy, align 4
  call void @LPutChar(%struct.layer* %w_layer680, %struct.mchar* %omc, i32 %413, i32 %414)
  %415 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer681 = getelementptr inbounds %struct.win, %struct.win* %415, i32 0, i32 3
  %416 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer682 = getelementptr inbounds %struct.win, %struct.win* %416, i32 0, i32 3
  %l_x683 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer682, i32 0, i32 3
  %417 = load i32, i32* %l_x683, align 4
  %418 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer684 = getelementptr inbounds %struct.win, %struct.win* %418, i32 0, i32 3
  %l_y685 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer684, i32 0, i32 4
  %419 = load i32, i32* %l_y685, align 4
  call void @LGotoPos(%struct.layer* %w_layer681, i32 %417, i32 %419)
  br label %if.end.686

if.end.686:                                       ; preds = %do.end.679, %if.end.639
  br label %sw.epilog.1085

if.end.687:                                       ; preds = %land.lhs.true.524, %land.lhs.true.521, %if.end.516
  %420 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend688 = getelementptr inbounds %struct.win, %struct.win* %420, i32 0, i32 37
  %font689 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend688, i32 0, i32 2
  %421 = load i8, i8* %font689, align 1
  %conv690 = zext i8 %421 to i32
  store i32 %conv690, i32* %font, align 4
  %422 = load i32, i32* %font, align 4
  %cmp691 = icmp eq i32 %422, 73
  br i1 %cmp691, label %land.lhs.true.693, label %if.end.721

land.lhs.true.693:                                ; preds = %if.end.687
  %423 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer694 = getelementptr inbounds %struct.win, %struct.win* %423, i32 0, i32 3
  %l_encoding695 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer694, i32 0, i32 5
  %424 = load i32, i32* %l_encoding695, align 4
  %cmp696 = icmp eq i32 %424, 2
  br i1 %cmp696, label %land.lhs.true.698, label %if.end.721

land.lhs.true.698:                                ; preds = %land.lhs.true.693
  %425 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs699 = getelementptr inbounds %struct.win, %struct.win* %425, i32 0, i32 62
  %426 = load i32, i32* %w_mbcs699, align 4
  %cmp700 = icmp eq i32 %426, 0
  br i1 %cmp700, label %if.then.702, label %if.end.721

if.then.702:                                      ; preds = %land.lhs.true.698
  br label %do.body.703

do.body.703:                                      ; preds = %if.then.702
  br label %do.end.704

do.end.704:                                       ; preds = %do.body.703
  %427 = load i32, i32* %c, align 4
  %cmp705 = icmp sle i32 129, %427
  br i1 %cmp705, label %land.lhs.true.707, label %lor.lhs.false.710

land.lhs.true.707:                                ; preds = %do.end.704
  %428 = load i32, i32* %c, align 4
  %cmp708 = icmp sle i32 %428, 159
  br i1 %cmp708, label %if.then.716, label %lor.lhs.false.710

lor.lhs.false.710:                                ; preds = %land.lhs.true.707, %do.end.704
  %429 = load i32, i32* %c, align 4
  %cmp711 = icmp sle i32 224, %429
  br i1 %cmp711, label %land.lhs.true.713, label %if.end.720

land.lhs.true.713:                                ; preds = %lor.lhs.false.710
  %430 = load i32, i32* %c, align 4
  %cmp714 = icmp sle i32 %430, 239
  br i1 %cmp714, label %if.then.716, label %if.end.720

if.then.716:                                      ; preds = %land.lhs.true.713, %land.lhs.true.707
  br label %do.body.717

do.body.717:                                      ; preds = %if.then.716
  br label %do.end.718

do.end.718:                                       ; preds = %do.body.717
  %431 = load i32, i32* %c, align 4
  %432 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs719 = getelementptr inbounds %struct.win, %struct.win* %432, i32 0, i32 62
  store i32 %431, i32* %w_mbcs719, align 4
  br label %sw.epilog.1085

if.end.720:                                       ; preds = %land.lhs.true.713, %lor.lhs.false.710
  br label %if.end.721

if.end.721:                                       ; preds = %if.end.720, %land.lhs.true.698, %land.lhs.true.693, %if.end.687
  %433 = load i32, i32* %font, align 4
  %cmp722 = icmp eq i32 %433, 25
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.733

land.lhs.true.724:                                ; preds = %if.end.721
  %434 = load i32, i32* %c, align 4
  %cmp725 = icmp eq i32 %434, 128
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.733

land.lhs.true.727:                                ; preds = %land.lhs.true.724
  %435 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs728 = getelementptr inbounds %struct.win, %struct.win* %435, i32 0, i32 62
  %436 = load i32, i32* %w_mbcs728, align 4
  %tobool729 = icmp ne i32 %436, 0
  br i1 %tobool729, label %if.end.733, label %if.then.730

if.then.730:                                      ; preds = %land.lhs.true.727
  %437 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend731 = getelementptr inbounds %struct.win, %struct.win* %437, i32 0, i32 37
  %font732 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend731, i32 0, i32 2
  store i8 0, i8* %font732, align 1
  store i32 0, i32* %font, align 4
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.730, %land.lhs.true.727, %land.lhs.true.724, %if.end.721
  %438 = load i32, i32* %font, align 4
  %tobool734 = icmp ne i32 %438, 0
  br i1 %tobool734, label %land.lhs.true.735, label %if.end.745

land.lhs.true.735:                                ; preds = %if.end.733
  %439 = load i32, i32* %font, align 4
  %and736 = and i32 %439, 96
  %cmp737 = icmp eq i32 %and736, 0
  br i1 %cmp737, label %land.lhs.true.739, label %if.end.745

land.lhs.true.739:                                ; preds = %land.lhs.true.735
  %440 = load i32, i32* %c, align 4
  %cmp740 = icmp eq i32 %440, 32
  br i1 %cmp740, label %if.then.742, label %if.end.745

if.then.742:                                      ; preds = %land.lhs.true.739
  %441 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend743 = getelementptr inbounds %struct.win, %struct.win* %441, i32 0, i32 37
  %font744 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend743, i32 0, i32 2
  store i8 0, i8* %font744, align 1
  store i32 0, i32* %font, align 4
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.742, %land.lhs.true.739, %land.lhs.true.735, %if.end.733
  %442 = load i32, i32* %font, align 4
  %tobool746 = icmp ne i32 %442, 0
  br i1 %tobool746, label %land.lhs.true.747, label %lor.lhs.false.751

land.lhs.true.747:                                ; preds = %if.end.745
  %443 = load i32, i32* %font, align 4
  %and748 = and i32 %443, 96
  %cmp749 = icmp eq i32 %and748, 0
  br i1 %cmp749, label %if.then.754, label %lor.lhs.false.751

lor.lhs.false.751:                                ; preds = %land.lhs.true.747, %if.end.745
  %444 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs752 = getelementptr inbounds %struct.win, %struct.win* %444, i32 0, i32 62
  %445 = load i32, i32* %w_mbcs752, align 4
  %tobool753 = icmp ne i32 %445, 0
  br i1 %tobool753, label %if.then.754, label %if.end.855

if.then.754:                                      ; preds = %lor.lhs.false.751, %land.lhs.true.747
  %446 = load i32, i32* %c, align 4
  store i32 %446, i32* %t, align 4
  %447 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs755 = getelementptr inbounds %struct.win, %struct.win* %447, i32 0, i32 62
  %448 = load i32, i32* %w_mbcs755, align 4
  %cmp756 = icmp eq i32 %448, 0
  br i1 %cmp756, label %if.then.758, label %if.end.760

if.then.758:                                      ; preds = %if.then.754
  %449 = load i32, i32* %c, align 4
  %450 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs759 = getelementptr inbounds %struct.win, %struct.win* %450, i32 0, i32 62
  store i32 %449, i32* %w_mbcs759, align 4
  br label %sw.epilog.1085

if.end.760:                                       ; preds = %if.then.754
  %451 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer761 = getelementptr inbounds %struct.win, %struct.win* %451, i32 0, i32 3
  %l_x762 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer761, i32 0, i32 3
  %452 = load i32, i32* %l_x762, align 4
  %453 = load i32, i32* @cols, align 4
  %sub763 = sub nsw i32 %453, 1
  %cmp764 = icmp eq i32 %452, %sub763
  br i1 %cmp764, label %if.then.766, label %if.end.774

if.then.766:                                      ; preds = %if.end.760
  %454 = load %struct.win*, %struct.win** @curr, align 8
  %w_wrap = getelementptr inbounds %struct.win, %struct.win* %454, i32 0, i32 48
  %455 = load i32, i32* %w_wrap, align 4
  %tobool767 = icmp ne i32 %455, 0
  %cond768 = select i1 %tobool767, i32 1, i32 -1
  %456 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer769 = getelementptr inbounds %struct.win, %struct.win* %456, i32 0, i32 3
  %l_x770 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer769, i32 0, i32 3
  %457 = load i32, i32* %l_x770, align 4
  %add771 = add nsw i32 %457, %cond768
  store i32 %add771, i32* %l_x770, align 4
  br label %do.body.772

do.body.772:                                      ; preds = %if.then.766
  br label %do.end.773

do.end.773:                                       ; preds = %do.body.772
  br label %if.end.774

if.end.774:                                       ; preds = %do.end.773, %if.end.760
  %458 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer775 = getelementptr inbounds %struct.win, %struct.win* %458, i32 0, i32 3
  %l_encoding776 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer775, i32 0, i32 5
  %459 = load i32, i32* %l_encoding776, align 4
  %cmp777 = icmp ne i32 %459, 8
  br i1 %cmp777, label %if.then.779, label %if.end.854

if.then.779:                                      ; preds = %if.end.774
  %460 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs780 = getelementptr inbounds %struct.win, %struct.win* %460, i32 0, i32 62
  %461 = load i32, i32* %w_mbcs780, align 4
  store i32 %461, i32* %c, align 4
  %462 = load i32, i32* %font, align 4
  %cmp781 = icmp eq i32 %462, 73
  br i1 %cmp781, label %land.lhs.true.783, label %if.end.831

land.lhs.true.783:                                ; preds = %if.then.779
  %463 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer784 = getelementptr inbounds %struct.win, %struct.win* %463, i32 0, i32 3
  %l_encoding785 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer784, i32 0, i32 5
  %464 = load i32, i32* %l_encoding785, align 4
  %cmp786 = icmp eq i32 %464, 2
  br i1 %cmp786, label %if.then.788, label %if.end.831

if.then.788:                                      ; preds = %land.lhs.true.783
  br label %do.body.789

do.body.789:                                      ; preds = %if.then.788
  br label %do.end.790

do.end.790:                                       ; preds = %do.body.789
  %465 = load i32, i32* %t, align 4
  %cmp791 = icmp sle i32 64, %465
  br i1 %cmp791, label %land.lhs.true.793, label %if.else.827

land.lhs.true.793:                                ; preds = %do.end.790
  %466 = load i32, i32* %t, align 4
  %cmp794 = icmp sle i32 %466, 252
  br i1 %cmp794, label %land.lhs.true.796, label %if.else.827

land.lhs.true.796:                                ; preds = %land.lhs.true.793
  %467 = load i32, i32* %t, align 4
  %cmp797 = icmp ne i32 %467, 127
  br i1 %cmp797, label %if.then.799, label %if.else.827

if.then.799:                                      ; preds = %land.lhs.true.796
  %468 = load i32, i32* %c, align 4
  %cmp800 = icmp sle i32 %468, 159
  br i1 %cmp800, label %if.then.802, label %if.else.806

if.then.802:                                      ; preds = %if.then.799
  %469 = load i32, i32* %c, align 4
  %sub803 = sub nsw i32 %469, 129
  %mul804 = mul nsw i32 %sub803, 2
  %add805 = add nsw i32 %mul804, 33
  store i32 %add805, i32* %c, align 4
  br label %if.end.810

if.else.806:                                      ; preds = %if.then.799
  %470 = load i32, i32* %c, align 4
  %sub807 = sub nsw i32 %470, 193
  %mul808 = mul nsw i32 %sub807, 2
  %add809 = add nsw i32 %mul808, 33
  store i32 %add809, i32* %c, align 4
  br label %if.end.810

if.end.810:                                       ; preds = %if.else.806, %if.then.802
  %471 = load i32, i32* %t, align 4
  %cmp811 = icmp sle i32 %471, 126
  br i1 %cmp811, label %if.then.813, label %if.else.815

if.then.813:                                      ; preds = %if.end.810
  %472 = load i32, i32* %t, align 4
  %sub814 = sub nsw i32 %472, 31
  store i32 %sub814, i32* %t, align 4
  br label %if.end.824

if.else.815:                                      ; preds = %if.end.810
  %473 = load i32, i32* %t, align 4
  %cmp816 = icmp sle i32 %473, 158
  br i1 %cmp816, label %if.then.818, label %if.else.820

if.then.818:                                      ; preds = %if.else.815
  %474 = load i32, i32* %t, align 4
  %sub819 = sub nsw i32 %474, 32
  store i32 %sub819, i32* %t, align 4
  br label %if.end.823

if.else.820:                                      ; preds = %if.else.815
  %475 = load i32, i32* %t, align 4
  %sub821 = sub nsw i32 %475, 126
  store i32 %sub821, i32* %t, align 4
  %476 = load i32, i32* %c, align 4
  %inc822 = add nsw i32 %476, 1
  store i32 %inc822, i32* %c, align 4
  br label %if.end.823

if.end.823:                                       ; preds = %if.else.820, %if.then.818
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %if.then.813
  %477 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend825 = getelementptr inbounds %struct.win, %struct.win* %477, i32 0, i32 37
  %font826 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend825, i32 0, i32 2
  store i8 2, i8* %font826, align 1
  br label %if.end.828

if.else.827:                                      ; preds = %land.lhs.true.796, %land.lhs.true.793, %do.end.790
  %478 = load i32, i32* %t, align 4
  store i32 %478, i32* %c, align 4
  store i32 0, i32* %t, align 4
  br label %if.end.828

if.end.828:                                       ; preds = %if.else.827, %if.end.824
  br label %do.body.829

do.body.829:                                      ; preds = %if.end.828
  br label %do.end.830

do.end.830:                                       ; preds = %do.body.829
  br label %if.end.831

if.end.831:                                       ; preds = %do.end.830, %land.lhs.true.783, %if.then.779
  %479 = load i32, i32* %t, align 4
  %tobool832 = icmp ne i32 %479, 0
  br i1 %tobool832, label %land.lhs.true.833, label %if.end.848

land.lhs.true.833:                                ; preds = %if.end.831
  %480 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr834 = getelementptr inbounds %struct.win, %struct.win* %480, i32 0, i32 58
  %481 = load i32, i32* %w_gr834, align 4
  %tobool835 = icmp ne i32 %481, 0
  br i1 %tobool835, label %land.lhs.true.836, label %if.end.848

land.lhs.true.836:                                ; preds = %land.lhs.true.833
  %482 = load i32, i32* %font, align 4
  %cmp837 = icmp ne i32 %482, 24
  br i1 %cmp837, label %land.lhs.true.839, label %if.end.848

land.lhs.true.839:                                ; preds = %land.lhs.true.836
  %483 = load i32, i32* %font, align 4
  %cmp840 = icmp ne i32 %483, 25
  br i1 %cmp840, label %if.then.842, label %if.end.848

if.then.842:                                      ; preds = %land.lhs.true.839
  %484 = load i32, i32* %t, align 4
  %and843 = and i32 %484, 127
  store i32 %and843, i32* %t, align 4
  %485 = load i32, i32* %t, align 4
  %cmp844 = icmp slt i32 %485, 32
  br i1 %cmp844, label %if.then.846, label %if.end.847

if.then.846:                                      ; preds = %if.then.842
  br label %tryagain

if.end.847:                                       ; preds = %if.then.842
  br label %if.end.848

if.end.848:                                       ; preds = %if.end.847, %land.lhs.true.839, %land.lhs.true.836, %land.lhs.true.833, %if.end.831
  %486 = load i32, i32* %t, align 4
  %cmp849 = icmp eq i32 %486, 127
  br i1 %cmp849, label %if.then.851, label %if.end.852

if.then.851:                                      ; preds = %if.end.848
  br label %sw.epilog.1085

if.end.852:                                       ; preds = %if.end.848
  %487 = load i32, i32* %t, align 4
  %488 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs853 = getelementptr inbounds %struct.win, %struct.win* %488, i32 0, i32 62
  store i32 %487, i32* %w_mbcs853, align 4
  br label %if.end.854

if.end.854:                                       ; preds = %if.end.852, %if.end.774
  br label %if.end.855

if.end.855:                                       ; preds = %if.end.854, %lor.lhs.false.751
  %489 = load i32, i32* %font, align 4
  %cmp856 = icmp eq i32 %489, 60
  br i1 %cmp856, label %land.lhs.true.858, label %if.else.865

land.lhs.true.858:                                ; preds = %if.end.855
  %490 = load i32, i32* %c, align 4
  %cmp859 = icmp sge i32 %490, 32
  br i1 %cmp859, label %if.then.861, label %if.else.865

if.then.861:                                      ; preds = %land.lhs.true.858
  %491 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend862 = getelementptr inbounds %struct.win, %struct.win* %491, i32 0, i32 37
  %font863 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend862, i32 0, i32 2
  store i8 0, i8* %font863, align 1
  store i32 0, i32* %font, align 4
  %492 = load i32, i32* %c, align 4
  %or864 = or i32 %492, 128
  store i32 %or864, i32* %c, align 4
  br label %if.end.896

if.else.865:                                      ; preds = %land.lhs.true.858, %if.end.855
  %493 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr866 = getelementptr inbounds %struct.win, %struct.win* %493, i32 0, i32 58
  %494 = load i32, i32* %w_gr866, align 4
  %tobool867 = icmp ne i32 %494, 0
  br i1 %tobool867, label %land.lhs.true.868, label %if.end.895

land.lhs.true.868:                                ; preds = %if.else.865
  %495 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer869 = getelementptr inbounds %struct.win, %struct.win* %495, i32 0, i32 3
  %l_encoding870 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer869, i32 0, i32 5
  %496 = load i32, i32* %l_encoding870, align 4
  %cmp871 = icmp ne i32 %496, 8
  br i1 %cmp871, label %if.then.873, label %if.end.895

if.then.873:                                      ; preds = %land.lhs.true.868
  %497 = load i32, i32* %c, align 4
  %cmp874 = icmp eq i32 %497, 128
  br i1 %cmp874, label %land.lhs.true.876, label %if.else.885

land.lhs.true.876:                                ; preds = %if.then.873
  %498 = load i32, i32* %font, align 4
  %cmp877 = icmp eq i32 %498, 0
  br i1 %cmp877, label %land.lhs.true.879, label %if.else.885

land.lhs.true.879:                                ; preds = %land.lhs.true.876
  %499 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer880 = getelementptr inbounds %struct.win, %struct.win* %499, i32 0, i32 3
  %l_encoding881 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer880, i32 0, i32 5
  %500 = load i32, i32* %l_encoding881, align 4
  %cmp882 = icmp eq i32 %500, 20
  br i1 %cmp882, label %if.then.884, label %if.else.885

if.then.884:                                      ; preds = %land.lhs.true.879
  store i32 164, i32* %c, align 4
  br label %if.end.887

if.else.885:                                      ; preds = %land.lhs.true.879, %land.lhs.true.876, %if.then.873
  %501 = load i32, i32* %c, align 4
  %and886 = and i32 %501, 127
  store i32 %and886, i32* %c, align 4
  br label %if.end.887

if.end.887:                                       ; preds = %if.else.885, %if.then.884
  %502 = load i32, i32* %c, align 4
  %cmp888 = icmp slt i32 %502, 32
  br i1 %cmp888, label %land.lhs.true.890, label %if.end.894

land.lhs.true.890:                                ; preds = %if.end.887
  %503 = load i32, i32* %font, align 4
  %cmp891 = icmp ne i32 %503, 25
  br i1 %cmp891, label %if.then.893, label %if.end.894

if.then.893:                                      ; preds = %land.lhs.true.890
  br label %tryagain

if.end.894:                                       ; preds = %land.lhs.true.890, %if.end.887
  br label %if.end.895

if.end.895:                                       ; preds = %if.end.894, %land.lhs.true.868, %if.else.865
  br label %if.end.896

if.end.896:                                       ; preds = %if.end.895, %if.then.861
  %504 = load i32, i32* %c, align 4
  %cmp897 = icmp eq i32 %504, 127
  br i1 %cmp897, label %if.then.899, label %if.end.900

if.then.899:                                      ; preds = %if.end.896
  br label %sw.epilog.1085

if.end.900:                                       ; preds = %if.end.896
  %505 = load i32, i32* %c, align 4
  %conv901 = trunc i32 %505 to i8
  %506 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend902 = getelementptr inbounds %struct.win, %struct.win* %506, i32 0, i32 37
  %image903 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend902, i32 0, i32 0
  store i8 %conv901, i8* %image903, align 1
  %507 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer904 = getelementptr inbounds %struct.win, %struct.win* %507, i32 0, i32 3
  %l_encoding905 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer904, i32 0, i32 5
  %508 = load i32, i32* %l_encoding905, align 4
  %cmp906 = icmp eq i32 %508, 8
  br i1 %cmp906, label %if.then.908, label %if.end.916

if.then.908:                                      ; preds = %if.end.900
  %509 = load i32, i32* %c, align 4
  %shr = ashr i32 %509, 8
  %conv909 = trunc i32 %shr to i8
  %510 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend910 = getelementptr inbounds %struct.win, %struct.win* %510, i32 0, i32 37
  %font911 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend910, i32 0, i32 2
  store i8 %conv909, i8* %font911, align 1
  %511 = load i32, i32* %c, align 4
  %shr912 = ashr i32 %511, 16
  %conv913 = trunc i32 %shr912 to i8
  %512 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend914 = getelementptr inbounds %struct.win, %struct.win* %512, i32 0, i32 37
  %fontx915 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend914, i32 0, i32 3
  store i8 %conv913, i8* %fontx915, align 1
  br label %if.end.916

if.end.916:                                       ; preds = %if.then.908, %if.end.900
  %513 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs917 = getelementptr inbounds %struct.win, %struct.win* %513, i32 0, i32 62
  %514 = load i32, i32* %w_mbcs917, align 4
  %conv918 = trunc i32 %514 to i8
  %515 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend919 = getelementptr inbounds %struct.win, %struct.win* %515, i32 0, i32 37
  %mbcs920 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend919, i32 0, i32 5
  store i8 %conv918, i8* %mbcs920, align 1
  %516 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer921 = getelementptr inbounds %struct.win, %struct.win* %516, i32 0, i32 3
  %l_x922 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer921, i32 0, i32 3
  %517 = load i32, i32* %l_x922, align 4
  %518 = load i32, i32* @cols, align 4
  %sub923 = sub nsw i32 %518, 1
  %cmp924 = icmp slt i32 %517, %sub923
  br i1 %cmp924, label %if.then.926, label %if.else.997

if.then.926:                                      ; preds = %if.end.916
  %519 = load %struct.win*, %struct.win** @curr, align 8
  %w_insert927 = getelementptr inbounds %struct.win, %struct.win* %519, i32 0, i32 50
  %520 = load i32, i32* %w_insert927, align 4
  %tobool928 = icmp ne i32 %520, 0
  br i1 %tobool928, label %if.then.929, label %if.else.981

if.then.929:                                      ; preds = %if.then.926
  br label %do.body.930

do.body.930:                                      ; preds = %if.then.929
  %521 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer931 = getelementptr inbounds %struct.win, %struct.win* %521, i32 0, i32 3
  %l_y932 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer931, i32 0, i32 4
  %522 = load i32, i32* %l_y932, align 4
  %idxprom933 = sext i32 %522 to i64
  %523 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines934 = getelementptr inbounds %struct.win, %struct.win* %523, i32 0, i32 36
  %524 = load %struct.mline*, %struct.mline** %w_mlines934, align 8
  %arrayidx935 = getelementptr inbounds %struct.mline, %struct.mline* %524, i64 %idxprom933
  %image936 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx935, i32 0, i32 0
  %525 = load i8*, i8** %image936, align 8
  %526 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %527 = load i32, i32* @cols, align 4
  %conv937 = sext i32 %527 to i64
  call void @bcopy(i8* %525, i8* %526, i64 %conv937) #1
  %528 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer938 = getelementptr inbounds %struct.win, %struct.win* %528, i32 0, i32 3
  %l_y939 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer938, i32 0, i32 4
  %529 = load i32, i32* %l_y939, align 4
  %idxprom940 = sext i32 %529 to i64
  %530 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines941 = getelementptr inbounds %struct.win, %struct.win* %530, i32 0, i32 36
  %531 = load %struct.mline*, %struct.mline** %w_mlines941, align 8
  %arrayidx942 = getelementptr inbounds %struct.mline, %struct.mline* %531, i64 %idxprom940
  %attr943 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx942, i32 0, i32 1
  %532 = load i8*, i8** %attr943, align 8
  %533 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %534 = load i32, i32* @cols, align 4
  %conv944 = sext i32 %534 to i64
  call void @bcopy(i8* %532, i8* %533, i64 %conv944) #1
  %535 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer945 = getelementptr inbounds %struct.win, %struct.win* %535, i32 0, i32 3
  %l_y946 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer945, i32 0, i32 4
  %536 = load i32, i32* %l_y946, align 4
  %idxprom947 = sext i32 %536 to i64
  %537 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines948 = getelementptr inbounds %struct.win, %struct.win* %537, i32 0, i32 36
  %538 = load %struct.mline*, %struct.mline** %w_mlines948, align 8
  %arrayidx949 = getelementptr inbounds %struct.mline, %struct.mline* %538, i64 %idxprom947
  %font950 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx949, i32 0, i32 2
  %539 = load i8*, i8** %font950, align 8
  %540 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %541 = load i32, i32* @cols, align 4
  %conv951 = sext i32 %541 to i64
  call void @bcopy(i8* %539, i8* %540, i64 %conv951) #1
  %542 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer952 = getelementptr inbounds %struct.win, %struct.win* %542, i32 0, i32 3
  %l_y953 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer952, i32 0, i32 4
  %543 = load i32, i32* %l_y953, align 4
  %idxprom954 = sext i32 %543 to i64
  %544 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines955 = getelementptr inbounds %struct.win, %struct.win* %544, i32 0, i32 36
  %545 = load %struct.mline*, %struct.mline** %w_mlines955, align 8
  %arrayidx956 = getelementptr inbounds %struct.mline, %struct.mline* %545, i64 %idxprom954
  %fontx957 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx956, i32 0, i32 3
  %546 = load i8*, i8** %fontx957, align 8
  %547 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %548 = load i32, i32* @cols, align 4
  %conv958 = sext i32 %548 to i64
  call void @bcopy(i8* %546, i8* %547, i64 %conv958) #1
  %549 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer959 = getelementptr inbounds %struct.win, %struct.win* %549, i32 0, i32 3
  %l_y960 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer959, i32 0, i32 4
  %550 = load i32, i32* %l_y960, align 4
  %idxprom961 = sext i32 %550 to i64
  %551 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines962 = getelementptr inbounds %struct.win, %struct.win* %551, i32 0, i32 36
  %552 = load %struct.mline*, %struct.mline** %w_mlines962, align 8
  %arrayidx963 = getelementptr inbounds %struct.mline, %struct.mline* %552, i64 %idxprom961
  %color964 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx963, i32 0, i32 4
  %553 = load i8*, i8** %color964, align 8
  %554 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %555 = load i32, i32* @cols, align 4
  %conv965 = sext i32 %555 to i64
  call void @bcopy(i8* %553, i8* %554, i64 %conv965) #1
  br label %do.end.966

do.end.966:                                       ; preds = %do.body.930
  %556 = load %struct.win*, %struct.win** @curr, align 8
  %557 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend967 = getelementptr inbounds %struct.win, %struct.win* %557, i32 0, i32 37
  %558 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer968 = getelementptr inbounds %struct.win, %struct.win* %558, i32 0, i32 3
  %l_x969 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer968, i32 0, i32 3
  %559 = load i32, i32* %l_x969, align 4
  %560 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer970 = getelementptr inbounds %struct.win, %struct.win* %560, i32 0, i32 3
  %l_y971 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer970, i32 0, i32 4
  %561 = load i32, i32* %l_y971, align 4
  call void @MInsChar(%struct.win* %556, %struct.mchar* %w_rend967, i32 %559, i32 %561)
  %562 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer972 = getelementptr inbounds %struct.win, %struct.win* %562, i32 0, i32 3
  %563 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend973 = getelementptr inbounds %struct.win, %struct.win* %563, i32 0, i32 37
  %564 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer974 = getelementptr inbounds %struct.win, %struct.win* %564, i32 0, i32 3
  %l_x975 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer974, i32 0, i32 3
  %565 = load i32, i32* %l_x975, align 4
  %566 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer976 = getelementptr inbounds %struct.win, %struct.win* %566, i32 0, i32 3
  %l_y977 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer976, i32 0, i32 4
  %567 = load i32, i32* %l_y977, align 4
  call void @LInsChar(%struct.layer* %w_layer972, %struct.mchar* %w_rend973, i32 %565, i32 %567, %struct.mline* @mline_old)
  %568 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer978 = getelementptr inbounds %struct.win, %struct.win* %568, i32 0, i32 3
  %l_x979 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer978, i32 0, i32 3
  %569 = load i32, i32* %l_x979, align 4
  %inc980 = add nsw i32 %569, 1
  store i32 %inc980, i32* %l_x979, align 4
  br label %if.end.996

if.else.981:                                      ; preds = %if.then.926
  %570 = load %struct.win*, %struct.win** @curr, align 8
  %571 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend982 = getelementptr inbounds %struct.win, %struct.win* %571, i32 0, i32 37
  %572 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer983 = getelementptr inbounds %struct.win, %struct.win* %572, i32 0, i32 3
  %l_x984 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer983, i32 0, i32 3
  %573 = load i32, i32* %l_x984, align 4
  %574 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer985 = getelementptr inbounds %struct.win, %struct.win* %574, i32 0, i32 3
  %l_y986 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer985, i32 0, i32 4
  %575 = load i32, i32* %l_y986, align 4
  call void @MPutChar(%struct.win* %570, %struct.mchar* %w_rend982, i32 %573, i32 %575)
  %576 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer987 = getelementptr inbounds %struct.win, %struct.win* %576, i32 0, i32 3
  %577 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend988 = getelementptr inbounds %struct.win, %struct.win* %577, i32 0, i32 37
  %578 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer989 = getelementptr inbounds %struct.win, %struct.win* %578, i32 0, i32 3
  %l_x990 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer989, i32 0, i32 3
  %579 = load i32, i32* %l_x990, align 4
  %580 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer991 = getelementptr inbounds %struct.win, %struct.win* %580, i32 0, i32 3
  %l_y992 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer991, i32 0, i32 4
  %581 = load i32, i32* %l_y992, align 4
  call void @LPutChar(%struct.layer* %w_layer987, %struct.mchar* %w_rend988, i32 %579, i32 %581)
  %582 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer993 = getelementptr inbounds %struct.win, %struct.win* %582, i32 0, i32 3
  %l_x994 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer993, i32 0, i32 3
  %583 = load i32, i32* %l_x994, align 4
  %inc995 = add nsw i32 %583, 1
  store i32 %inc995, i32* %l_x994, align 4
  br label %if.end.996

if.end.996:                                       ; preds = %if.else.981, %do.end.966
  br label %if.end.1055

if.else.997:                                      ; preds = %if.end.916
  %584 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer998 = getelementptr inbounds %struct.win, %struct.win* %584, i32 0, i32 3
  %l_x999 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer998, i32 0, i32 3
  %585 = load i32, i32* %l_x999, align 4
  %586 = load i32, i32* @cols, align 4
  %sub1000 = sub nsw i32 %586, 1
  %cmp1001 = icmp eq i32 %585, %sub1000
  br i1 %cmp1001, label %if.then.1003, label %if.else.1022

if.then.1003:                                     ; preds = %if.else.997
  %587 = load %struct.win*, %struct.win** @curr, align 8
  %588 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1004 = getelementptr inbounds %struct.win, %struct.win* %588, i32 0, i32 37
  %589 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1005 = getelementptr inbounds %struct.win, %struct.win* %589, i32 0, i32 3
  %l_x1006 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1005, i32 0, i32 3
  %590 = load i32, i32* %l_x1006, align 4
  %591 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1007 = getelementptr inbounds %struct.win, %struct.win* %591, i32 0, i32 3
  %l_y1008 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1007, i32 0, i32 4
  %592 = load i32, i32* %l_y1008, align 4
  call void @MPutChar(%struct.win* %587, %struct.mchar* %w_rend1004, i32 %590, i32 %592)
  %593 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1009 = getelementptr inbounds %struct.win, %struct.win* %593, i32 0, i32 3
  %594 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1010 = getelementptr inbounds %struct.win, %struct.win* %594, i32 0, i32 37
  %595 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1011 = getelementptr inbounds %struct.win, %struct.win* %595, i32 0, i32 3
  %l_x1012 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1011, i32 0, i32 3
  %596 = load i32, i32* %l_x1012, align 4
  %597 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1013 = getelementptr inbounds %struct.win, %struct.win* %597, i32 0, i32 3
  %l_y1014 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1013, i32 0, i32 4
  %598 = load i32, i32* %l_y1014, align 4
  call void @LPutChar(%struct.layer* %w_layer1009, %struct.mchar* %w_rend1010, i32 %596, i32 %598)
  %599 = load %struct.win*, %struct.win** @curr, align 8
  %w_wrap1015 = getelementptr inbounds %struct.win, %struct.win* %599, i32 0, i32 48
  %600 = load i32, i32* %w_wrap1015, align 4
  %tobool1016 = icmp ne i32 %600, 0
  br i1 %tobool1016, label %if.then.1017, label %if.end.1021

if.then.1017:                                     ; preds = %if.then.1003
  %601 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1018 = getelementptr inbounds %struct.win, %struct.win* %601, i32 0, i32 3
  %l_x1019 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1018, i32 0, i32 3
  %602 = load i32, i32* %l_x1019, align 4
  %inc1020 = add nsw i32 %602, 1
  store i32 %inc1020, i32* %l_x1019, align 4
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1017, %if.then.1003
  br label %if.end.1054

if.else.1022:                                     ; preds = %if.else.997
  %603 = load %struct.win*, %struct.win** @curr, align 8
  %604 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1023 = getelementptr inbounds %struct.win, %struct.win* %604, i32 0, i32 37
  %605 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1024 = getelementptr inbounds %struct.win, %struct.win* %605, i32 0, i32 3
  %l_y1025 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1024, i32 0, i32 4
  %606 = load i32, i32* %l_y1025, align 4
  %607 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %607, i32 0, i32 46
  %608 = load i32, i32* %w_top, align 4
  %609 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %609, i32 0, i32 47
  %610 = load i32, i32* %w_bot, align 4
  %611 = load %struct.win*, %struct.win** @curr, align 8
  %w_insert1026 = getelementptr inbounds %struct.win, %struct.win* %611, i32 0, i32 50
  %612 = load i32, i32* %w_insert1026, align 4
  call void @MWrapChar(%struct.win* %603, %struct.mchar* %w_rend1023, i32 %606, i32 %608, i32 %610, i32 %612)
  %613 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1027 = getelementptr inbounds %struct.win, %struct.win* %613, i32 0, i32 3
  %614 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1028 = getelementptr inbounds %struct.win, %struct.win* %614, i32 0, i32 37
  %615 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1029 = getelementptr inbounds %struct.win, %struct.win* %615, i32 0, i32 3
  %l_y1030 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1029, i32 0, i32 4
  %616 = load i32, i32* %l_y1030, align 4
  %617 = load %struct.win*, %struct.win** @curr, align 8
  %w_top1031 = getelementptr inbounds %struct.win, %struct.win* %617, i32 0, i32 46
  %618 = load i32, i32* %w_top1031, align 4
  %619 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot1032 = getelementptr inbounds %struct.win, %struct.win* %619, i32 0, i32 47
  %620 = load i32, i32* %w_bot1032, align 4
  %621 = load %struct.win*, %struct.win** @curr, align 8
  %w_insert1033 = getelementptr inbounds %struct.win, %struct.win* %621, i32 0, i32 50
  %622 = load i32, i32* %w_insert1033, align 4
  call void @LWrapChar(%struct.layer* %w_layer1027, %struct.mchar* %w_rend1028, i32 %616, i32 %618, i32 %620, i32 %622)
  %623 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1034 = getelementptr inbounds %struct.win, %struct.win* %623, i32 0, i32 3
  %l_y1035 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1034, i32 0, i32 4
  %624 = load i32, i32* %l_y1035, align 4
  %625 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot1036 = getelementptr inbounds %struct.win, %struct.win* %625, i32 0, i32 47
  %626 = load i32, i32* %w_bot1036, align 4
  %cmp1037 = icmp ne i32 %624, %626
  br i1 %cmp1037, label %land.lhs.true.1039, label %if.end.1051

land.lhs.true.1039:                               ; preds = %if.else.1022
  %627 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1040 = getelementptr inbounds %struct.win, %struct.win* %627, i32 0, i32 3
  %l_y1041 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1040, i32 0, i32 4
  %628 = load i32, i32* %l_y1041, align 4
  %629 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1042 = getelementptr inbounds %struct.win, %struct.win* %629, i32 0, i32 3
  %l_height1043 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1042, i32 0, i32 2
  %630 = load i32, i32* %l_height1043, align 4
  %sub1044 = sub nsw i32 %630, 1
  %cmp1045 = icmp ne i32 %628, %sub1044
  br i1 %cmp1045, label %if.then.1047, label %if.end.1051

if.then.1047:                                     ; preds = %land.lhs.true.1039
  %631 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1048 = getelementptr inbounds %struct.win, %struct.win* %631, i32 0, i32 3
  %l_y1049 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1048, i32 0, i32 4
  %632 = load i32, i32* %l_y1049, align 4
  %inc1050 = add nsw i32 %632, 1
  store i32 %inc1050, i32* %l_y1049, align 4
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.then.1047, %land.lhs.true.1039, %if.else.1022
  %633 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1052 = getelementptr inbounds %struct.win, %struct.win* %633, i32 0, i32 3
  %l_x1053 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1052, i32 0, i32 3
  store i32 1, i32* %l_x1053, align 4
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.end.1051, %if.end.1021
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.end.1054, %if.end.996
  %634 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs1056 = getelementptr inbounds %struct.win, %struct.win* %634, i32 0, i32 62
  %635 = load i32, i32* %w_mbcs1056, align 4
  %tobool1057 = icmp ne i32 %635, 0
  br i1 %tobool1057, label %if.then.1058, label %if.end.1065

if.then.1058:                                     ; preds = %if.end.1055
  %636 = load %struct.win*, %struct.win** @curr, align 8
  %w_mbcs1059 = getelementptr inbounds %struct.win, %struct.win* %636, i32 0, i32 62
  store i32 0, i32* %w_mbcs1059, align 4
  %637 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1060 = getelementptr inbounds %struct.win, %struct.win* %637, i32 0, i32 37
  %mbcs1061 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend1060, i32 0, i32 5
  store i8 0, i8* %mbcs1061, align 1
  %638 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1062 = getelementptr inbounds %struct.win, %struct.win* %638, i32 0, i32 3
  %l_x1063 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1062, i32 0, i32 3
  %639 = load i32, i32* %l_x1063, align 4
  %inc1064 = add nsw i32 %639, 1
  store i32 %inc1064, i32* %l_x1063, align 4
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1058, %if.end.1055
  %640 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss1066 = getelementptr inbounds %struct.win, %struct.win* %640, i32 0, i32 44
  %641 = load i32, i32* %w_ss1066, align 4
  %tobool1067 = icmp ne i32 %641, 0
  br i1 %tobool1067, label %if.then.1068, label %if.end.1084

if.then.1068:                                     ; preds = %if.end.1065
  %642 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %642, i32 0, i32 41
  %643 = load i32, i32* %w_Charset, align 4
  %idxprom1069 = sext i32 %643 to i64
  %644 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %644, i32 0, i32 43
  %arrayidx1070 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom1069
  %645 = load i32, i32* %arrayidx1070, align 4
  %conv1071 = trunc i32 %645 to i8
  %646 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL1072 = getelementptr inbounds %struct.win, %struct.win* %646, i32 0, i32 38
  store i8 %conv1071, i8* %w_FontL1072, align 1
  %647 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %647, i32 0, i32 42
  %648 = load i32, i32* %w_CharsetR, align 4
  %idxprom1073 = sext i32 %648 to i64
  %649 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets1074 = getelementptr inbounds %struct.win, %struct.win* %649, i32 0, i32 43
  %arrayidx1075 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets1074, i32 0, i64 %idxprom1073
  %650 = load i32, i32* %arrayidx1075, align 4
  %conv1076 = trunc i32 %650 to i8
  %651 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR1077 = getelementptr inbounds %struct.win, %struct.win* %651, i32 0, i32 39
  store i8 %conv1076, i8* %w_FontR1077, align 1
  %652 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL1078 = getelementptr inbounds %struct.win, %struct.win* %652, i32 0, i32 38
  %653 = load i8, i8* %w_FontL1078, align 1
  %654 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1079 = getelementptr inbounds %struct.win, %struct.win* %654, i32 0, i32 37
  %font1080 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend1079, i32 0, i32 2
  store i8 %653, i8* %font1080, align 1
  %655 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1081 = getelementptr inbounds %struct.win, %struct.win* %655, i32 0, i32 3
  %656 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1082 = getelementptr inbounds %struct.win, %struct.win* %656, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer1081, %struct.mchar* %w_rend1082)
  %657 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss1083 = getelementptr inbounds %struct.win, %struct.win* %657, i32 0, i32 44
  store i32 0, i32* %w_ss1083, align 4
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1068, %if.end.1065
  br label %sw.epilog.1085

sw.epilog.1085:                                   ; preds = %if.end.1084, %if.then.899, %if.then.851, %if.then.758, %do.end.718, %if.end.686, %sw.epilog.447, %if.end.411, %sw.epilog.372, %sw.epilog.290, %sw.epilog.242, %if.then.210, %if.then.193, %if.then.189, %sw.epilog.185, %sw.epilog.166, %sw.epilog.160, %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.1085, %if.then.137
  %658 = load i32, i32* %len.addr, align 4
  %dec1086 = add nsw i32 %658, -1
  store i32 %dec1086, i32* %len.addr, align 4
  %tobool1087 = icmp ne i32 %dec1086, 0
  br i1 %tobool1087, label %do.body.14, label %do.end.1088

do.end.1088:                                      ; preds = %do.cond, %if.then.127
  br label %if.end.1089

if.end.1089:                                      ; preds = %do.end.1088, %land.lhs.true, %if.end.10
  %659 = load i8*, i8** @printcmd, align 8
  %tobool1090 = icmp ne i8* %659, null
  br i1 %tobool1090, label %if.end.1096, label %land.lhs.true.1091

land.lhs.true.1091:                               ; preds = %if.end.1089
  %660 = load %struct.win*, %struct.win** @curr, align 8
  %w_state1092 = getelementptr inbounds %struct.win, %struct.win* %660, i32 0, i32 34
  %661 = load i32, i32* %w_state1092, align 4
  %cmp1093 = icmp eq i32 %661, 5
  br i1 %cmp1093, label %if.then.1095, label %if.end.1096

if.then.1095:                                     ; preds = %land.lhs.true.1091
  call void @PrintFlush()
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.then, %if.end.234, %if.then.1095, %land.lhs.true.1091, %if.end.1089
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WLogString(%struct.win* %p, i8* %buf, i32 %len) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %t = alloca i8*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 68
  %1 = load %struct.logfile*, %struct.logfile** %w_log, align 8
  %tobool = icmp ne %struct.logfile* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.22

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @logtstamp_on, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_logsilence = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 69
  %4 = load i32, i32* %w_logsilence, align 4
  %5 = load i32, i32* @logtstamp_after, align 4
  %mul = mul nsw i32 %5, 2
  %cmp = icmp sge i32 %4, %mul
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** @logtstamp_string, align 8
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %call = call i8* @MakeWinMsg(i8* %6, %struct.win* %7, i32 37)
  store i8* %call, i8** %t, align 8
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log3 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 68
  %9 = load %struct.logfile*, %struct.logfile** %w_log3, align 8
  %10 = load i8*, i8** %t, align 8
  %11 = load i8*, i8** %t, align 8
  %call4 = call i64 @strlen(i8* %11) #6
  %conv = trunc i64 %call4 to i32
  %call5 = call i32 @logfwrite(%struct.logfile* %9, i8* %10, i32 %conv)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_logsilence7 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 69
  store i32 0, i32* %w_logsilence7, align 4
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log8 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 68
  %14 = load %struct.logfile*, %struct.logfile** %w_log8, align 8
  %15 = load i8*, i8** %buf.addr, align 8
  %16 = load i32, i32* %len.addr, align 4
  %call9 = call i32 @logfwrite(%struct.logfile* %14, i8* %15, i32 %16)
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.6
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %call13 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call13, align 4
  call void @WMsg(%struct.win* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  %19 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log14 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 68
  %20 = load %struct.logfile*, %struct.logfile** %w_log14, align 8
  %call15 = call i32 @logfclose(%struct.logfile* %20)
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log16 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 68
  store %struct.logfile* null, %struct.logfile** %w_log16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.6
  %22 = load i32, i32* @log_flush, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_log20 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 68
  %24 = load %struct.logfile*, %struct.logfile** %w_log20, align 8
  %call21 = call i32 @logfflush(%struct.logfile* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then, %if.then.19, %if.end.17
  ret void
}

declare void @SetTimeout(%struct.event*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @MPutStr(%struct.win* %p, i8* %s, i32 %n, %struct.mchar* %r, i32 %x, i32 %y) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %r.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  %i = alloca i32, align 4
  %b = alloca i8*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.mchar* %r, %struct.mchar** %r.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.220

if.end:                                           ; preds = %entry
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  call void @MFixLine(%struct.win* %1, i32 %2, %struct.mchar* %3)
  %4 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 36
  %6 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %6, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %ml, align 8
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %8 = load i32, i32* %l_encoding, align 4
  %cmp1 = icmp eq i32 %8, 8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i32, i32* %x.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 2
  %11 = load i8*, i8** %font, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 255
  br i1 %cmp4, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %cond.true
  %13 = load i32, i32* %x.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %14, i32 0, i32 0
  %15 = load i8*, i8** %image, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %if.then.17, label %if.end.55

cond.false:                                       ; preds = %if.end
  %17 = load i32, i32* %x.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.mline*, %struct.mline** %ml, align 8
  %font12 = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 2
  %19 = load i8*, i8** %font12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom11
  %20 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %and = and i32 %conv14, 224
  %cmp15 = icmp eq i32 %and, 128
  br i1 %cmp15, label %if.then.17, label %if.end.55

if.then.17:                                       ; preds = %cond.false, %land.lhs.true
  %21 = load i32, i32* %x.addr, align 4
  %cmp18 = icmp sgt i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %22 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %23 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom21 = sext i32 %sub to i64
  %24 = load %struct.mline*, %struct.mline** %ml, align 8
  %image22 = getelementptr inbounds %struct.mline, %struct.mline* %24, i32 0, i32 0
  %25 = load i8*, i8** %image22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  store i8 %22, i8* %arrayidx23, align 1
  %26 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %27 = load i32, i32* %x.addr, align 4
  %sub24 = sub nsw i32 %27, 1
  %idxprom25 = sext i32 %sub24 to i64
  %28 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %28, i32 0, i32 1
  %29 = load i8*, i8** %attr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %idxprom25
  store i8 %26, i8* %arrayidx26, align 1
  %30 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %31 = load i32, i32* %x.addr, align 4
  %sub27 = sub nsw i32 %31, 1
  %idxprom28 = sext i32 %sub27 to i64
  %32 = load %struct.mline*, %struct.mline** %ml, align 8
  %font29 = getelementptr inbounds %struct.mline, %struct.mline* %32, i32 0, i32 2
  %33 = load i8*, i8** %font29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 %idxprom28
  store i8 %30, i8* %arrayidx30, align 1
  %34 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %35 = load i32, i32* %x.addr, align 4
  %sub31 = sub nsw i32 %35, 1
  %idxprom32 = sext i32 %sub31 to i64
  %36 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %36, i32 0, i32 3
  %37 = load i8*, i8** %fontx, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %37, i64 %idxprom32
  store i8 %34, i8* %arrayidx33, align 1
  %38 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %39 = load i32, i32* %x.addr, align 4
  %sub34 = sub nsw i32 %39, 1
  %idxprom35 = sext i32 %sub34 to i64
  %40 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %40, i32 0, i32 4
  %41 = load i8*, i8** %color, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %idxprom35
  store i8 %38, i8* %arrayidx36, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %if.then.17
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %42 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %43 = load i32, i32* %x.addr, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load %struct.mline*, %struct.mline** %ml, align 8
  %image40 = getelementptr inbounds %struct.mline, %struct.mline* %44, i32 0, i32 0
  %45 = load i8*, i8** %image40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %45, i64 %idxprom39
  store i8 %42, i8* %arrayidx41, align 1
  %46 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %47 = load i32, i32* %x.addr, align 4
  %idxprom42 = sext i32 %47 to i64
  %48 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr43 = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 1
  %49 = load i8*, i8** %attr43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %49, i64 %idxprom42
  store i8 %46, i8* %arrayidx44, align 1
  %50 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %51 = load i32, i32* %x.addr, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load %struct.mline*, %struct.mline** %ml, align 8
  %font46 = getelementptr inbounds %struct.mline, %struct.mline* %52, i32 0, i32 2
  %53 = load i8*, i8** %font46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %53, i64 %idxprom45
  store i8 %50, i8* %arrayidx47, align 1
  %54 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %55 = load i32, i32* %x.addr, align 4
  %idxprom48 = sext i32 %55 to i64
  %56 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx49 = getelementptr inbounds %struct.mline, %struct.mline* %56, i32 0, i32 3
  %57 = load i8*, i8** %fontx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %57, i64 %idxprom48
  store i8 %54, i8* %arrayidx50, align 1
  %58 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %59 = load i32, i32* %x.addr, align 4
  %idxprom51 = sext i32 %59 to i64
  %60 = load %struct.mline*, %struct.mline** %ml, align 8
  %color52 = getelementptr inbounds %struct.mline, %struct.mline* %60, i32 0, i32 4
  %61 = load i8*, i8** %color52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %61, i64 %idxprom51
  store i8 %58, i8* %arrayidx53, align 1
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.38
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %cond.false, %land.lhs.true, %cond.true
  %62 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer56 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 3
  %l_encoding57 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer56, i32 0, i32 5
  %63 = load i32, i32* %l_encoding57, align 4
  %cmp58 = icmp eq i32 %63, 8
  br i1 %cmp58, label %cond.true.60, label %cond.false.79

cond.true.60:                                     ; preds = %if.end.55
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %64, %65
  %sub61 = sub nsw i32 %add, 1
  %add62 = add nsw i32 %sub61, 1
  %idxprom63 = sext i32 %add62 to i64
  %66 = load %struct.mline*, %struct.mline** %ml, align 8
  %font64 = getelementptr inbounds %struct.mline, %struct.mline* %66, i32 0, i32 2
  %67 = load i8*, i8** %font64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %67, i64 %idxprom63
  %68 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %68 to i32
  %cmp67 = icmp eq i32 %conv66, 255
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.159

land.lhs.true.69:                                 ; preds = %cond.true.60
  %69 = load i32, i32* %x.addr, align 4
  %70 = load i32, i32* %n.addr, align 4
  %add70 = add nsw i32 %69, %70
  %sub71 = sub nsw i32 %add70, 1
  %add72 = add nsw i32 %sub71, 1
  %idxprom73 = sext i32 %add72 to i64
  %71 = load %struct.mline*, %struct.mline** %ml, align 8
  %image74 = getelementptr inbounds %struct.mline, %struct.mline* %71, i32 0, i32 0
  %72 = load i8*, i8** %image74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %72, i64 %idxprom73
  %73 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %73 to i32
  %cmp77 = icmp eq i32 %conv76, 255
  br i1 %cmp77, label %if.then.99, label %if.end.159

cond.false.79:                                    ; preds = %if.end.55
  %74 = load i32, i32* %x.addr, align 4
  %75 = load i32, i32* %n.addr, align 4
  %add80 = add nsw i32 %74, %75
  %sub81 = sub nsw i32 %add80, 1
  %idxprom82 = sext i32 %sub81 to i64
  %76 = load %struct.mline*, %struct.mline** %ml, align 8
  %font83 = getelementptr inbounds %struct.mline, %struct.mline* %76, i32 0, i32 2
  %77 = load i8*, i8** %font83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %77, i64 %idxprom82
  %78 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %78 to i32
  %and86 = and i32 %conv85, 31
  %cmp87 = icmp ne i32 %and86, 0
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.159

land.lhs.true.89:                                 ; preds = %cond.false.79
  %79 = load i32, i32* %x.addr, align 4
  %80 = load i32, i32* %n.addr, align 4
  %add90 = add nsw i32 %79, %80
  %sub91 = sub nsw i32 %add90, 1
  %idxprom92 = sext i32 %sub91 to i64
  %81 = load %struct.mline*, %struct.mline** %ml, align 8
  %font93 = getelementptr inbounds %struct.mline, %struct.mline* %81, i32 0, i32 2
  %82 = load i8*, i8** %font93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %82, i64 %idxprom92
  %83 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %83 to i32
  %and96 = and i32 %conv95, 224
  %cmp97 = icmp eq i32 %and96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.159

if.then.99:                                       ; preds = %land.lhs.true.89, %land.lhs.true.69
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %84 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %85 = load i32, i32* %x.addr, align 4
  %86 = load i32, i32* %n.addr, align 4
  %add101 = add nsw i32 %85, %86
  %sub102 = sub nsw i32 %add101, 1
  %idxprom103 = sext i32 %sub102 to i64
  %87 = load %struct.mline*, %struct.mline** %ml, align 8
  %image104 = getelementptr inbounds %struct.mline, %struct.mline* %87, i32 0, i32 0
  %88 = load i8*, i8** %image104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %88, i64 %idxprom103
  store i8 %84, i8* %arrayidx105, align 1
  %89 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %90 = load i32, i32* %x.addr, align 4
  %91 = load i32, i32* %n.addr, align 4
  %add106 = add nsw i32 %90, %91
  %sub107 = sub nsw i32 %add106, 1
  %idxprom108 = sext i32 %sub107 to i64
  %92 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr109 = getelementptr inbounds %struct.mline, %struct.mline* %92, i32 0, i32 1
  %93 = load i8*, i8** %attr109, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %93, i64 %idxprom108
  store i8 %89, i8* %arrayidx110, align 1
  %94 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %95 = load i32, i32* %x.addr, align 4
  %96 = load i32, i32* %n.addr, align 4
  %add111 = add nsw i32 %95, %96
  %sub112 = sub nsw i32 %add111, 1
  %idxprom113 = sext i32 %sub112 to i64
  %97 = load %struct.mline*, %struct.mline** %ml, align 8
  %font114 = getelementptr inbounds %struct.mline, %struct.mline* %97, i32 0, i32 2
  %98 = load i8*, i8** %font114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %98, i64 %idxprom113
  store i8 %94, i8* %arrayidx115, align 1
  %99 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %100 = load i32, i32* %x.addr, align 4
  %101 = load i32, i32* %n.addr, align 4
  %add116 = add nsw i32 %100, %101
  %sub117 = sub nsw i32 %add116, 1
  %idxprom118 = sext i32 %sub117 to i64
  %102 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx119 = getelementptr inbounds %struct.mline, %struct.mline* %102, i32 0, i32 3
  %103 = load i8*, i8** %fontx119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %103, i64 %idxprom118
  store i8 %99, i8* %arrayidx120, align 1
  %104 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %105 = load i32, i32* %x.addr, align 4
  %106 = load i32, i32* %n.addr, align 4
  %add121 = add nsw i32 %105, %106
  %sub122 = sub nsw i32 %add121, 1
  %idxprom123 = sext i32 %sub122 to i64
  %107 = load %struct.mline*, %struct.mline** %ml, align 8
  %color124 = getelementptr inbounds %struct.mline, %struct.mline* %107, i32 0, i32 4
  %108 = load i8*, i8** %color124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %108, i64 %idxprom123
  store i8 %104, i8* %arrayidx125, align 1
  br label %do.end.126

do.end.126:                                       ; preds = %do.body.100
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  %109 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %110 = load i32, i32* %x.addr, align 4
  %111 = load i32, i32* %n.addr, align 4
  %add128 = add nsw i32 %110, %111
  %sub129 = sub nsw i32 %add128, 1
  %add130 = add nsw i32 %sub129, 1
  %idxprom131 = sext i32 %add130 to i64
  %112 = load %struct.mline*, %struct.mline** %ml, align 8
  %image132 = getelementptr inbounds %struct.mline, %struct.mline* %112, i32 0, i32 0
  %113 = load i8*, i8** %image132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %113, i64 %idxprom131
  store i8 %109, i8* %arrayidx133, align 1
  %114 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %115 = load i32, i32* %x.addr, align 4
  %116 = load i32, i32* %n.addr, align 4
  %add134 = add nsw i32 %115, %116
  %sub135 = sub nsw i32 %add134, 1
  %add136 = add nsw i32 %sub135, 1
  %idxprom137 = sext i32 %add136 to i64
  %117 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr138 = getelementptr inbounds %struct.mline, %struct.mline* %117, i32 0, i32 1
  %118 = load i8*, i8** %attr138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %118, i64 %idxprom137
  store i8 %114, i8* %arrayidx139, align 1
  %119 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %120 = load i32, i32* %x.addr, align 4
  %121 = load i32, i32* %n.addr, align 4
  %add140 = add nsw i32 %120, %121
  %sub141 = sub nsw i32 %add140, 1
  %add142 = add nsw i32 %sub141, 1
  %idxprom143 = sext i32 %add142 to i64
  %122 = load %struct.mline*, %struct.mline** %ml, align 8
  %font144 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 2
  %123 = load i8*, i8** %font144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %123, i64 %idxprom143
  store i8 %119, i8* %arrayidx145, align 1
  %124 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %125 = load i32, i32* %x.addr, align 4
  %126 = load i32, i32* %n.addr, align 4
  %add146 = add nsw i32 %125, %126
  %sub147 = sub nsw i32 %add146, 1
  %add148 = add nsw i32 %sub147, 1
  %idxprom149 = sext i32 %add148 to i64
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx150 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 3
  %128 = load i8*, i8** %fontx150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %128, i64 %idxprom149
  store i8 %124, i8* %arrayidx151, align 1
  %129 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %130 = load i32, i32* %x.addr, align 4
  %131 = load i32, i32* %n.addr, align 4
  %add152 = add nsw i32 %130, %131
  %sub153 = sub nsw i32 %add152, 1
  %add154 = add nsw i32 %sub153, 1
  %idxprom155 = sext i32 %add154 to i64
  %132 = load %struct.mline*, %struct.mline** %ml, align 8
  %color156 = getelementptr inbounds %struct.mline, %struct.mline* %132, i32 0, i32 4
  %133 = load i8*, i8** %color156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %133, i64 %idxprom155
  store i8 %129, i8* %arrayidx157, align 1
  br label %do.end.158

do.end.158:                                       ; preds = %do.body.127
  br label %if.end.159

if.end.159:                                       ; preds = %do.end.158, %land.lhs.true.89, %cond.false.79, %land.lhs.true.69, %cond.true.60
  %134 = load i8*, i8** %s.addr, align 8
  %135 = load %struct.mline*, %struct.mline** %ml, align 8
  %image160 = getelementptr inbounds %struct.mline, %struct.mline* %135, i32 0, i32 0
  %136 = load i8*, i8** %image160, align 8
  %137 = load i32, i32* %x.addr, align 4
  %idx.ext = sext i32 %137 to i64
  %add.ptr = getelementptr inbounds i8, i8* %136, i64 %idx.ext
  %138 = load i32, i32* %n.addr, align 4
  %conv161 = sext i32 %138 to i64
  call void @bcopy(i8* %134, i8* %add.ptr, i64 %conv161) #1
  %139 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr162 = getelementptr inbounds %struct.mline, %struct.mline* %139, i32 0, i32 1
  %140 = load i8*, i8** %attr162, align 8
  %141 = load i8*, i8** @null, align 8
  %cmp163 = icmp ne i8* %140, %141
  br i1 %cmp163, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %if.end.159
  %142 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr166 = getelementptr inbounds %struct.mline, %struct.mline* %142, i32 0, i32 1
  %143 = load i8*, i8** %attr166, align 8
  %144 = load i32, i32* %x.addr, align 4
  %idx.ext167 = sext i32 %144 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %143, i64 %idx.ext167
  store i8* %add.ptr168, i8** %b, align 8
  %145 = load i32, i32* %n.addr, align 4
  store i32 %145, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.165
  %146 = load i32, i32* %i, align 4
  %dec = add nsw i32 %146, -1
  store i32 %dec, i32* %i, align 4
  %cmp169 = icmp sgt i32 %146, 0
  br i1 %cmp169, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %147 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %attr171 = getelementptr inbounds %struct.mchar, %struct.mchar* %147, i32 0, i32 1
  %148 = load i8, i8* %attr171, align 1
  %149 = load i8*, i8** %b, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr, i8** %b, align 8
  store i8 %148, i8* %149, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.172

if.end.172:                                       ; preds = %for.end, %if.end.159
  %150 = load %struct.mline*, %struct.mline** %ml, align 8
  %font173 = getelementptr inbounds %struct.mline, %struct.mline* %150, i32 0, i32 2
  %151 = load i8*, i8** %font173, align 8
  %152 = load i8*, i8** @null, align 8
  %cmp174 = icmp ne i8* %151, %152
  br i1 %cmp174, label %if.then.176, label %if.end.188

if.then.176:                                      ; preds = %if.end.172
  %153 = load %struct.mline*, %struct.mline** %ml, align 8
  %font177 = getelementptr inbounds %struct.mline, %struct.mline* %153, i32 0, i32 2
  %154 = load i8*, i8** %font177, align 8
  %155 = load i32, i32* %x.addr, align 4
  %idx.ext178 = sext i32 %155 to i64
  %add.ptr179 = getelementptr inbounds i8, i8* %154, i64 %idx.ext178
  store i8* %add.ptr179, i8** %b, align 8
  %156 = load i32, i32* %n.addr, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.body.184, %if.then.176
  %157 = load i32, i32* %i, align 4
  %dec181 = add nsw i32 %157, -1
  store i32 %dec181, i32* %i, align 4
  %cmp182 = icmp sgt i32 %157, 0
  br i1 %cmp182, label %for.body.184, label %for.end.187

for.body.184:                                     ; preds = %for.cond.180
  %158 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %font185 = getelementptr inbounds %struct.mchar, %struct.mchar* %158, i32 0, i32 2
  %159 = load i8, i8* %font185, align 1
  %160 = load i8*, i8** %b, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr186, i8** %b, align 8
  store i8 %159, i8* %160, align 1
  br label %for.cond.180

for.end.187:                                      ; preds = %for.cond.180
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %if.end.172
  %161 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx189 = getelementptr inbounds %struct.mline, %struct.mline* %161, i32 0, i32 3
  %162 = load i8*, i8** %fontx189, align 8
  %163 = load i8*, i8** @null, align 8
  %cmp190 = icmp ne i8* %162, %163
  br i1 %cmp190, label %if.then.192, label %if.end.204

if.then.192:                                      ; preds = %if.end.188
  %164 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx193 = getelementptr inbounds %struct.mline, %struct.mline* %164, i32 0, i32 3
  %165 = load i8*, i8** %fontx193, align 8
  %166 = load i32, i32* %x.addr, align 4
  %idx.ext194 = sext i32 %166 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %165, i64 %idx.ext194
  store i8* %add.ptr195, i8** %b, align 8
  %167 = load i32, i32* %n.addr, align 4
  store i32 %167, i32* %i, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.body.200, %if.then.192
  %168 = load i32, i32* %i, align 4
  %dec197 = add nsw i32 %168, -1
  store i32 %dec197, i32* %i, align 4
  %cmp198 = icmp sgt i32 %168, 0
  br i1 %cmp198, label %for.body.200, label %for.end.203

for.body.200:                                     ; preds = %for.cond.196
  %169 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %fontx201 = getelementptr inbounds %struct.mchar, %struct.mchar* %169, i32 0, i32 3
  %170 = load i8, i8* %fontx201, align 1
  %171 = load i8*, i8** %b, align 8
  %incdec.ptr202 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr202, i8** %b, align 8
  store i8 %170, i8* %171, align 1
  br label %for.cond.196

for.end.203:                                      ; preds = %for.cond.196
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %if.end.188
  %172 = load %struct.mline*, %struct.mline** %ml, align 8
  %color205 = getelementptr inbounds %struct.mline, %struct.mline* %172, i32 0, i32 4
  %173 = load i8*, i8** %color205, align 8
  %174 = load i8*, i8** @null, align 8
  %cmp206 = icmp ne i8* %173, %174
  br i1 %cmp206, label %if.then.208, label %if.end.220

if.then.208:                                      ; preds = %if.end.204
  %175 = load %struct.mline*, %struct.mline** %ml, align 8
  %color209 = getelementptr inbounds %struct.mline, %struct.mline* %175, i32 0, i32 4
  %176 = load i8*, i8** %color209, align 8
  %177 = load i32, i32* %x.addr, align 4
  %idx.ext210 = sext i32 %177 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %176, i64 %idx.ext210
  store i8* %add.ptr211, i8** %b, align 8
  %178 = load i32, i32* %n.addr, align 4
  store i32 %178, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.body.216, %if.then.208
  %179 = load i32, i32* %i, align 4
  %dec213 = add nsw i32 %179, -1
  store i32 %dec213, i32* %i, align 4
  %cmp214 = icmp sgt i32 %179, 0
  br i1 %cmp214, label %for.body.216, label %for.end.219

for.body.216:                                     ; preds = %for.cond.212
  %180 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %color217 = getelementptr inbounds %struct.mchar, %struct.mchar* %180, i32 0, i32 4
  %181 = load i8, i8* %color217, align 1
  %182 = load i8*, i8** %b, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr218, i8** %b, align 8
  store i8 %181, i8* %182, align 1
  br label %for.cond.212

for.end.219:                                      ; preds = %for.cond.212
  br label %if.end.220

if.end.220:                                       ; preds = %if.then, %for.end.219, %if.end.204
  ret void
}

declare void @LPutStr(%struct.layer*, i8*, i32, %struct.mchar*, i32, i32) #4

declare i32 @FromUtf8(i32, i32*) #4

; Function Attrs: nounwind uwtable
define internal void @PrintChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 64
  %1 = load i8*, i8** %w_stringp, align 8
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 768
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp = icmp uge i8* %1, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PrintFlush()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %3 to i8
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp2 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 64
  %5 = load i8*, i8** %w_stringp2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %w_stringp2, align 8
  store i8 %conv, i8* %5, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PrintFlush() #0 {
entry:
  %bp = alloca i8*, align 8
  %len = alloca i32, align 4
  %r = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 7
  %1 = load %struct.display*, %struct.display** %w_pdisplay, align 8
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** @printcmd, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i32 0
  store i8* %arraydecay, i8** %bp, align 8
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 64
  %6 = load i8*, i8** %w_stringp, align 8
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_string2 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 63
  %arraydecay3 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string2, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, i32* %len, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_printfd = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 98
  %10 = load i32, i32* %d_printfd, align 4
  %cmp = icmp sge i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_printfd6 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 98
  %13 = load i32, i32* %d_printfd6, align 4
  %14 = load i8*, i8** %bp, align 8
  %15 = load i32, i32* %len, align 4
  %conv7 = sext i32 %15 to i64
  %call = call i64 @write(i32 %13, i8* %14, i64 %conv7)
  %conv8 = trunc i64 %call to i32
  store i32 %conv8, i32* %r, align 4
  %16 = load i32, i32* %r, align 4
  %cmp9 = icmp sle i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %while.body
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %call12 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call12, align 4
  call void @WMsg(%struct.win* %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_printfd13 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 98
  %20 = load i32, i32* %d_printfd13, align 4
  %call14 = call i32 @close(i32 %20)
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_printfd15 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 98
  store i32 -1, i32* %d_printfd15, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %22 = load i32, i32* %r, align 4
  %23 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %24 = load i32, i32* %r, align 4
  %25 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %25, %24
  store i32 %sub, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %land.end
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %entry
  %26 = load %struct.display*, %struct.display** @display, align 8
  %tobool16 = icmp ne %struct.display* %26, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.36

land.lhs.true.17:                                 ; preds = %if.else
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp18 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 64
  %28 = load i8*, i8** %w_stringp18, align 8
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_string19 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 63
  %arraydecay20 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string19, i32 0, i32 0
  %cmp21 = icmp ugt i8* %28, %arraydecay20
  br i1 %cmp21, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %land.lhs.true.17
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 73
  %str = bitcast %union.tcu* %arrayidx to i8**
  %31 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %31)
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_string24 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 63
  %arraydecay25 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string24, i32 0, i32 0
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp26 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 64
  %34 = load i8*, i8** %w_stringp26, align 8
  %35 = load %struct.win*, %struct.win** @curr, align 8
  %w_string27 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 63
  %arraydecay28 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string27, i32 0, i32 0
  %sub.ptr.lhs.cast29 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %arraydecay28 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i32
  call void @AddStrn(i8* %arraydecay25, i32 %conv32)
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs33 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 83
  %arrayidx34 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs33, i32 0, i64 74
  %str35 = bitcast %union.tcu* %arrayidx34 to i8**
  %37 = load i8*, i8** %str35, align 8
  call void @AddCStr(i8* %37)
  call void @Flush(i32 3)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.23, %land.lhs.true.17, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %while.end
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %w_string38 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 63
  %arraydecay39 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string38, i32 0, i32 0
  %39 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp40 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 64
  store i8* %arraydecay39, i8** %w_stringp40, align 8
  ret void
}

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define internal void @StringChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 64
  %1 = load i8*, i8** %w_stringp, align 8
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 768
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp = icmp uge i8* %1, %add.ptr1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 34
  store i32 0, i32* %w_state, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp2 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 64
  %6 = load i8*, i8** %w_stringp2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %w_stringp2, align 8
  store i8 %conv, i8* %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @StringEnd() #0 {
entry:
  %retval = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %p = alloca i8*, align 8
  %typ = alloca i32, align 4
  %args = alloca [64 x i8*], align 16
  %argl = alloca [64 x i32], align 16
  %windowuser = alloca %struct.acluser*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %cv128 = alloca %struct.canvas*, align 8
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 34
  store i32 0, i32* %w_state, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 64
  %2 = load i8*, i8** %w_stringp, align 8
  store i8 0, i8* %2, align 1
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 35
  %4 = load i32, i32* %w_StringType, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.74
    i32 4, label %sw.bb.99
    i32 6, label %sw.bb.99
    i32 1, label %sw.bb.127
    i32 5, label %sw.bb.154
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 63
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 59
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_string2 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string2, i32 0, i32 0
  %call = call i8* @index(i8* %arraydecay, i32 59) #6
  store i8* %call, i8** %p, align 8
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.win*, %struct.win** @curr, align 8
  %w_string5 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 63
  %arraydecay6 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string5, i32 0, i32 0
  %call7 = call i32 @atoi(i8* %arraydecay6) #6
  store i32 %call7, i32* %typ, align 4
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %10 = load i32, i32* %typ, align 4
  %cmp8 = icmp eq i32 %10, 83
  br i1 %cmp8, label %if.then.10, label %if.end.44

if.then.10:                                       ; preds = %if.end
  %call11 = call %struct.acluser** @FindUserPtr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  %11 = load %struct.acluser*, %struct.acluser** %call11, align 8
  store %struct.acluser* %11, %struct.acluser** %windowuser, align 8
  %12 = load %struct.acluser*, %struct.acluser** %windowuser, align 8
  %tobool = icmp ne %struct.acluser* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.10
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_string12 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 63
  %arraydecay13 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string12, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 768, %sub.ptr.sub
  %conv14 = trunc i64 %sub to i32
  %arraydecay15 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  %call17 = call i32 @Parse(i8* %13, i32 %conv14, i8** %arraydecay15, i32* %arraydecay16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.43

if.then.19:                                       ; preds = %land.lhs.true
  %16 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %16, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %17 = load %struct.display*, %struct.display** @display, align 8
  %tobool20 = icmp ne %struct.display* %17, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 4
  %19 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 9
  %20 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 9
  %21 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 3
  %cmp21 = icmp eq %struct.layer* %21, %w_layer
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  br label %for.end

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 0
  %24 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %24, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %25 = load %struct.display*, %struct.display** @display, align 8
  %cmp25 = icmp eq %struct.display* %25, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %for.end
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer28 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer28, i32 0, i32 0
  %27 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool29 = icmp ne %struct.canvas* %27, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.27
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer31 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 3
  %l_cvlist32 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer31, i32 0, i32 0
  %29 = load %struct.canvas*, %struct.canvas** %l_cvlist32, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 1
  %30 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %30, %struct.display** @display, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %land.lhs.true.27, %for.end
  %31 = load %struct.display*, %struct.display** @display, align 8
  %cmp34 = icmp eq %struct.display* %31, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %32 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %32, %struct.display** @display, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %33 = load %struct.acluser*, %struct.acluser** %windowuser, align 8
  store %struct.acluser* %33, %struct.acluser** @EffectiveAclUser, align 8
  %34 = load %struct.win*, %struct.win** @curr, align 8
  store %struct.win* %34, %struct.win** @fore, align 8
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 4
  %36 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %tobool38 = icmp ne %struct.layer* %36, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %37 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer39 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 4
  %38 = load %struct.layer*, %struct.layer** %w_savelayer39, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %39 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer40 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.layer* [ %38, %cond.true ], [ %w_layer40, %cond.false ]
  store %struct.layer* %cond, %struct.layer** @flayer, align 8
  %arraydecay41 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  call void @DoCommand(i8** %arraydecay41, i32* %arraydecay42)
  store %struct.acluser* null, %struct.acluser** @EffectiveAclUser, align 8
  store %struct.win* null, %struct.win** @fore, align 8
  store %struct.layer* null, %struct.layer** @flayer, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end, %land.lhs.true, %if.then.10
  br label %sw.epilog

if.end.44:                                        ; preds = %if.end
  %40 = load i32, i32* %typ, align 4
  %cmp45 = icmp slt i32 %40, 0
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.44
  %41 = load i32, i32* %typ, align 4
  %cmp48 = icmp sgt i32 %41, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %if.end.44
  br label %sw.epilog

if.end.51:                                        ; preds = %lor.lhs.false.47
  %42 = load i8*, i8** %p, align 8
  %43 = load %struct.win*, %struct.win** @curr, align 8
  %w_string52 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 63
  %arraydecay53 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string52, i32 0, i32 0
  %sub.ptr.lhs.cast54 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %arraydecay53 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %44 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp57 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 64
  %45 = load i8*, i8** %w_stringp57, align 8
  %idx.neg = sub i64 0, %sub.ptr.sub56
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.neg
  store i8* %add.ptr, i8** %w_stringp57, align 8
  %46 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp58 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 64
  %47 = load i8*, i8** %w_stringp58, align 8
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %w_string59 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 63
  %arraydecay60 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string59, i32 0, i32 0
  %cmp61 = icmp ugt i8* %47, %arraydecay60
  br i1 %cmp61, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.end.51
  %49 = load i8*, i8** %p, align 8
  %50 = load %struct.win*, %struct.win** @curr, align 8
  %w_string64 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 63
  %arraydecay65 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string64, i32 0, i32 0
  %51 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp66 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 64
  %52 = load i8*, i8** %w_stringp66, align 8
  %53 = load %struct.win*, %struct.win** @curr, align 8
  %w_string67 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 63
  %arraydecay68 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string67, i32 0, i32 0
  %sub.ptr.lhs.cast69 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %arraydecay68 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  call void @bcopy(i8* %49, i8* %arraydecay65, i64 %sub.ptr.sub71) #1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.63, %if.end.51
  %54 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp73 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 64
  %55 = load i8*, i8** %w_stringp73, align 8
  store i8 0, i8* %55, align 1
  br label %sw.bb.74

sw.bb.74:                                         ; preds = %entry, %if.end.72
  %56 = load %struct.win*, %struct.win** @curr, align 8
  %w_hstatus = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 57
  %57 = load i8*, i8** %w_hstatus, align 8
  %tobool75 = icmp ne i8* %57, null
  br i1 %tobool75, label %if.then.76, label %if.end.87

if.then.76:                                       ; preds = %sw.bb.74
  %58 = load %struct.win*, %struct.win** @curr, align 8
  %w_hstatus77 = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 57
  %59 = load i8*, i8** %w_hstatus77, align 8
  %60 = load %struct.win*, %struct.win** @curr, align 8
  %w_string78 = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 63
  %arraydecay79 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string78, i32 0, i32 0
  %call80 = call i32 @strcmp(i8* %59, i8* %arraydecay79) #6
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.76
  br label %sw.epilog

if.end.84:                                        ; preds = %if.then.76
  %61 = load %struct.win*, %struct.win** @curr, align 8
  %w_hstatus85 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 57
  %62 = load i8*, i8** %w_hstatus85, align 8
  call void @free(i8* %62) #1
  %63 = load %struct.win*, %struct.win** @curr, align 8
  %w_hstatus86 = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 57
  store i8* null, i8** %w_hstatus86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.84, %sw.bb.74
  %64 = load %struct.win*, %struct.win** @curr, align 8
  %w_string88 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 63
  %arraydecay89 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string88, i32 0, i32 0
  %65 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp90 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 64
  %66 = load i8*, i8** %w_stringp90, align 8
  %cmp91 = icmp ne i8* %arraydecay89, %66
  br i1 %cmp91, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %if.end.87
  %67 = load %struct.win*, %struct.win** @curr, align 8
  %w_string94 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 63
  %arraydecay95 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string94, i32 0, i32 0
  %call96 = call i8* @SaveStr(i8* %arraydecay95)
  %68 = load %struct.win*, %struct.win** @curr, align 8
  %w_hstatus97 = getelementptr inbounds %struct.win, %struct.win* %68, i32 0, i32 57
  store i8* %call96, i8** %w_hstatus97, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %if.end.87
  %69 = load %struct.win*, %struct.win** @curr, align 8
  call void @WindowChanged(%struct.win* %69, i32 104)
  br label %sw.epilog

sw.bb.99:                                         ; preds = %entry, %entry
  %70 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %70, %struct.display** @display, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.124, %sw.bb.99
  %71 = load %struct.display*, %struct.display** @display, align 8
  %tobool101 = icmp ne %struct.display* %71, null
  br i1 %tobool101, label %for.body.102, label %for.end.126

for.body.102:                                     ; preds = %for.cond.100
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 3
  %73 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %73, %struct.canvas** %cv, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.113, %for.body.102
  %74 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool104 = icmp ne %struct.canvas* %74, null
  br i1 %tobool104, label %for.body.105, label %for.end.114

for.body.105:                                     ; preds = %for.cond.103
  %75 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer106 = getelementptr inbounds %struct.canvas, %struct.canvas* %75, i32 0, i32 9
  %76 = load %struct.layer*, %struct.layer** %c_layer106, align 8
  %l_bottom107 = getelementptr inbounds %struct.layer, %struct.layer* %76, i32 0, i32 9
  %77 = load %struct.layer*, %struct.layer** %l_bottom107, align 8
  %78 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer108 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 3
  %cmp109 = icmp eq %struct.layer* %77, %w_layer108
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.body.105
  br label %for.end.114

if.end.112:                                       ; preds = %for.body.105
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %79 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 0
  %80 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %80, %struct.canvas** %cv, align 8
  br label %for.cond.103

for.end.114:                                      ; preds = %if.then.111, %for.cond.103
  %81 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool115 = icmp ne %struct.canvas* %81, null
  br i1 %tobool115, label %if.then.120, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %for.end.114
  %82 = load %struct.win*, %struct.win** @curr, align 8
  %w_StringType117 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 35
  %83 = load i32, i32* %w_StringType117, align 4
  %cmp118 = icmp eq i32 %83, 6
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %lor.lhs.false.116, %for.end.114
  %84 = load %struct.win*, %struct.win** @curr, align 8
  %w_string121 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 63
  %arraydecay122 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string121, i32 0, i32 0
  call void @MakeStatus(i8* %arraydecay122)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %lor.lhs.false.116
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_next125 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 0
  %86 = load %struct.display*, %struct.display** %d_next125, align 8
  store %struct.display* %86, %struct.display** @display, align 8
  br label %for.cond.100

for.end.126:                                      ; preds = %for.cond.100
  store i32 -1, i32* %retval
  br label %return

sw.bb.127:                                        ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.127
  %87 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %87, %struct.display** %olddisplay, align 8
  %88 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %88, %struct.display** @display, align 8
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.151, %do.body
  %89 = load %struct.display*, %struct.display** @display, align 8
  %tobool130 = icmp ne %struct.display* %89, null
  br i1 %tobool130, label %for.body.131, label %for.end.153

for.body.131:                                     ; preds = %for.cond.129
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist132 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 3
  %91 = load %struct.canvas*, %struct.canvas** %d_cvlist132, align 8
  store %struct.canvas* %91, %struct.canvas** %cv128, align 8
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.142, %for.body.131
  %92 = load %struct.canvas*, %struct.canvas** %cv128, align 8
  %tobool134 = icmp ne %struct.canvas* %92, null
  br i1 %tobool134, label %for.body.135, label %for.end.144

for.body.135:                                     ; preds = %for.cond.133
  %93 = load %struct.canvas*, %struct.canvas** %cv128, align 8
  %c_layer136 = getelementptr inbounds %struct.canvas, %struct.canvas* %93, i32 0, i32 9
  %94 = load %struct.layer*, %struct.layer** %c_layer136, align 8
  %95 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer137 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 3
  %cmp138 = icmp eq %struct.layer* %94, %w_layer137
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %for.body.135
  br label %for.end.144

if.end.141:                                       ; preds = %for.body.135
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %96 = load %struct.canvas*, %struct.canvas** %cv128, align 8
  %c_next143 = getelementptr inbounds %struct.canvas, %struct.canvas* %96, i32 0, i32 0
  %97 = load %struct.canvas*, %struct.canvas** %c_next143, align 8
  store %struct.canvas* %97, %struct.canvas** %cv128, align 8
  br label %for.cond.133

for.end.144:                                      ; preds = %if.then.140, %for.cond.133
  %98 = load %struct.canvas*, %struct.canvas** %cv128, align 8
  %cmp145 = icmp eq %struct.canvas* %98, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.end.144
  br label %for.inc.151

if.end.148:                                       ; preds = %for.end.144
  %99 = load %struct.win*, %struct.win** @curr, align 8
  %w_string149 = getelementptr inbounds %struct.win, %struct.win* %99, i32 0, i32 63
  %arraydecay150 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string149, i32 0, i32 0
  call void @AddStr(i8* %arraydecay150)
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.148, %if.then.147
  %100 = load %struct.display*, %struct.display** @display, align 8
  %d_next152 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 0
  %101 = load %struct.display*, %struct.display** %d_next152, align 8
  store %struct.display* %101, %struct.display** @display, align 8
  br label %for.cond.129

for.end.153:                                      ; preds = %for.cond.129
  %102 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %102, %struct.display** @display, align 8
  br label %do.end

do.end:                                           ; preds = %for.end.153
  br label %sw.epilog

sw.bb.154:                                        ; preds = %entry
  %103 = load %struct.win*, %struct.win** @curr, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %103, i32 0, i32 21
  %104 = load i8*, i8** %w_title, align 8
  %105 = load %struct.win*, %struct.win** @curr, align 8
  %w_akabuf = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 23
  %arraydecay155 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf, i32 0, i32 0
  %cmp156 = icmp eq i8* %104, %arraydecay155
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.163

land.lhs.true.158:                                ; preds = %sw.bb.154
  %106 = load %struct.win*, %struct.win** @curr, align 8
  %w_string159 = getelementptr inbounds %struct.win, %struct.win* %106, i32 0, i32 63
  %arraydecay160 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string159, i32 0, i32 0
  %107 = load i8, i8* %arraydecay160, align 1
  %tobool161 = icmp ne i8 %107, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.158
  br label %sw.epilog

if.end.163:                                       ; preds = %land.lhs.true.158, %sw.bb.154
  %108 = load %struct.win*, %struct.win** @curr, align 8
  %109 = load %struct.win*, %struct.win** @curr, align 8
  %w_string164 = getelementptr inbounds %struct.win, %struct.win* %109, i32 0, i32 63
  %arraydecay165 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string164, i32 0, i32 0
  %110 = load %struct.win*, %struct.win** @curr, align 8
  %w_string166 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 63
  %arraydecay167 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string166, i32 0, i32 0
  %call168 = call i64 @strlen(i8* %arraydecay167) #6
  %conv169 = trunc i64 %call168 to i32
  call void @ChangeAKA(%struct.win* %108, i8* %arraydecay165, i32 %conv169)
  %111 = load %struct.win*, %struct.win** @curr, align 8
  %w_string170 = getelementptr inbounds %struct.win, %struct.win* %111, i32 0, i32 63
  %arraydecay171 = getelementptr inbounds [768 x i8], [768 x i8]* %w_string170, i32 0, i32 0
  %112 = load i8, i8* %arraydecay171, align 1
  %tobool172 = icmp ne i8 %112, 0
  br i1 %tobool172, label %if.end.175, label %if.then.173

if.then.173:                                      ; preds = %if.end.163
  %113 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer174 = getelementptr inbounds %struct.win, %struct.win* %113, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer174, i32 0, i32 4
  %114 = load i32, i32* %l_y, align 4
  %add = add nsw i32 %114, 1
  %115 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 24
  store i32 %add, i32* %w_autoaka, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %if.end.163
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.175, %if.then.162, %do.end, %if.end.98, %if.then.83, %if.then.50, %if.end.43, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %for.end.126
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @StringStart(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_StringType = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 35
  store i32 %0, i32* %w_StringType, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i32 0
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 64
  store i8* %arraydecay, i8** %w_stringp, align 8
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 34
  store i32 2, i32* %w_state, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Special(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 8, label %sw.bb
    i32 13, label %sw.bb.1
    i32 10, label %sw.bb.2
    i32 11, label %sw.bb.3
    i32 7, label %sw.bb.4
    i32 9, label %sw.bb.5
    i32 15, label %sw.bb.6
    i32 14, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  call void @BackSpace()
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  call void @Return()
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 24
  %2 = load i32, i32* %w_autoaka, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  call void @FindAKA()
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %if.end
  call void @LineFeed(i32 0)
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %4 = load i32, i32* @visual_bell, align 4
  call void @WBell(%struct.win* %3, i32 %4)
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  call void @ForwardTab()
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  call void @MapCharset(i32 0)
  store i32 1, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  call void @MapCharset(i32 1)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @DoESC(i32 %c, i32 %intermediate) #0 {
entry:
  %c.addr = alloca i32, align 4
  %intermediate.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %intermediate, i32* %intermediate.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %intermediate.addr, align 4
  switch i32 %0, label %sw.epilog.83 [
    i32 0, label %sw.bb
    i32 35, label %sw.bb.69
    i32 40, label %sw.bb.72
    i32 41, label %sw.bb.73
    i32 42, label %sw.bb.74
    i32 43, label %sw.bb.75
    i32 36, label %sw.bb.76
    i32 9256, label %sw.bb.76
    i32 9257, label %sw.bb.77
    i32 9258, label %sw.bb.79
    i32 9259, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %do.end
  %1 = load i32, i32* %c.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 69, label %sw.bb.1
    i32 68, label %sw.bb.2
    i32 77, label %sw.bb.3
    i32 72, label %sw.bb.4
    i32 90, label %sw.bb.5
    i32 55, label %sw.bb.6
    i32 56, label %sw.bb.7
    i32 99, label %sw.bb.9
    i32 61, label %sw.bb.16
    i32 62, label %sw.bb.18
    i32 110, label %sw.bb.21
    i32 111, label %sw.bb.22
    i32 126, label %sw.bb.23
    i32 125, label %sw.bb.24
    i32 124, label %sw.bb.25
    i32 78, label %sw.bb.26
    i32 79, label %sw.bb.40
    i32 103, label %sw.bb.68
  ]

sw.bb.1:                                          ; preds = %sw.bb
  call void @LineFeed(i32 1)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %sw.bb
  call void @LineFeed(i32 0)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %sw.bb
  call void @ReverseLineFeed()
  br label %sw.epilog

sw.bb.4:                                          ; preds = %sw.bb
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %3 = load i32, i32* %l_x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 65
  %5 = load i8*, i8** %w_tabs, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %sw.bb
  call void @Report(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 2)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 45
  call void @SaveCursor(%struct.cursor* %w_saved)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %sw.bb
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved8 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 45
  call void @RestoreCursor(%struct.cursor* %w_saved8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %sw.bb
  call void @ClearScreen()
  %8 = load %struct.win*, %struct.win** @curr, align 8
  call void @ResetWindow(%struct.win* %8)
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer10 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  call void @LKeypadMode(%struct.layer* %w_layer10, i32 0)
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  call void @LCursorkeysMode(%struct.layer* %w_layer11, i32 0)
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_x14 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer13, i32 0, i32 3
  %13 = load i32, i32* %l_x14, align 4
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 4
  %15 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer12, i32 %13, i32 %15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %sw.bb
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer17 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_keypad = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 51
  store i32 1, i32* %w_keypad, align 4
  call void @LKeypadMode(%struct.layer* %w_layer17, i32 1)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %sw.bb
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer19 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_keypad20 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 51
  store i32 0, i32* %w_keypad20, align 4
  call void @LKeypadMode(%struct.layer* %w_layer19, i32 0)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %sw.bb
  call void @MapCharset(i32 2)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %sw.bb
  call void @MapCharset(i32 3)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %sw.bb
  call void @MapCharsetR(i32 1)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %sw.bb
  call void @MapCharsetR(i32 2)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %sw.bb
  call void @MapCharsetR(i32 3)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %sw.bb
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 41
  %21 = load i32, i32* %w_Charset, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 43
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom27
  %23 = load i32, i32* %arrayidx28, align 4
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets29 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 43
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets29, i32 0, i64 2
  %25 = load i32, i32* %arrayidx30, align 4
  %cmp = icmp ne i32 %23, %25
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.26
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 42
  %27 = load i32, i32* %w_CharsetR, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets32 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 43
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets32, i32 0, i64 %idxprom31
  %29 = load i32, i32* %arrayidx33, align 4
  %30 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets34 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 43
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets34, i32 0, i64 2
  %31 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp ne i32 %29, %31
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.26
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 44
  store i32 2, i32* %w_ss, align 4
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets37 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 43
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets37, i32 0, i64 2
  %34 = load i32, i32* %arrayidx38, align 4
  %conv = trunc i32 %34 to i8
  %35 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 38
  store i8 %conv, i8* %w_FontL, align 1
  %36 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 39
  store i8 %conv, i8* %w_FontR, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss39 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 44
  store i32 0, i32* %w_ss39, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.40:                                         ; preds = %sw.bb
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset41 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 41
  %39 = load i32, i32* %w_Charset41, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets43 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 43
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets43, i32 0, i64 %idxprom42
  %41 = load i32, i32* %arrayidx44, align 4
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets45 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 43
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets45, i32 0, i64 3
  %43 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp ne i32 %41, %43
  br i1 %cmp47, label %if.then.58, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %sw.bb.40
  %44 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR50 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 42
  %45 = load i32, i32* %w_CharsetR50, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets52 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 43
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets52, i32 0, i64 %idxprom51
  %47 = load i32, i32* %arrayidx53, align 4
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets54 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 43
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets54, i32 0, i64 3
  %49 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp ne i32 %47, %49
  br i1 %cmp56, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %lor.lhs.false.49, %sw.bb.40
  %50 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss59 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 44
  store i32 3, i32* %w_ss59, align 4
  %51 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets60 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 43
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets60, i32 0, i64 3
  %52 = load i32, i32* %arrayidx61, align 4
  %conv62 = trunc i32 %52 to i8
  %53 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL63 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 38
  store i8 %conv62, i8* %w_FontL63, align 1
  %54 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR64 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 39
  store i8 %conv62, i8* %w_FontR64, align 1
  br label %if.end.67

if.else.65:                                       ; preds = %lor.lhs.false.49
  %55 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss66 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 44
  store i32 0, i32* %w_ss66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.58
  br label %sw.epilog

sw.bb.68:                                         ; preds = %sw.bb
  %56 = load %struct.win*, %struct.win** @curr, align 8
  call void @WBell(%struct.win* %56, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.68, %if.end.67, %if.end, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.18, %sw.bb.16, %sw.bb.9, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1
  br label %sw.epilog.83

sw.bb.69:                                         ; preds = %do.end
  %57 = load i32, i32* %c.addr, align 4
  switch i32 %57, label %sw.epilog.71 [
    i32 56, label %sw.bb.70
  ]

sw.bb.70:                                         ; preds = %sw.bb.69
  call void @FillWithEs()
  br label %sw.epilog.71

sw.epilog.71:                                     ; preds = %sw.bb.69, %sw.bb.70
  br label %sw.epilog.83

sw.bb.72:                                         ; preds = %do.end
  %58 = load i32, i32* %c.addr, align 4
  call void @DesignateCharset(i32 %58, i32 0)
  br label %sw.epilog.83

sw.bb.73:                                         ; preds = %do.end
  %59 = load i32, i32* %c.addr, align 4
  call void @DesignateCharset(i32 %59, i32 1)
  br label %sw.epilog.83

sw.bb.74:                                         ; preds = %do.end
  %60 = load i32, i32* %c.addr, align 4
  call void @DesignateCharset(i32 %60, i32 2)
  br label %sw.epilog.83

sw.bb.75:                                         ; preds = %do.end
  %61 = load i32, i32* %c.addr, align 4
  call void @DesignateCharset(i32 %61, i32 3)
  br label %sw.epilog.83

sw.bb.76:                                         ; preds = %do.end, %do.end
  %62 = load i32, i32* %c.addr, align 4
  %and = and i32 %62, 31
  call void @DesignateCharset(i32 %and, i32 0)
  br label %sw.epilog.83

sw.bb.77:                                         ; preds = %do.end
  %63 = load i32, i32* %c.addr, align 4
  %and78 = and i32 %63, 31
  call void @DesignateCharset(i32 %and78, i32 1)
  br label %sw.epilog.83

sw.bb.79:                                         ; preds = %do.end
  %64 = load i32, i32* %c.addr, align 4
  %and80 = and i32 %64, 31
  call void @DesignateCharset(i32 %and80, i32 2)
  br label %sw.epilog.83

sw.bb.81:                                         ; preds = %do.end
  %65 = load i32, i32* %c.addr, align 4
  %and82 = and i32 %65, 31
  call void @DesignateCharset(i32 %and82, i32 3)
  br label %sw.epilog.83

sw.epilog.83:                                     ; preds = %do.end, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb.76, %sw.bb.75, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.epilog.71, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DoCSI(i32 %c, i32 %intermediate) #0 {
entry:
  %c.addr = alloca i32, align 4
  %intermediate.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %intermediate, i32* %intermediate.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_args = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 27
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %w_args, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %a1, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_args1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 27
  %arrayidx2 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %a2, align 4
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 28
  %5 = load i32, i32* %w_NumArgs, align 4
  %cmp = icmp sgt i32 %5, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 28
  store i32 64, i32* %w_NumArgs3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %intermediate.addr, align 4
  switch i32 %7, label %sw.epilog.525 [
    i32 0, label %sw.bb
    i32 63, label %sw.bb.376
    i32 62, label %sw.bb.518
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  switch i32 %8, label %sw.epilog.375 [
    i32 72, label %sw.bb.4
    i32 102, label %sw.bb.4
    i32 74, label %sw.bb.27
    i32 75, label %sw.bb.40
    i32 88, label %sw.bb.55
    i32 65, label %sw.bb.69
    i32 66, label %sw.bb.75
    i32 67, label %sw.bb.81
    i32 68, label %sw.bb.87
    i32 69, label %sw.bb.93
    i32 70, label %sw.bb.101
    i32 71, label %sw.bb.109
    i32 96, label %sw.bb.109
    i32 100, label %sw.bb.131
    i32 109, label %sw.bb.153
    i32 103, label %sw.bb.154
    i32 114, label %sw.bb.165
    i32 115, label %sw.bb.204
    i32 116, label %sw.bb.205
    i32 117, label %sw.bb.268
    i32 73, label %sw.bb.270
    i32 90, label %sw.bb.276
    i32 76, label %sw.bb.285
    i32 77, label %sw.bb.291
    i32 80, label %sw.bb.297
    i32 64, label %sw.bb.303
    i32 104, label %sw.bb.309
    i32 108, label %sw.bb.310
    i32 105, label %sw.bb.311
    i32 110, label %sw.bb.316
    i32 99, label %sw.bb.332
    i32 120, label %sw.bb.337
    i32 112, label %sw.bb.346
    i32 83, label %sw.bb.362
    i32 84, label %sw.bb.368
    i32 94, label %sw.bb.368
  ]

sw.bb.4:                                          ; preds = %sw.bb, %sw.bb
  %9 = load i32, i32* %a1, align 4
  %cmp5 = icmp slt i32 %9, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.4
  store i32 1, i32* %a1, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %sw.bb.4
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_origin = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 49
  %11 = load i32, i32* %w_origin, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 46
  %13 = load i32, i32* %w_top, align 4
  %14 = load i32, i32* %a1, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %a1, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  %15 = load i32, i32* %a1, align 4
  %16 = load i32, i32* @rows, align 4
  %cmp10 = icmp sgt i32 %15, %16
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %17 = load i32, i32* @rows, align 4
  store i32 %17, i32* %a1, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %18 = load i32, i32* %a2, align 4
  %cmp13 = icmp slt i32 %18, 1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i32 1, i32* %a2, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %19 = load i32, i32* %a2, align 4
  %20 = load i32, i32* @cols, align 4
  %cmp16 = icmp sgt i32 %19, %20
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %21 = load i32, i32* @cols, align 4
  store i32 %21, i32* %a2, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 3
  %23 = load i32, i32* %a2, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %a2, align 4
  %24 = load i32, i32* %a1, align 4
  %dec19 = add nsw i32 %24, -1
  store i32 %dec19, i32* %a1, align 4
  call void @LGotoPos(%struct.layer* %w_layer, i32 %dec, i32 %dec19)
  %25 = load i32, i32* %a2, align 4
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer20 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer20, i32 0, i32 3
  store i32 %25, i32* %l_x, align 4
  %27 = load i32, i32* %a1, align 4
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer21 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer21, i32 0, i32 4
  store i32 %27, i32* %l_y, align 4
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 24
  %30 = load i32, i32* %w_autoaka, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.18
  %31 = load i32, i32* %a1, align 4
  %add24 = add nsw i32 %31, 1
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka25 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 24
  store i32 %add24, i32* %w_autoaka25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.18
  br label %sw.epilog.375

sw.bb.27:                                         ; preds = %sw.bb
  %33 = load i32, i32* %a1, align 4
  %cmp28 = icmp slt i32 %33, 0
  br i1 %cmp28, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.27
  %34 = load i32, i32* %a1, align 4
  %cmp29 = icmp sgt i32 %34, 2
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %sw.bb.27
  store i32 0, i32* %a1, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %lor.lhs.false
  %35 = load i32, i32* %a1, align 4
  switch i32 %35, label %sw.epilog [
    i32 0, label %sw.bb.32
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.34
  ]

sw.bb.32:                                         ; preds = %if.end.31
  call void @ClearToEOS()
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.31
  call void @ClearFromBOS()
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.31
  call void @ClearScreen()
  %36 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer35 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 3
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer36 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 3
  %l_x37 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer36, i32 0, i32 3
  %38 = load i32, i32* %l_x37, align 4
  %39 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer38 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 3
  %l_y39 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer38, i32 0, i32 4
  %40 = load i32, i32* %l_y39, align 4
  call void @LGotoPos(%struct.layer* %w_layer35, i32 %38, i32 %40)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.31, %sw.bb.34, %sw.bb.33, %sw.bb.32
  br label %sw.epilog.375

sw.bb.40:                                         ; preds = %sw.bb
  %41 = load i32, i32* %a1, align 4
  %cmp41 = icmp slt i32 %41, 0
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %sw.bb.40
  %42 = load i32, i32* %a1, align 4
  %cmp43 = icmp sgt i32 %42, 2
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %sw.bb.40
  %43 = load i32, i32* %a1, align 4
  %rem = srem i32 %43, 3
  store i32 %rem, i32* %a1, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.42
  %44 = load i32, i32* %a1, align 4
  switch i32 %44, label %sw.epilog.54 [
    i32 0, label %sw.bb.46
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.52
  ]

sw.bb.46:                                         ; preds = %if.end.45
  %45 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer47 = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 3
  %l_x48 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer47, i32 0, i32 3
  %46 = load i32, i32* %l_x48, align 4
  %47 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %47, 1
  call void @ClearLineRegion(i32 %46, i32 %sub)
  br label %sw.epilog.54

sw.bb.49:                                         ; preds = %if.end.45
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer50 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 3
  %l_x51 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer50, i32 0, i32 3
  %49 = load i32, i32* %l_x51, align 4
  call void @ClearLineRegion(i32 0, i32 %49)
  br label %sw.epilog.54

sw.bb.52:                                         ; preds = %if.end.45
  %50 = load i32, i32* @cols, align 4
  %sub53 = sub nsw i32 %50, 1
  call void @ClearLineRegion(i32 0, i32 %sub53)
  br label %sw.epilog.54

sw.epilog.54:                                     ; preds = %if.end.45, %sw.bb.52, %sw.bb.49, %sw.bb.46
  br label %sw.epilog.375

sw.bb.55:                                         ; preds = %sw.bb
  %51 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer56 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 3
  %l_x57 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer56, i32 0, i32 3
  %52 = load i32, i32* %l_x57, align 4
  %53 = load i32, i32* %a1, align 4
  %tobool58 = icmp ne i32 %53, 0
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.55
  %54 = load i32, i32* %a1, align 4
  %sub59 = sub nsw i32 %54, 1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub59, %cond.true ], [ 0, %cond.false ]
  %add60 = add nsw i32 %52, %cond
  store i32 %add60, i32* %a1, align 4
  %55 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer61 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 3
  %l_x62 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer61, i32 0, i32 3
  %56 = load i32, i32* %l_x62, align 4
  %57 = load i32, i32* %a1, align 4
  %58 = load i32, i32* @cols, align 4
  %cmp63 = icmp slt i32 %57, %58
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end
  %59 = load i32, i32* %a1, align 4
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.end
  %60 = load i32, i32* @cols, align 4
  %sub66 = sub nsw i32 %60, 1
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.64
  %cond68 = phi i32 [ %59, %cond.true.64 ], [ %sub66, %cond.false.65 ]
  call void @ClearLineRegion(i32 %56, i32 %cond68)
  br label %sw.epilog.375

sw.bb.69:                                         ; preds = %sw.bb
  %61 = load i32, i32* %a1, align 4
  %tobool70 = icmp ne i32 %61, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %sw.bb.69
  %62 = load i32, i32* %a1, align 4
  br label %cond.end.73

cond.false.72:                                    ; preds = %sw.bb.69
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi i32 [ %62, %cond.true.71 ], [ 1, %cond.false.72 ]
  call void @CursorUp(i32 %cond74)
  br label %sw.epilog.375

sw.bb.75:                                         ; preds = %sw.bb
  %63 = load i32, i32* %a1, align 4
  %tobool76 = icmp ne i32 %63, 0
  br i1 %tobool76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %sw.bb.75
  %64 = load i32, i32* %a1, align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %sw.bb.75
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %64, %cond.true.77 ], [ 1, %cond.false.78 ]
  call void @CursorDown(i32 %cond80)
  br label %sw.epilog.375

sw.bb.81:                                         ; preds = %sw.bb
  %65 = load i32, i32* %a1, align 4
  %tobool82 = icmp ne i32 %65, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %sw.bb.81
  %66 = load i32, i32* %a1, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %sw.bb.81
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %66, %cond.true.83 ], [ 1, %cond.false.84 ]
  call void @CursorRight(i32 %cond86)
  br label %sw.epilog.375

sw.bb.87:                                         ; preds = %sw.bb
  %67 = load i32, i32* %a1, align 4
  %tobool88 = icmp ne i32 %67, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %sw.bb.87
  %68 = load i32, i32* %a1, align 4
  br label %cond.end.91

cond.false.90:                                    ; preds = %sw.bb.87
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ %68, %cond.true.89 ], [ 1, %cond.false.90 ]
  call void @CursorLeft(i32 %cond92)
  br label %sw.epilog.375

sw.bb.93:                                         ; preds = %sw.bb
  %69 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer94 = getelementptr inbounds %struct.win, %struct.win* %69, i32 0, i32 3
  %l_x95 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer94, i32 0, i32 3
  store i32 0, i32* %l_x95, align 4
  %70 = load i32, i32* %a1, align 4
  %tobool96 = icmp ne i32 %70, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %sw.bb.93
  %71 = load i32, i32* %a1, align 4
  br label %cond.end.99

cond.false.98:                                    ; preds = %sw.bb.93
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.97
  %cond100 = phi i32 [ %71, %cond.true.97 ], [ 1, %cond.false.98 ]
  call void @CursorDown(i32 %cond100)
  br label %sw.epilog.375

sw.bb.101:                                        ; preds = %sw.bb
  %72 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer102 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  %l_x103 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer102, i32 0, i32 3
  store i32 0, i32* %l_x103, align 4
  %73 = load i32, i32* %a1, align 4
  %tobool104 = icmp ne i32 %73, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %sw.bb.101
  %74 = load i32, i32* %a1, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %sw.bb.101
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi i32 [ %74, %cond.true.105 ], [ 1, %cond.false.106 ]
  call void @CursorUp(i32 %cond108)
  br label %sw.epilog.375

sw.bb.109:                                        ; preds = %sw.bb, %sw.bb
  %75 = load i32, i32* %a1, align 4
  %tobool110 = icmp ne i32 %75, 0
  br i1 %tobool110, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %sw.bb.109
  %76 = load i32, i32* %a1, align 4
  %sub112 = sub nsw i32 %76, 1
  br label %cond.end.114

cond.false.113:                                   ; preds = %sw.bb.109
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi i32 [ %sub112, %cond.true.111 ], [ 0, %cond.false.113 ]
  %77 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer116 = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 3
  %l_x117 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer116, i32 0, i32 3
  store i32 %cond115, i32* %l_x117, align 4
  %78 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer118 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 3
  %l_x119 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer118, i32 0, i32 3
  %79 = load i32, i32* %l_x119, align 4
  %80 = load i32, i32* @cols, align 4
  %cmp120 = icmp sge i32 %79, %80
  br i1 %cmp120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %cond.end.114
  %81 = load i32, i32* @cols, align 4
  %sub122 = sub nsw i32 %81, 1
  %82 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer123 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 3
  %l_x124 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer123, i32 0, i32 3
  store i32 %sub122, i32* %l_x124, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %cond.end.114
  %83 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer126 = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 3
  %84 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer127 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 3
  %l_x128 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer127, i32 0, i32 3
  %85 = load i32, i32* %l_x128, align 4
  %86 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer129 = getelementptr inbounds %struct.win, %struct.win* %86, i32 0, i32 3
  %l_y130 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer129, i32 0, i32 4
  %87 = load i32, i32* %l_y130, align 4
  call void @LGotoPos(%struct.layer* %w_layer126, i32 %85, i32 %87)
  br label %sw.epilog.375

sw.bb.131:                                        ; preds = %sw.bb
  %88 = load i32, i32* %a1, align 4
  %tobool132 = icmp ne i32 %88, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %sw.bb.131
  %89 = load i32, i32* %a1, align 4
  %sub134 = sub nsw i32 %89, 1
  br label %cond.end.136

cond.false.135:                                   ; preds = %sw.bb.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi i32 [ %sub134, %cond.true.133 ], [ 0, %cond.false.135 ]
  %90 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer138 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 3
  %l_y139 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer138, i32 0, i32 4
  store i32 %cond137, i32* %l_y139, align 4
  %91 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer140 = getelementptr inbounds %struct.win, %struct.win* %91, i32 0, i32 3
  %l_y141 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer140, i32 0, i32 4
  %92 = load i32, i32* %l_y141, align 4
  %93 = load i32, i32* @rows, align 4
  %cmp142 = icmp sge i32 %92, %93
  br i1 %cmp142, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %cond.end.136
  %94 = load i32, i32* @rows, align 4
  %sub144 = sub nsw i32 %94, 1
  %95 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer145 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 3
  %l_y146 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer145, i32 0, i32 4
  store i32 %sub144, i32* %l_y146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.143, %cond.end.136
  %96 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer148 = getelementptr inbounds %struct.win, %struct.win* %96, i32 0, i32 3
  %97 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer149 = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 3
  %l_x150 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer149, i32 0, i32 3
  %98 = load i32, i32* %l_x150, align 4
  %99 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer151 = getelementptr inbounds %struct.win, %struct.win* %99, i32 0, i32 3
  %l_y152 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer151, i32 0, i32 4
  %100 = load i32, i32* %l_y152, align 4
  call void @LGotoPos(%struct.layer* %w_layer148, i32 %98, i32 %100)
  br label %sw.epilog.375

sw.bb.153:                                        ; preds = %sw.bb
  call void @SelectRendition()
  br label %sw.epilog.375

sw.bb.154:                                        ; preds = %sw.bb
  %101 = load i32, i32* %a1, align 4
  %cmp155 = icmp eq i32 %101, 0
  br i1 %cmp155, label %if.then.156, label %if.else

if.then.156:                                      ; preds = %sw.bb.154
  %102 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer157 = getelementptr inbounds %struct.win, %struct.win* %102, i32 0, i32 3
  %l_x158 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer157, i32 0, i32 3
  %103 = load i32, i32* %l_x158, align 4
  %idxprom = sext i32 %103 to i64
  %104 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %104, i32 0, i32 65
  %105 = load i8*, i8** %w_tabs, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %105, i64 %idxprom
  store i8 0, i8* %arrayidx159, align 1
  br label %if.end.164

if.else:                                          ; preds = %sw.bb.154
  %106 = load i32, i32* %a1, align 4
  %cmp160 = icmp eq i32 %106, 3
  br i1 %cmp160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.else
  %107 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs162 = getelementptr inbounds %struct.win, %struct.win* %107, i32 0, i32 65
  %108 = load i8*, i8** %w_tabs162, align 8
  %109 = load i32, i32* @cols, align 4
  %conv = sext i32 %109 to i64
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.else
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.156
  br label %sw.epilog.375

sw.bb.165:                                        ; preds = %sw.bb
  %110 = load i32, i32* %a1, align 4
  %tobool166 = icmp ne i32 %110, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %sw.bb.165
  store i32 1, i32* %a1, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %sw.bb.165
  %111 = load i32, i32* %a2, align 4
  %tobool169 = icmp ne i32 %111, 0
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.end.168
  %112 = load i32, i32* @rows, align 4
  store i32 %112, i32* %a2, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.168
  %113 = load i32, i32* %a1, align 4
  %cmp172 = icmp slt i32 %113, 1
  br i1 %cmp172, label %if.then.180, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.end.171
  %114 = load i32, i32* %a2, align 4
  %115 = load i32, i32* @rows, align 4
  %cmp175 = icmp sgt i32 %114, %115
  br i1 %cmp175, label %if.then.180, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.174
  %116 = load i32, i32* %a1, align 4
  %117 = load i32, i32* %a2, align 4
  %cmp178 = icmp sge i32 %116, %117
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %lor.lhs.false.177, %lor.lhs.false.174, %if.end.171
  br label %sw.epilog.375

if.end.181:                                       ; preds = %lor.lhs.false.177
  %118 = load i32, i32* %a1, align 4
  %sub182 = sub nsw i32 %118, 1
  %119 = load %struct.win*, %struct.win** @curr, align 8
  %w_top183 = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 46
  store i32 %sub182, i32* %w_top183, align 4
  %120 = load i32, i32* %a2, align 4
  %sub184 = sub nsw i32 %120, 1
  %121 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %121, i32 0, i32 47
  store i32 %sub184, i32* %w_bot, align 4
  %122 = load %struct.win*, %struct.win** @curr, align 8
  %w_origin185 = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 49
  %123 = load i32, i32* %w_origin185, align 4
  %tobool186 = icmp ne i32 %123, 0
  br i1 %tobool186, label %if.then.187, label %if.else.193

if.then.187:                                      ; preds = %if.end.181
  %124 = load %struct.win*, %struct.win** @curr, align 8
  %w_top188 = getelementptr inbounds %struct.win, %struct.win* %124, i32 0, i32 46
  %125 = load i32, i32* %w_top188, align 4
  %126 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer189 = getelementptr inbounds %struct.win, %struct.win* %126, i32 0, i32 3
  %l_y190 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer189, i32 0, i32 4
  store i32 %125, i32* %l_y190, align 4
  %127 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer191 = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 3
  %l_x192 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer191, i32 0, i32 3
  store i32 0, i32* %l_x192, align 4
  br label %if.end.198

if.else.193:                                      ; preds = %if.end.181
  %128 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer194 = getelementptr inbounds %struct.win, %struct.win* %128, i32 0, i32 3
  %l_x195 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer194, i32 0, i32 3
  store i32 0, i32* %l_x195, align 4
  %129 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer196 = getelementptr inbounds %struct.win, %struct.win* %129, i32 0, i32 3
  %l_y197 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer196, i32 0, i32 4
  store i32 0, i32* %l_y197, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.193, %if.then.187
  %130 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer199 = getelementptr inbounds %struct.win, %struct.win* %130, i32 0, i32 3
  %131 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer200 = getelementptr inbounds %struct.win, %struct.win* %131, i32 0, i32 3
  %l_x201 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer200, i32 0, i32 3
  %132 = load i32, i32* %l_x201, align 4
  %133 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer202 = getelementptr inbounds %struct.win, %struct.win* %133, i32 0, i32 3
  %l_y203 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer202, i32 0, i32 4
  %134 = load i32, i32* %l_y203, align 4
  call void @LGotoPos(%struct.layer* %w_layer199, i32 %132, i32 %134)
  br label %sw.epilog.375

sw.bb.204:                                        ; preds = %sw.bb
  %135 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved = getelementptr inbounds %struct.win, %struct.win* %135, i32 0, i32 45
  call void @SaveCursor(%struct.cursor* %w_saved)
  br label %sw.epilog.375

sw.bb.205:                                        ; preds = %sw.bb
  %136 = load i32, i32* %a1, align 4
  switch i32 %136, label %sw.default [
    i32 11, label %sw.bb.206
    i32 7, label %sw.bb.212
    i32 21, label %sw.bb.214
    i32 8, label %sw.bb.243
  ]

sw.bb.206:                                        ; preds = %sw.bb.205
  %137 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer207 = getelementptr inbounds %struct.win, %struct.win* %137, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer207, i32 0, i32 0
  %138 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool208 = icmp ne %struct.canvas* %138, null
  br i1 %tobool208, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %sw.bb.206
  call void @Report(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0)
  br label %if.end.211

if.else.210:                                      ; preds = %sw.bb.206
  call void @Report(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.210, %if.then.209
  br label %sw.epilog.267

sw.bb.212:                                        ; preds = %sw.bb.205
  %139 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer213 = getelementptr inbounds %struct.win, %struct.win* %139, i32 0, i32 3
  call void @LRefreshAll(%struct.layer* %w_layer213, i32 0)
  br label %sw.epilog.267

sw.bb.214:                                        ; preds = %sw.bb.205
  %140 = load %struct.win*, %struct.win** @curr, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %140, i32 0, i32 21
  %141 = load i8*, i8** %w_title, align 8
  %call = call i64 @strlen(i8* %141) #6
  %conv215 = trunc i64 %call to i32
  store i32 %conv215, i32* %a1, align 4
  %142 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %142, i32 0, i32 17
  %143 = load i32, i32* %w_inlen, align 4
  %add216 = add nsw i32 %143, 5
  %144 = load i32, i32* %a1, align 4
  %add217 = add nsw i32 %add216, %144
  %conv218 = zext i32 %add217 to i64
  %cmp219 = icmp ule i64 %conv218, 4096
  br i1 %cmp219, label %if.then.221, label %if.end.242

if.then.221:                                      ; preds = %sw.bb.214
  %145 = load %struct.win*, %struct.win** @curr, align 8
  %w_inbuf = getelementptr inbounds %struct.win, %struct.win* %145, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf, i32 0, i32 0
  %146 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen222 = getelementptr inbounds %struct.win, %struct.win* %146, i32 0, i32 17
  %147 = load i32, i32* %w_inlen222, align 4
  %idx.ext = sext i32 %147 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  call void @bcopy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %add.ptr, i64 3) #1
  %148 = load %struct.win*, %struct.win** @curr, align 8
  %w_title223 = getelementptr inbounds %struct.win, %struct.win* %148, i32 0, i32 21
  %149 = load i8*, i8** %w_title223, align 8
  %150 = load %struct.win*, %struct.win** @curr, align 8
  %w_inbuf224 = getelementptr inbounds %struct.win, %struct.win* %150, i32 0, i32 16
  %arraydecay225 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf224, i32 0, i32 0
  %151 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen226 = getelementptr inbounds %struct.win, %struct.win* %151, i32 0, i32 17
  %152 = load i32, i32* %w_inlen226, align 4
  %idx.ext227 = sext i32 %152 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %arraydecay225, i64 %idx.ext227
  %add.ptr229 = getelementptr inbounds i8, i8* %add.ptr228, i64 3
  %153 = load i32, i32* %a1, align 4
  %conv230 = sext i32 %153 to i64
  call void @bcopy(i8* %149, i8* %add.ptr229, i64 %conv230) #1
  %154 = load %struct.win*, %struct.win** @curr, align 8
  %w_inbuf231 = getelementptr inbounds %struct.win, %struct.win* %154, i32 0, i32 16
  %arraydecay232 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf231, i32 0, i32 0
  %155 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen233 = getelementptr inbounds %struct.win, %struct.win* %155, i32 0, i32 17
  %156 = load i32, i32* %w_inlen233, align 4
  %idx.ext234 = sext i32 %156 to i64
  %add.ptr235 = getelementptr inbounds i8, i8* %arraydecay232, i64 %idx.ext234
  %add.ptr236 = getelementptr inbounds i8, i8* %add.ptr235, i64 3
  %157 = load i32, i32* %a1, align 4
  %idx.ext237 = sext i32 %157 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %add.ptr236, i64 %idx.ext237
  call void @bcopy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %add.ptr238, i64 2) #1
  %158 = load i32, i32* %a1, align 4
  %add239 = add nsw i32 5, %158
  %159 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen240 = getelementptr inbounds %struct.win, %struct.win* %159, i32 0, i32 17
  %160 = load i32, i32* %w_inlen240, align 4
  %add241 = add nsw i32 %160, %add239
  store i32 %add241, i32* %w_inlen240, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.221, %sw.bb.214
  br label %sw.epilog.267

sw.bb.243:                                        ; preds = %sw.bb.205
  %161 = load %struct.win*, %struct.win** @curr, align 8
  %w_args244 = getelementptr inbounds %struct.win, %struct.win* %161, i32 0, i32 27
  %arrayidx245 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args244, i32 0, i64 2
  %162 = load i32, i32* %arrayidx245, align 4
  store i32 %162, i32* %a1, align 4
  %163 = load i32, i32* %a1, align 4
  %cmp246 = icmp slt i32 %163, 1
  br i1 %cmp246, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %sw.bb.243
  %164 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer249 = getelementptr inbounds %struct.win, %struct.win* %164, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer249, i32 0, i32 1
  %165 = load i32, i32* %l_width, align 4
  store i32 %165, i32* %a1, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %sw.bb.243
  %166 = load i32, i32* %a2, align 4
  %cmp251 = icmp slt i32 %166, 1
  br i1 %cmp251, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %if.end.250
  %167 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer254 = getelementptr inbounds %struct.win, %struct.win* %167, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer254, i32 0, i32 2
  %168 = load i32, i32* %l_height, align 4
  store i32 %168, i32* %a2, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %if.end.250
  %169 = load i32, i32* %a1, align 4
  %cmp256 = icmp sgt i32 %169, 10000
  br i1 %cmp256, label %if.then.261, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %if.end.255
  %170 = load i32, i32* %a2, align 4
  %cmp259 = icmp sgt i32 %170, 10000
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %lor.lhs.false.258, %if.end.255
  br label %sw.epilog.267

if.end.262:                                       ; preds = %lor.lhs.false.258
  %171 = load %struct.win*, %struct.win** @curr, align 8
  %172 = load i32, i32* %a1, align 4
  %173 = load i32, i32* %a2, align 4
  call void @WChangeSize(%struct.win* %171, i32 %172, i32 %173)
  %174 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer263 = getelementptr inbounds %struct.win, %struct.win* %174, i32 0, i32 3
  %l_width264 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer263, i32 0, i32 1
  %175 = load i32, i32* %l_width264, align 4
  store i32 %175, i32* @cols, align 4
  %176 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer265 = getelementptr inbounds %struct.win, %struct.win* %176, i32 0, i32 3
  %l_height266 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer265, i32 0, i32 2
  %177 = load i32, i32* %l_height266, align 4
  store i32 %177, i32* @rows, align 4
  br label %sw.epilog.267

sw.default:                                       ; preds = %sw.bb.205
  br label %sw.epilog.267

sw.epilog.267:                                    ; preds = %sw.default, %if.end.262, %if.then.261, %if.end.242, %sw.bb.212, %if.end.211
  br label %sw.epilog.375

sw.bb.268:                                        ; preds = %sw.bb
  %178 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved269 = getelementptr inbounds %struct.win, %struct.win* %178, i32 0, i32 45
  call void @RestoreCursor(%struct.cursor* %w_saved269)
  br label %sw.epilog.375

sw.bb.270:                                        ; preds = %sw.bb
  %179 = load i32, i32* %a1, align 4
  %tobool271 = icmp ne i32 %179, 0
  br i1 %tobool271, label %if.end.273, label %if.then.272

if.then.272:                                      ; preds = %sw.bb.270
  store i32 1, i32* %a1, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %sw.bb.270
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.273
  %180 = load i32, i32* %a1, align 4
  %dec274 = add nsw i32 %180, -1
  store i32 %dec274, i32* %a1, align 4
  %tobool275 = icmp ne i32 %180, 0
  br i1 %tobool275, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @ForwardTab()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.375

sw.bb.276:                                        ; preds = %sw.bb
  %181 = load i32, i32* %a1, align 4
  %tobool277 = icmp ne i32 %181, 0
  br i1 %tobool277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %sw.bb.276
  store i32 1, i32* %a1, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %sw.bb.276
  br label %while.cond.280

while.cond.280:                                   ; preds = %while.body.283, %if.end.279
  %182 = load i32, i32* %a1, align 4
  %dec281 = add nsw i32 %182, -1
  store i32 %dec281, i32* %a1, align 4
  %tobool282 = icmp ne i32 %182, 0
  br i1 %tobool282, label %while.body.283, label %while.end.284

while.body.283:                                   ; preds = %while.cond.280
  call void @BackwardTab()
  br label %while.cond.280

while.end.284:                                    ; preds = %while.cond.280
  br label %sw.epilog.375

sw.bb.285:                                        ; preds = %sw.bb
  %183 = load i32, i32* %a1, align 4
  %tobool286 = icmp ne i32 %183, 0
  br i1 %tobool286, label %cond.true.287, label %cond.false.288

cond.true.287:                                    ; preds = %sw.bb.285
  %184 = load i32, i32* %a1, align 4
  br label %cond.end.289

cond.false.288:                                   ; preds = %sw.bb.285
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.288, %cond.true.287
  %cond290 = phi i32 [ %184, %cond.true.287 ], [ 1, %cond.false.288 ]
  call void @InsertLine(i32 %cond290)
  br label %sw.epilog.375

sw.bb.291:                                        ; preds = %sw.bb
  %185 = load i32, i32* %a1, align 4
  %tobool292 = icmp ne i32 %185, 0
  br i1 %tobool292, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %sw.bb.291
  %186 = load i32, i32* %a1, align 4
  br label %cond.end.295

cond.false.294:                                   ; preds = %sw.bb.291
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.294, %cond.true.293
  %cond296 = phi i32 [ %186, %cond.true.293 ], [ 1, %cond.false.294 ]
  call void @DeleteLine(i32 %cond296)
  br label %sw.epilog.375

sw.bb.297:                                        ; preds = %sw.bb
  %187 = load i32, i32* %a1, align 4
  %tobool298 = icmp ne i32 %187, 0
  br i1 %tobool298, label %cond.true.299, label %cond.false.300

cond.true.299:                                    ; preds = %sw.bb.297
  %188 = load i32, i32* %a1, align 4
  br label %cond.end.301

cond.false.300:                                   ; preds = %sw.bb.297
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.300, %cond.true.299
  %cond302 = phi i32 [ %188, %cond.true.299 ], [ 1, %cond.false.300 ]
  call void @DeleteChar(i32 %cond302)
  br label %sw.epilog.375

sw.bb.303:                                        ; preds = %sw.bb
  %189 = load i32, i32* %a1, align 4
  %tobool304 = icmp ne i32 %189, 0
  br i1 %tobool304, label %cond.true.305, label %cond.false.306

cond.true.305:                                    ; preds = %sw.bb.303
  %190 = load i32, i32* %a1, align 4
  br label %cond.end.307

cond.false.306:                                   ; preds = %sw.bb.303
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.306, %cond.true.305
  %cond308 = phi i32 [ %190, %cond.true.305 ], [ 1, %cond.false.306 ]
  call void @InsertChar(i32 %cond308)
  br label %sw.epilog.375

sw.bb.309:                                        ; preds = %sw.bb
  call void @ASetMode(i32 1)
  br label %sw.epilog.375

sw.bb.310:                                        ; preds = %sw.bb
  call void @ASetMode(i32 0)
  br label %sw.epilog.375

sw.bb.311:                                        ; preds = %sw.bb
  %191 = load i32, i32* %a1, align 4
  %cmp312 = icmp eq i32 %191, 5
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %sw.bb.311
  call void @PrintStart()
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %sw.bb.311
  br label %sw.epilog.375

sw.bb.316:                                        ; preds = %sw.bb
  %192 = load i32, i32* %a1, align 4
  %cmp317 = icmp eq i32 %192, 5
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %sw.bb.316
  call void @Report(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0)
  br label %if.end.331

if.else.320:                                      ; preds = %sw.bb.316
  %193 = load i32, i32* %a1, align 4
  %cmp321 = icmp eq i32 %193, 6
  br i1 %cmp321, label %if.then.323, label %if.end.330

if.then.323:                                      ; preds = %if.else.320
  %194 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer324 = getelementptr inbounds %struct.win, %struct.win* %194, i32 0, i32 3
  %l_y325 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer324, i32 0, i32 4
  %195 = load i32, i32* %l_y325, align 4
  %add326 = add nsw i32 %195, 1
  %196 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer327 = getelementptr inbounds %struct.win, %struct.win* %196, i32 0, i32 3
  %l_x328 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer327, i32 0, i32 3
  %197 = load i32, i32* %l_x328, align 4
  %add329 = add nsw i32 %197, 1
  call void @Report(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %add326, i32 %add329)
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.323, %if.else.320
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.319
  br label %sw.epilog.375

sw.bb.332:                                        ; preds = %sw.bb
  %198 = load i32, i32* %a1, align 4
  %cmp333 = icmp eq i32 %198, 0
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %sw.bb.332
  call void @Report(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 2)
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %sw.bb.332
  br label %sw.epilog.375

sw.bb.337:                                        ; preds = %sw.bb
  %199 = load i32, i32* %a1, align 4
  %cmp338 = icmp eq i32 %199, 0
  br i1 %cmp338, label %if.then.343, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %sw.bb.337
  %200 = load i32, i32* %a1, align 4
  %cmp341 = icmp eq i32 %200, 1
  br i1 %cmp341, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %lor.lhs.false.340, %sw.bb.337
  %201 = load i32, i32* %a1, align 4
  %add344 = add nsw i32 %201, 2
  call void @Report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i32 %add344, i32 0)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %lor.lhs.false.340
  br label %sw.epilog.375

sw.bb.346:                                        ; preds = %sw.bb
  %202 = load i32, i32* %a1, align 4
  %cmp347 = icmp eq i32 %202, 6
  br i1 %cmp347, label %if.then.352, label %lor.lhs.false.349

lor.lhs.false.349:                                ; preds = %sw.bb.346
  %203 = load i32, i32* %a1, align 4
  %cmp350 = icmp eq i32 %203, 7
  br i1 %cmp350, label %if.then.352, label %if.end.361

if.then.352:                                      ; preds = %lor.lhs.false.349, %sw.bb.346
  %204 = load i32, i32* %a1, align 4
  %sub353 = sub nsw i32 7, %204
  %205 = load %struct.win*, %struct.win** @curr, align 8
  %w_curinv = getelementptr inbounds %struct.win, %struct.win* %205, i32 0, i32 54
  store i32 %sub353, i32* %w_curinv, align 4
  %206 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer354 = getelementptr inbounds %struct.win, %struct.win* %206, i32 0, i32 3
  %207 = load %struct.win*, %struct.win** @curr, align 8
  %w_curinv355 = getelementptr inbounds %struct.win, %struct.win* %207, i32 0, i32 54
  %208 = load i32, i32* %w_curinv355, align 4
  %tobool356 = icmp ne i32 %208, 0
  br i1 %tobool356, label %cond.true.357, label %cond.false.358

cond.true.357:                                    ; preds = %if.then.352
  br label %cond.end.359

cond.false.358:                                   ; preds = %if.then.352
  %209 = load %struct.win*, %struct.win** @curr, align 8
  %w_curvvis = getelementptr inbounds %struct.win, %struct.win* %209, i32 0, i32 55
  %210 = load i32, i32* %w_curvvis, align 4
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.357
  %cond360 = phi i32 [ -1, %cond.true.357 ], [ %210, %cond.false.358 ]
  call void @LCursorVisibility(%struct.layer* %w_layer354, i32 %cond360)
  br label %if.end.361

if.end.361:                                       ; preds = %cond.end.359, %lor.lhs.false.349
  br label %sw.epilog.375

sw.bb.362:                                        ; preds = %sw.bb
  %211 = load i32, i32* %a1, align 4
  %tobool363 = icmp ne i32 %211, 0
  br i1 %tobool363, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %sw.bb.362
  %212 = load i32, i32* %a1, align 4
  br label %cond.end.366

cond.false.365:                                   ; preds = %sw.bb.362
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.false.365, %cond.true.364
  %cond367 = phi i32 [ %212, %cond.true.364 ], [ 1, %cond.false.365 ]
  call void @ScrollRegion(i32 %cond367)
  br label %sw.epilog.375

sw.bb.368:                                        ; preds = %sw.bb, %sw.bb
  %213 = load i32, i32* %a1, align 4
  %tobool369 = icmp ne i32 %213, 0
  br i1 %tobool369, label %cond.true.370, label %cond.false.372

cond.true.370:                                    ; preds = %sw.bb.368
  %214 = load i32, i32* %a1, align 4
  %sub371 = sub nsw i32 0, %214
  br label %cond.end.373

cond.false.372:                                   ; preds = %sw.bb.368
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.372, %cond.true.370
  %cond374 = phi i32 [ %sub371, %cond.true.370 ], [ -1, %cond.false.372 ]
  call void @ScrollRegion(i32 %cond374)
  br label %sw.epilog.375

sw.epilog.375:                                    ; preds = %sw.bb, %cond.end.373, %cond.end.366, %if.end.361, %if.end.345, %if.end.336, %if.end.331, %if.end.315, %sw.bb.310, %sw.bb.309, %cond.end.307, %cond.end.301, %cond.end.295, %cond.end.289, %while.end.284, %while.end, %sw.bb.268, %sw.epilog.267, %sw.bb.204, %if.end.198, %if.then.180, %if.end.164, %sw.bb.153, %if.end.147, %if.end.125, %cond.end.107, %cond.end.99, %cond.end.91, %cond.end.85, %cond.end.79, %cond.end.73, %cond.end.67, %sw.epilog.54, %sw.epilog, %if.end.26
  br label %sw.epilog.525

sw.bb.376:                                        ; preds = %if.end
  store i32 0, i32* %a2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.376
  %215 = load i32, i32* %a2, align 4
  %216 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs377 = getelementptr inbounds %struct.win, %struct.win* %216, i32 0, i32 28
  %217 = load i32, i32* %w_NumArgs377, align 4
  %cmp378 = icmp slt i32 %215, %217
  br i1 %cmp378, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %218 = load i32, i32* %a2, align 4
  %idxprom380 = sext i32 %218 to i64
  %219 = load %struct.win*, %struct.win** @curr, align 8
  %w_args381 = getelementptr inbounds %struct.win, %struct.win* %219, i32 0, i32 27
  %arrayidx382 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args381, i32 0, i64 %idxprom380
  %220 = load i32, i32* %arrayidx382, align 4
  store i32 %220, i32* %a1, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %221 = load i32, i32* %c.addr, align 4
  %cmp383 = icmp ne i32 %221, 104
  br i1 %cmp383, label %land.lhs.true, label %if.end.388

land.lhs.true:                                    ; preds = %do.end
  %222 = load i32, i32* %c.addr, align 4
  %cmp385 = icmp ne i32 %222, 108
  br i1 %cmp385, label %if.then.387, label %if.end.388

if.then.387:                                      ; preds = %land.lhs.true
  br label %for.end

if.end.388:                                       ; preds = %land.lhs.true, %do.end
  %223 = load i32, i32* %c.addr, align 4
  %cmp389 = icmp eq i32 %223, 104
  %conv390 = zext i1 %cmp389 to i32
  store i32 %conv390, i32* %i, align 4
  %224 = load i32, i32* %a1, align 4
  switch i32 %224, label %sw.epilog.517 [
    i32 1, label %sw.bb.391
    i32 2, label %sw.bb.393
    i32 3, label %sw.bb.408
    i32 5, label %sw.bb.424
    i32 6, label %sw.bb.430
    i32 7, label %sw.bb.451
    i32 9, label %sw.bb.452
    i32 25, label %sw.bb.457
    i32 47, label %sw.bb.468
    i32 1047, label %sw.bb.468
    i32 1049, label %sw.bb.468
    i32 1048, label %sw.bb.501
    i32 1000, label %sw.bb.508
    i32 1001, label %sw.bb.508
    i32 1002, label %sw.bb.508
    i32 1003, label %sw.bb.508
  ]

sw.bb.391:                                        ; preds = %if.end.388
  %225 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer392 = getelementptr inbounds %struct.win, %struct.win* %225, i32 0, i32 3
  %226 = load i32, i32* %i, align 4
  %227 = load %struct.win*, %struct.win** @curr, align 8
  %w_cursorkeys = getelementptr inbounds %struct.win, %struct.win* %227, i32 0, i32 52
  store i32 %226, i32* %w_cursorkeys, align 4
  call void @LCursorkeysMode(%struct.layer* %w_layer392, i32 %226)
  br label %sw.epilog.517

sw.bb.393:                                        ; preds = %if.end.388
  %228 = load i32, i32* %i, align 4
  %tobool394 = icmp ne i32 %228, 0
  br i1 %tobool394, label %if.then.395, label %if.end.407

if.then.395:                                      ; preds = %sw.bb.393
  %229 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer396 = getelementptr inbounds %struct.win, %struct.win* %229, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer396, i32 0, i32 5
  %230 = load i32, i32* %l_encoding, align 4
  %tobool397 = icmp ne i32 %230, 0
  br i1 %tobool397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.then.395
  br label %sw.epilog.517

if.end.399:                                       ; preds = %if.then.395
  %231 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %231, i32 0, i32 39
  store i8 0, i8* %w_FontR, align 1
  %232 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %232, i32 0, i32 38
  store i8 0, i8* %w_FontL, align 1
  %233 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %233, i32 0, i32 43
  %arrayidx400 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 3
  store i32 0, i32* %arrayidx400, align 4
  %234 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets401 = getelementptr inbounds %struct.win, %struct.win* %234, i32 0, i32 43
  %arrayidx402 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets401, i32 0, i64 2
  store i32 0, i32* %arrayidx402, align 4
  %235 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets403 = getelementptr inbounds %struct.win, %struct.win* %235, i32 0, i32 43
  %arrayidx404 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets403, i32 0, i64 1
  store i32 0, i32* %arrayidx404, align 4
  %236 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets405 = getelementptr inbounds %struct.win, %struct.win* %236, i32 0, i32 43
  %arrayidx406 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets405, i32 0, i64 0
  store i32 0, i32* %arrayidx406, align 4
  %237 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %237, i32 0, i32 41
  store i32 0, i32* %w_Charset, align 4
  %238 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %238, i32 0, i32 42
  store i32 2, i32* %w_CharsetR, align 4
  %239 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %239, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.399, %sw.bb.393
  br label %sw.epilog.517

sw.bb.408:                                        ; preds = %if.end.388
  %240 = load i32, i32* %i, align 4
  %tobool409 = icmp ne i32 %240, 0
  br i1 %tobool409, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %sw.bb.408
  %241 = load i32, i32* @Z0width, align 4
  br label %cond.end.412

cond.false.411:                                   ; preds = %sw.bb.408
  %242 = load i32, i32* @Z1width, align 4
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.411, %cond.true.410
  %cond413 = phi i32 [ %241, %cond.true.410 ], [ %242, %cond.false.411 ]
  store i32 %cond413, i32* %i, align 4
  call void @ClearScreen()
  %243 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer414 = getelementptr inbounds %struct.win, %struct.win* %243, i32 0, i32 3
  %l_x415 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer414, i32 0, i32 3
  store i32 0, i32* %l_x415, align 4
  %244 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer416 = getelementptr inbounds %struct.win, %struct.win* %244, i32 0, i32 3
  %l_y417 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer416, i32 0, i32 4
  store i32 0, i32* %l_y417, align 4
  %245 = load %struct.win*, %struct.win** @curr, align 8
  %246 = load i32, i32* %i, align 4
  %247 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer418 = getelementptr inbounds %struct.win, %struct.win* %247, i32 0, i32 3
  %l_height419 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer418, i32 0, i32 2
  %248 = load i32, i32* %l_height419, align 4
  call void @WChangeSize(%struct.win* %245, i32 %246, i32 %248)
  %249 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer420 = getelementptr inbounds %struct.win, %struct.win* %249, i32 0, i32 3
  %l_width421 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer420, i32 0, i32 1
  %250 = load i32, i32* %l_width421, align 4
  store i32 %250, i32* @cols, align 4
  %251 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer422 = getelementptr inbounds %struct.win, %struct.win* %251, i32 0, i32 3
  %l_height423 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer422, i32 0, i32 2
  %252 = load i32, i32* %l_height423, align 4
  store i32 %252, i32* @rows, align 4
  br label %sw.epilog.517

sw.bb.424:                                        ; preds = %if.end.388
  %253 = load i32, i32* %i, align 4
  %254 = load %struct.win*, %struct.win** @curr, align 8
  %w_revvid = getelementptr inbounds %struct.win, %struct.win* %254, i32 0, i32 53
  %255 = load i32, i32* %w_revvid, align 4
  %cmp425 = icmp ne i32 %253, %255
  br i1 %cmp425, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %sw.bb.424
  %256 = load %struct.win*, %struct.win** @curr, align 8
  %257 = load i32, i32* %i, align 4
  call void @WReverseVideo(%struct.win* %256, i32 %257)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.427, %sw.bb.424
  %258 = load i32, i32* %i, align 4
  %259 = load %struct.win*, %struct.win** @curr, align 8
  %w_revvid429 = getelementptr inbounds %struct.win, %struct.win* %259, i32 0, i32 53
  store i32 %258, i32* %w_revvid429, align 4
  br label %sw.epilog.517

sw.bb.430:                                        ; preds = %if.end.388
  %260 = load i32, i32* %i, align 4
  %261 = load %struct.win*, %struct.win** @curr, align 8
  %w_origin431 = getelementptr inbounds %struct.win, %struct.win* %261, i32 0, i32 49
  store i32 %260, i32* %w_origin431, align 4
  %cmp432 = icmp ne i32 %260, 0
  br i1 %cmp432, label %if.then.434, label %if.else.440

if.then.434:                                      ; preds = %sw.bb.430
  %262 = load %struct.win*, %struct.win** @curr, align 8
  %w_top435 = getelementptr inbounds %struct.win, %struct.win* %262, i32 0, i32 46
  %263 = load i32, i32* %w_top435, align 4
  %264 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer436 = getelementptr inbounds %struct.win, %struct.win* %264, i32 0, i32 3
  %l_y437 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer436, i32 0, i32 4
  store i32 %263, i32* %l_y437, align 4
  %265 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer438 = getelementptr inbounds %struct.win, %struct.win* %265, i32 0, i32 3
  %l_x439 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer438, i32 0, i32 3
  store i32 0, i32* %l_x439, align 4
  br label %if.end.445

if.else.440:                                      ; preds = %sw.bb.430
  %266 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer441 = getelementptr inbounds %struct.win, %struct.win* %266, i32 0, i32 3
  %l_x442 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer441, i32 0, i32 3
  store i32 0, i32* %l_x442, align 4
  %267 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer443 = getelementptr inbounds %struct.win, %struct.win* %267, i32 0, i32 3
  %l_y444 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer443, i32 0, i32 4
  store i32 0, i32* %l_y444, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.else.440, %if.then.434
  %268 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer446 = getelementptr inbounds %struct.win, %struct.win* %268, i32 0, i32 3
  %269 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer447 = getelementptr inbounds %struct.win, %struct.win* %269, i32 0, i32 3
  %l_x448 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer447, i32 0, i32 3
  %270 = load i32, i32* %l_x448, align 4
  %271 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer449 = getelementptr inbounds %struct.win, %struct.win* %271, i32 0, i32 3
  %l_y450 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer449, i32 0, i32 4
  %272 = load i32, i32* %l_y450, align 4
  call void @LGotoPos(%struct.layer* %w_layer446, i32 %270, i32 %272)
  br label %sw.epilog.517

sw.bb.451:                                        ; preds = %if.end.388
  %273 = load i32, i32* %i, align 4
  %274 = load %struct.win*, %struct.win** @curr, align 8
  %w_wrap = getelementptr inbounds %struct.win, %struct.win* %274, i32 0, i32 48
  store i32 %273, i32* %w_wrap, align 4
  br label %sw.epilog.517

sw.bb.452:                                        ; preds = %if.end.388
  %275 = load i32, i32* %i, align 4
  %tobool453 = icmp ne i32 %275, 0
  %cond454 = select i1 %tobool453, i32 9, i32 0
  %276 = load %struct.win*, %struct.win** @curr, align 8
  %w_mouse = getelementptr inbounds %struct.win, %struct.win* %276, i32 0, i32 75
  store i32 %cond454, i32* %w_mouse, align 4
  %277 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer455 = getelementptr inbounds %struct.win, %struct.win* %277, i32 0, i32 3
  %278 = load %struct.win*, %struct.win** @curr, align 8
  %w_mouse456 = getelementptr inbounds %struct.win, %struct.win* %278, i32 0, i32 75
  %279 = load i32, i32* %w_mouse456, align 4
  call void @LMouseMode(%struct.layer* %w_layer455, i32 %279)
  br label %sw.epilog.517

sw.bb.457:                                        ; preds = %if.end.388
  %280 = load i32, i32* %i, align 4
  %tobool458 = icmp ne i32 %280, 0
  %lnot = xor i1 %tobool458, true
  %lnot.ext = zext i1 %lnot to i32
  %281 = load %struct.win*, %struct.win** @curr, align 8
  %w_curinv459 = getelementptr inbounds %struct.win, %struct.win* %281, i32 0, i32 54
  store i32 %lnot.ext, i32* %w_curinv459, align 4
  %282 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer460 = getelementptr inbounds %struct.win, %struct.win* %282, i32 0, i32 3
  %283 = load %struct.win*, %struct.win** @curr, align 8
  %w_curinv461 = getelementptr inbounds %struct.win, %struct.win* %283, i32 0, i32 54
  %284 = load i32, i32* %w_curinv461, align 4
  %tobool462 = icmp ne i32 %284, 0
  br i1 %tobool462, label %cond.true.463, label %cond.false.464

cond.true.463:                                    ; preds = %sw.bb.457
  br label %cond.end.466

cond.false.464:                                   ; preds = %sw.bb.457
  %285 = load %struct.win*, %struct.win** @curr, align 8
  %w_curvvis465 = getelementptr inbounds %struct.win, %struct.win* %285, i32 0, i32 55
  %286 = load i32, i32* %w_curvvis465, align 4
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.464, %cond.true.463
  %cond467 = phi i32 [ -1, %cond.true.463 ], [ %286, %cond.false.464 ]
  call void @LCursorVisibility(%struct.layer* %w_layer460, i32 %cond467)
  br label %sw.epilog.517

sw.bb.468:                                        ; preds = %if.end.388, %if.end.388, %if.end.388
  %287 = load i32, i32* @use_altscreen, align 4
  %tobool469 = icmp ne i32 %287, 0
  br i1 %tobool469, label %if.then.470, label %if.end.500

if.then.470:                                      ; preds = %sw.bb.468
  %288 = load i32, i32* %i, align 4
  %tobool471 = icmp ne i32 %288, 0
  br i1 %tobool471, label %if.then.472, label %if.else.477

if.then.472:                                      ; preds = %if.then.470
  %289 = load %struct.win*, %struct.win** @curr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %289, i32 0, i32 92
  %on = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 0
  %290 = load i32, i32* %on, align 4
  %tobool473 = icmp ne i32 %290, 0
  br i1 %tobool473, label %if.end.476, label %if.then.474

if.then.474:                                      ; preds = %if.then.472
  %291 = load %struct.win*, %struct.win** @curr, align 8
  %w_alt475 = getelementptr inbounds %struct.win, %struct.win* %291, i32 0, i32 92
  %cursor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt475, i32 0, i32 7
  call void @SaveCursor(%struct.cursor* %cursor)
  %292 = load %struct.win*, %struct.win** @curr, align 8
  call void @EnterAltScreen(%struct.win* %292)
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.474, %if.then.472
  br label %if.end.485

if.else.477:                                      ; preds = %if.then.470
  %293 = load %struct.win*, %struct.win** @curr, align 8
  %w_alt478 = getelementptr inbounds %struct.win, %struct.win* %293, i32 0, i32 92
  %on479 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt478, i32 0, i32 0
  %294 = load i32, i32* %on479, align 4
  %tobool480 = icmp ne i32 %294, 0
  br i1 %tobool480, label %if.then.481, label %if.end.484

if.then.481:                                      ; preds = %if.else.477
  %295 = load %struct.win*, %struct.win** @curr, align 8
  %w_alt482 = getelementptr inbounds %struct.win, %struct.win* %295, i32 0, i32 92
  %cursor483 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt482, i32 0, i32 7
  call void @RestoreCursor(%struct.cursor* %cursor483)
  %296 = load %struct.win*, %struct.win** @curr, align 8
  call void @LeaveAltScreen(%struct.win* %296)
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.481, %if.else.477
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.end.476
  %297 = load i32, i32* %a1, align 4
  %cmp486 = icmp eq i32 %297, 47
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.493

land.lhs.true.488:                                ; preds = %if.end.485
  %298 = load i32, i32* %i, align 4
  %tobool489 = icmp ne i32 %298, 0
  br i1 %tobool489, label %if.end.493, label %if.then.490

if.then.490:                                      ; preds = %land.lhs.true.488
  %299 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved491 = getelementptr inbounds %struct.win, %struct.win* %299, i32 0, i32 45
  %on492 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved491, i32 0, i32 0
  store i32 0, i32* %on492, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.490, %land.lhs.true.488, %if.end.485
  %300 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer494 = getelementptr inbounds %struct.win, %struct.win* %300, i32 0, i32 3
  call void @LRefreshAll(%struct.layer* %w_layer494, i32 0)
  %301 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer495 = getelementptr inbounds %struct.win, %struct.win* %301, i32 0, i32 3
  %302 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer496 = getelementptr inbounds %struct.win, %struct.win* %302, i32 0, i32 3
  %l_x497 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer496, i32 0, i32 3
  %303 = load i32, i32* %l_x497, align 4
  %304 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer498 = getelementptr inbounds %struct.win, %struct.win* %304, i32 0, i32 3
  %l_y499 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer498, i32 0, i32 4
  %305 = load i32, i32* %l_y499, align 4
  call void @LGotoPos(%struct.layer* %w_layer495, i32 %303, i32 %305)
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.493, %sw.bb.468
  br label %sw.epilog.517

sw.bb.501:                                        ; preds = %if.end.388
  %306 = load i32, i32* %i, align 4
  %tobool502 = icmp ne i32 %306, 0
  br i1 %tobool502, label %if.then.503, label %if.else.505

if.then.503:                                      ; preds = %sw.bb.501
  %307 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved504 = getelementptr inbounds %struct.win, %struct.win* %307, i32 0, i32 45
  call void @SaveCursor(%struct.cursor* %w_saved504)
  br label %if.end.507

if.else.505:                                      ; preds = %sw.bb.501
  %308 = load %struct.win*, %struct.win** @curr, align 8
  %w_saved506 = getelementptr inbounds %struct.win, %struct.win* %308, i32 0, i32 45
  call void @RestoreCursor(%struct.cursor* %w_saved506)
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.505, %if.then.503
  br label %sw.epilog.517

sw.bb.508:                                        ; preds = %if.end.388, %if.end.388, %if.end.388, %if.end.388
  %309 = load i32, i32* %i, align 4
  %tobool509 = icmp ne i32 %309, 0
  br i1 %tobool509, label %cond.true.510, label %cond.false.511

cond.true.510:                                    ; preds = %sw.bb.508
  %310 = load i32, i32* %a1, align 4
  br label %cond.end.512

cond.false.511:                                   ; preds = %sw.bb.508
  br label %cond.end.512

cond.end.512:                                     ; preds = %cond.false.511, %cond.true.510
  %cond513 = phi i32 [ %310, %cond.true.510 ], [ 0, %cond.false.511 ]
  %311 = load %struct.win*, %struct.win** @curr, align 8
  %w_mouse514 = getelementptr inbounds %struct.win, %struct.win* %311, i32 0, i32 75
  store i32 %cond513, i32* %w_mouse514, align 4
  %312 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer515 = getelementptr inbounds %struct.win, %struct.win* %312, i32 0, i32 3
  %313 = load %struct.win*, %struct.win** @curr, align 8
  %w_mouse516 = getelementptr inbounds %struct.win, %struct.win* %313, i32 0, i32 75
  %314 = load i32, i32* %w_mouse516, align 4
  call void @LMouseMode(%struct.layer* %w_layer515, i32 %314)
  br label %sw.epilog.517

sw.epilog.517:                                    ; preds = %if.end.388, %cond.end.512, %if.end.507, %if.end.500, %cond.end.466, %sw.bb.452, %sw.bb.451, %if.end.445, %if.end.428, %cond.end.412, %if.end.407, %if.then.398, %sw.bb.391
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.517
  %315 = load i32, i32* %a2, align 4
  %inc = add nsw i32 %315, 1
  store i32 %inc, i32* %a2, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.387, %for.cond
  br label %sw.epilog.525

sw.bb.518:                                        ; preds = %if.end
  %316 = load i32, i32* %c.addr, align 4
  switch i32 %316, label %sw.epilog.524 [
    i32 99, label %sw.bb.519
  ]

sw.bb.519:                                        ; preds = %sw.bb.518
  %317 = load i32, i32* %a1, align 4
  %cmp520 = icmp eq i32 %317, 0
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %sw.bb.519
  %318 = load i32, i32* @nversion, align 4
  call void @Report(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 83, i32 %318)
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.522, %sw.bb.519
  br label %sw.epilog.524

sw.epilog.524:                                    ; preds = %sw.bb.518, %if.end.523
  br label %sw.epilog.525

sw.epilog.525:                                    ; preds = %if.end, %sw.epilog.524, %for.end, %sw.epilog.375
  ret void
}

declare %struct.mchar* @recode_mchar(%struct.mchar*, i32, i32) #4

declare i32 @utf8_isdouble(i32) #4

declare i32 @utf8_iscomb(i32) #4

declare void @utf8_handle_comb(i32, %struct.mchar*) #4

; Function Attrs: nounwind uwtable
define internal void @MFixLine(%struct.win* %p, i32 %y, %struct.mchar* %mc) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %y.addr = alloca i32, align 4
  %mc.addr = alloca %struct.mchar*, align 8
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store %struct.mchar* %mc, %struct.mchar** %mc.addr, align 8
  %0 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 36
  %2 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %2, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %ml, align 8
  %3 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %3, i32 0, i32 1
  %4 = load i8, i8* %attr, align 1
  %conv = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr1 = getelementptr inbounds %struct.mline, %struct.mline* %5, i32 0, i32 1
  %6 = load i8*, i8** %attr1, align 8
  %7 = load i8*, i8** @null, align 8
  %cmp = icmp eq i8* %6, %7
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %9 = load i32, i32* %l_width, align 4
  %add = add nsw i32 %9, 1
  %conv3 = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv3, i64 1) #1
  %10 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr4 = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 1
  store i8* %call, i8** %attr4, align 8
  %cmp5 = icmp eq i8* %call, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i8*, i8** @null, align 8
  %12 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr8 = getelementptr inbounds %struct.mline, %struct.mline* %12, i32 0, i32 1
  store i8* %11, i8** %attr8, align 8
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 37
  %attr9 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 1
  store i8 0, i8* %attr9, align 1
  %14 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr10 = getelementptr inbounds %struct.mchar, %struct.mchar* %14, i32 0, i32 1
  store i8 0, i8* %attr10, align 1
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WMsg(%struct.win* %15, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %land.lhs.true, %entry
  %16 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %16, i32 0, i32 2
  %17 = load i8, i8* %font, align 1
  %conv12 = zext i8 %17 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.47

land.lhs.true.14:                                 ; preds = %if.end.11
  %18 = load %struct.mline*, %struct.mline** %ml, align 8
  %font15 = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 2
  %19 = load i8*, i8** %font15, align 8
  %20 = load i8*, i8** @null, align 8
  %cmp16 = icmp eq i8* %19, %20
  br i1 %cmp16, label %if.then.18, label %if.end.47

if.then.18:                                       ; preds = %land.lhs.true.14
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer19 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %l_width20 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer19, i32 0, i32 1
  %22 = load i32, i32* %l_width20, align 4
  %add21 = add nsw i32 %22, 1
  %conv22 = sext i32 %add21 to i64
  %call23 = call noalias i8* @calloc(i64 %conv22, i64 1) #1
  %23 = load %struct.mline*, %struct.mline** %ml, align 8
  %font24 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 2
  store i8* %call23, i8** %font24, align 8
  %cmp25 = icmp eq i8* %call23, null
  br i1 %cmp25, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.then.18
  %24 = load i8*, i8** @null, align 8
  %25 = load %struct.mline*, %struct.mline** %ml, align 8
  %font28 = getelementptr inbounds %struct.mline, %struct.mline* %25, i32 0, i32 2
  store i8* %24, i8** %font28, align 8
  %26 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 44
  %27 = load i32, i32* %w_ss, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ss30 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 44
  %29 = load i32, i32* %w_ss30, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %30 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 41
  %31 = load i32, i32* %w_Charset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %31, %cond.false ]
  %idxprom31 = sext i32 %cond to i64
  %32 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 43
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom31
  store i32 0, i32* %arrayidx32, align 4
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 38
  store i8 0, i8* %w_FontL, align 1
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ss33 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 44
  %35 = load i32, i32* %w_ss33, align 4
  %tobool34 = icmp ne i32 %35, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ss36 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 44
  %37 = load i32, i32* %w_ss36, align 4
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 42
  %39 = load i32, i32* %w_CharsetR, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi i32 [ %37, %cond.true.35 ], [ %39, %cond.false.37 ]
  %idxprom40 = sext i32 %cond39 to i64
  %40 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_charsets41 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 43
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets41, i32 0, i64 %idxprom40
  store i32 0, i32* %arrayidx42, align 4
  %41 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 39
  store i8 0, i8* %w_FontR, align 1
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_rend43 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 37
  %font44 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend43, i32 0, i32 2
  store i8 0, i8* %font44, align 1
  %43 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %43, i32 0, i32 3
  store i8 0, i8* %fontx, align 1
  %44 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font45 = getelementptr inbounds %struct.mchar, %struct.mchar* %44, i32 0, i32 2
  store i8 0, i8* %font45, align 1
  %45 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WMsg(%struct.win* %45, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.38, %if.then.18
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.14, %if.end.11
  %46 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx48 = getelementptr inbounds %struct.mchar, %struct.mchar* %46, i32 0, i32 3
  %47 = load i8, i8* %fontx48, align 1
  %conv49 = zext i8 %47 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.68

land.lhs.true.51:                                 ; preds = %if.end.47
  %48 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx52 = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 3
  %49 = load i8*, i8** %fontx52, align 8
  %50 = load i8*, i8** @null, align 8
  %cmp53 = icmp eq i8* %49, %50
  br i1 %cmp53, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %land.lhs.true.51
  %51 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer56 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 3
  %l_width57 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer56, i32 0, i32 1
  %52 = load i32, i32* %l_width57, align 4
  %add58 = add nsw i32 %52, 1
  %conv59 = sext i32 %add58 to i64
  %call60 = call noalias i8* @calloc(i64 %conv59, i64 1) #1
  %53 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx61 = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 3
  store i8* %call60, i8** %fontx61, align 8
  %cmp62 = icmp eq i8* %call60, null
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.then.55
  %54 = load i8*, i8** @null, align 8
  %55 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx65 = getelementptr inbounds %struct.mline, %struct.mline* %55, i32 0, i32 3
  store i8* %54, i8** %fontx65, align 8
  %56 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx66 = getelementptr inbounds %struct.mchar, %struct.mchar* %56, i32 0, i32 3
  store i8 0, i8* %fontx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.then.55
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.51, %if.end.47
  %57 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %57, i32 0, i32 4
  %58 = load i8, i8* %color, align 1
  %conv69 = zext i8 %58 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.90

land.lhs.true.71:                                 ; preds = %if.end.68
  %59 = load %struct.mline*, %struct.mline** %ml, align 8
  %color72 = getelementptr inbounds %struct.mline, %struct.mline* %59, i32 0, i32 4
  %60 = load i8*, i8** %color72, align 8
  %61 = load i8*, i8** @null, align 8
  %cmp73 = icmp eq i8* %60, %61
  br i1 %cmp73, label %if.then.75, label %if.end.90

if.then.75:                                       ; preds = %land.lhs.true.71
  %62 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer76 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 3
  %l_width77 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer76, i32 0, i32 1
  %63 = load i32, i32* %l_width77, align 4
  %add78 = add nsw i32 %63, 1
  %conv79 = sext i32 %add78 to i64
  %call80 = call noalias i8* @calloc(i64 %conv79, i64 1) #1
  %64 = load %struct.mline*, %struct.mline** %ml, align 8
  %color81 = getelementptr inbounds %struct.mline, %struct.mline* %64, i32 0, i32 4
  store i8* %call80, i8** %color81, align 8
  %cmp82 = icmp eq i8* %call80, null
  br i1 %cmp82, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.then.75
  %65 = load i8*, i8** @null, align 8
  %66 = load %struct.mline*, %struct.mline** %ml, align 8
  %color85 = getelementptr inbounds %struct.mline, %struct.mline* %66, i32 0, i32 4
  store i8* %65, i8** %color85, align 8
  %67 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_rend86 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 37
  %color87 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend86, i32 0, i32 4
  store i8 0, i8* %color87, align 1
  %68 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color88 = getelementptr inbounds %struct.mchar, %struct.mchar* %68, i32 0, i32 4
  store i8 0, i8* %color88, align 1
  %69 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WMsg(%struct.win* %69, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.then.75
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.71, %if.end.68
  ret void
}

declare void @LPutChar(%struct.layer*, %struct.mchar*, i32, i32) #4

declare void @LGotoPos(%struct.layer*, i32, i32) #4

; Function Attrs: nounwind uwtable
define internal void @MInsChar(%struct.win* %p, %struct.mchar* %c, i32 %x, i32 %y) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @MFixLine(%struct.win* %0, i32 %1, %struct.mchar* %2)
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 36
  %4 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %5 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %4, i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** %ml, align 8
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %7 = load i32, i32* %l_width, align 4
  %8 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %7, %8
  %sub1 = sub nsw i32 %sub, 1
  store i32 %sub1, i32* %n, align 4
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 5
  %10 = load i32, i32* %l_encoding, align 4
  %cmp = icmp eq i32 %10, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %11 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %12, i32 0, i32 2
  %13 = load i8*, i8** %font, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %cond.true
  %15 = load i32, i32* %x.addr, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %16, i32 0, i32 0
  %17 = load i8*, i8** %image, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 %idxprom5
  %18 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %cmp8 = icmp eq i32 %conv7, 255
  br i1 %cmp8, label %if.then, label %if.end.55

cond.false:                                       ; preds = %do.end
  %19 = load i32, i32* %x.addr, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.mline*, %struct.mline** %ml, align 8
  %font11 = getelementptr inbounds %struct.mline, %struct.mline* %20, i32 0, i32 2
  %21 = load i8*, i8** %font11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom10
  %22 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %22 to i32
  %and = and i32 %conv13, 224
  %cmp14 = icmp eq i32 %and, 128
  br i1 %cmp14, label %if.then, label %if.end.55

if.then:                                          ; preds = %cond.false, %land.lhs.true
  %23 = load i32, i32* %x.addr, align 4
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %24 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %25 = load i32, i32* %x.addr, align 4
  %sub20 = sub nsw i32 %25, 1
  %idxprom21 = sext i32 %sub20 to i64
  %26 = load %struct.mline*, %struct.mline** %ml, align 8
  %image22 = getelementptr inbounds %struct.mline, %struct.mline* %26, i32 0, i32 0
  %27 = load i8*, i8** %image22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 %idxprom21
  store i8 %24, i8* %arrayidx23, align 1
  %28 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %29 = load i32, i32* %x.addr, align 4
  %sub24 = sub nsw i32 %29, 1
  %idxprom25 = sext i32 %sub24 to i64
  %30 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %30, i32 0, i32 1
  %31 = load i8*, i8** %attr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %idxprom25
  store i8 %28, i8* %arrayidx26, align 1
  %32 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %33 = load i32, i32* %x.addr, align 4
  %sub27 = sub nsw i32 %33, 1
  %idxprom28 = sext i32 %sub27 to i64
  %34 = load %struct.mline*, %struct.mline** %ml, align 8
  %font29 = getelementptr inbounds %struct.mline, %struct.mline* %34, i32 0, i32 2
  %35 = load i8*, i8** %font29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom28
  store i8 %32, i8* %arrayidx30, align 1
  %36 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %37 = load i32, i32* %x.addr, align 4
  %sub31 = sub nsw i32 %37, 1
  %idxprom32 = sext i32 %sub31 to i64
  %38 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %38, i32 0, i32 3
  %39 = load i8*, i8** %fontx, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 %idxprom32
  store i8 %36, i8* %arrayidx33, align 1
  %40 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %41 = load i32, i32* %x.addr, align 4
  %sub34 = sub nsw i32 %41, 1
  %idxprom35 = sext i32 %sub34 to i64
  %42 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %42, i32 0, i32 4
  %43 = load i8*, i8** %color, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom35
  store i8 %40, i8* %arrayidx36, align 1
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.19
  br label %if.end

if.end:                                           ; preds = %do.end.37, %if.then
  br label %do.body.38

do.body.38:                                       ; preds = %if.end
  %44 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %45 = load i32, i32* %x.addr, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load %struct.mline*, %struct.mline** %ml, align 8
  %image40 = getelementptr inbounds %struct.mline, %struct.mline* %46, i32 0, i32 0
  %47 = load i8*, i8** %image40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %47, i64 %idxprom39
  store i8 %44, i8* %arrayidx41, align 1
  %48 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %49 = load i32, i32* %x.addr, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr43 = getelementptr inbounds %struct.mline, %struct.mline* %50, i32 0, i32 1
  %51 = load i8*, i8** %attr43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %51, i64 %idxprom42
  store i8 %48, i8* %arrayidx44, align 1
  %52 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %53 = load i32, i32* %x.addr, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load %struct.mline*, %struct.mline** %ml, align 8
  %font46 = getelementptr inbounds %struct.mline, %struct.mline* %54, i32 0, i32 2
  %55 = load i8*, i8** %font46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 %idxprom45
  store i8 %52, i8* %arrayidx47, align 1
  %56 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %57 = load i32, i32* %x.addr, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx49 = getelementptr inbounds %struct.mline, %struct.mline* %58, i32 0, i32 3
  %59 = load i8*, i8** %fontx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %59, i64 %idxprom48
  store i8 %56, i8* %arrayidx50, align 1
  %60 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %61 = load i32, i32* %x.addr, align 4
  %idxprom51 = sext i32 %61 to i64
  %62 = load %struct.mline*, %struct.mline** %ml, align 8
  %color52 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 4
  %63 = load i8*, i8** %color52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %63, i64 %idxprom51
  store i8 %60, i8* %arrayidx53, align 1
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.38
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %cond.false, %land.lhs.true, %cond.true
  %64 = load i32, i32* %n, align 4
  %cmp56 = icmp sgt i32 %64, 0
  br i1 %cmp56, label %if.then.58, label %if.end.213

if.then.58:                                       ; preds = %if.end.55
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer59 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 3
  %l_encoding60 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer59, i32 0, i32 5
  %66 = load i32, i32* %l_encoding60, align 4
  %cmp61 = icmp eq i32 %66, 8
  br i1 %cmp61, label %cond.true.63, label %cond.false.83

cond.true.63:                                     ; preds = %if.then.58
  %67 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer64 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 3
  %l_width65 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer64, i32 0, i32 1
  %68 = load i32, i32* %l_width65, align 4
  %sub66 = sub nsw i32 %68, 1
  %idxprom67 = sext i32 %sub66 to i64
  %69 = load %struct.mline*, %struct.mline** %ml, align 8
  %font68 = getelementptr inbounds %struct.mline, %struct.mline* %69, i32 0, i32 2
  %70 = load i8*, i8** %font68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %70, i64 %idxprom67
  %71 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %71 to i32
  %cmp71 = icmp eq i32 %conv70, 255
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.171

land.lhs.true.73:                                 ; preds = %cond.true.63
  %72 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer74 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  %l_width75 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer74, i32 0, i32 1
  %73 = load i32, i32* %l_width75, align 4
  %sub76 = sub nsw i32 %73, 1
  %idxprom77 = sext i32 %sub76 to i64
  %74 = load %struct.mline*, %struct.mline** %ml, align 8
  %image78 = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 0, i32 0
  %75 = load i8*, i8** %image78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %75, i64 %idxprom77
  %76 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %76 to i32
  %cmp81 = icmp eq i32 %conv80, 255
  br i1 %cmp81, label %if.then.94, label %if.end.171

cond.false.83:                                    ; preds = %if.then.58
  %77 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer84 = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 3
  %l_width85 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer84, i32 0, i32 1
  %78 = load i32, i32* %l_width85, align 4
  %sub86 = sub nsw i32 %78, 1
  %idxprom87 = sext i32 %sub86 to i64
  %79 = load %struct.mline*, %struct.mline** %ml, align 8
  %font88 = getelementptr inbounds %struct.mline, %struct.mline* %79, i32 0, i32 2
  %80 = load i8*, i8** %font88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %80, i64 %idxprom87
  %81 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %81 to i32
  %and91 = and i32 %conv90, 224
  %cmp92 = icmp eq i32 %and91, 128
  br i1 %cmp92, label %if.then.94, label %if.end.171

if.then.94:                                       ; preds = %cond.false.83, %land.lhs.true.73
  %82 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer95 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 3
  %l_width96 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer95, i32 0, i32 1
  %83 = load i32, i32* %l_width96, align 4
  %sub97 = sub nsw i32 %83, 1
  %cmp98 = icmp sgt i32 %sub97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.138

if.then.100:                                      ; preds = %if.then.94
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %84 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %85 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer102 = getelementptr inbounds %struct.win, %struct.win* %85, i32 0, i32 3
  %l_width103 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer102, i32 0, i32 1
  %86 = load i32, i32* %l_width103, align 4
  %sub104 = sub nsw i32 %86, 1
  %sub105 = sub nsw i32 %sub104, 1
  %idxprom106 = sext i32 %sub105 to i64
  %87 = load %struct.mline*, %struct.mline** %ml, align 8
  %image107 = getelementptr inbounds %struct.mline, %struct.mline* %87, i32 0, i32 0
  %88 = load i8*, i8** %image107, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %88, i64 %idxprom106
  store i8 %84, i8* %arrayidx108, align 1
  %89 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %90 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer109 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 3
  %l_width110 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer109, i32 0, i32 1
  %91 = load i32, i32* %l_width110, align 4
  %sub111 = sub nsw i32 %91, 1
  %sub112 = sub nsw i32 %sub111, 1
  %idxprom113 = sext i32 %sub112 to i64
  %92 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr114 = getelementptr inbounds %struct.mline, %struct.mline* %92, i32 0, i32 1
  %93 = load i8*, i8** %attr114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %93, i64 %idxprom113
  store i8 %89, i8* %arrayidx115, align 1
  %94 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %95 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer116 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 3
  %l_width117 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer116, i32 0, i32 1
  %96 = load i32, i32* %l_width117, align 4
  %sub118 = sub nsw i32 %96, 1
  %sub119 = sub nsw i32 %sub118, 1
  %idxprom120 = sext i32 %sub119 to i64
  %97 = load %struct.mline*, %struct.mline** %ml, align 8
  %font121 = getelementptr inbounds %struct.mline, %struct.mline* %97, i32 0, i32 2
  %98 = load i8*, i8** %font121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %98, i64 %idxprom120
  store i8 %94, i8* %arrayidx122, align 1
  %99 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %100 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer123 = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 3
  %l_width124 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer123, i32 0, i32 1
  %101 = load i32, i32* %l_width124, align 4
  %sub125 = sub nsw i32 %101, 1
  %sub126 = sub nsw i32 %sub125, 1
  %idxprom127 = sext i32 %sub126 to i64
  %102 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx128 = getelementptr inbounds %struct.mline, %struct.mline* %102, i32 0, i32 3
  %103 = load i8*, i8** %fontx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %103, i64 %idxprom127
  store i8 %99, i8* %arrayidx129, align 1
  %104 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %105 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer130 = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 3
  %l_width131 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer130, i32 0, i32 1
  %106 = load i32, i32* %l_width131, align 4
  %sub132 = sub nsw i32 %106, 1
  %sub133 = sub nsw i32 %sub132, 1
  %idxprom134 = sext i32 %sub133 to i64
  %107 = load %struct.mline*, %struct.mline** %ml, align 8
  %color135 = getelementptr inbounds %struct.mline, %struct.mline* %107, i32 0, i32 4
  %108 = load i8*, i8** %color135, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %108, i64 %idxprom134
  store i8 %104, i8* %arrayidx136, align 1
  br label %do.end.137

do.end.137:                                       ; preds = %do.body.101
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.137, %if.then.94
  br label %do.body.139

do.body.139:                                      ; preds = %if.end.138
  %109 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %110 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer140 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 3
  %l_width141 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer140, i32 0, i32 1
  %111 = load i32, i32* %l_width141, align 4
  %sub142 = sub nsw i32 %111, 1
  %idxprom143 = sext i32 %sub142 to i64
  %112 = load %struct.mline*, %struct.mline** %ml, align 8
  %image144 = getelementptr inbounds %struct.mline, %struct.mline* %112, i32 0, i32 0
  %113 = load i8*, i8** %image144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %113, i64 %idxprom143
  store i8 %109, i8* %arrayidx145, align 1
  %114 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %115 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer146 = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 3
  %l_width147 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer146, i32 0, i32 1
  %116 = load i32, i32* %l_width147, align 4
  %sub148 = sub nsw i32 %116, 1
  %idxprom149 = sext i32 %sub148 to i64
  %117 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr150 = getelementptr inbounds %struct.mline, %struct.mline* %117, i32 0, i32 1
  %118 = load i8*, i8** %attr150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %118, i64 %idxprom149
  store i8 %114, i8* %arrayidx151, align 1
  %119 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %120 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer152 = getelementptr inbounds %struct.win, %struct.win* %120, i32 0, i32 3
  %l_width153 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer152, i32 0, i32 1
  %121 = load i32, i32* %l_width153, align 4
  %sub154 = sub nsw i32 %121, 1
  %idxprom155 = sext i32 %sub154 to i64
  %122 = load %struct.mline*, %struct.mline** %ml, align 8
  %font156 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 2
  %123 = load i8*, i8** %font156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %123, i64 %idxprom155
  store i8 %119, i8* %arrayidx157, align 1
  %124 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %125 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer158 = getelementptr inbounds %struct.win, %struct.win* %125, i32 0, i32 3
  %l_width159 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer158, i32 0, i32 1
  %126 = load i32, i32* %l_width159, align 4
  %sub160 = sub nsw i32 %126, 1
  %idxprom161 = sext i32 %sub160 to i64
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx162 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 3
  %128 = load i8*, i8** %fontx162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %128, i64 %idxprom161
  store i8 %124, i8* %arrayidx163, align 1
  %129 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %130 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer164 = getelementptr inbounds %struct.win, %struct.win* %130, i32 0, i32 3
  %l_width165 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer164, i32 0, i32 1
  %131 = load i32, i32* %l_width165, align 4
  %sub166 = sub nsw i32 %131, 1
  %idxprom167 = sext i32 %sub166 to i64
  %132 = load %struct.mline*, %struct.mline** %ml, align 8
  %color168 = getelementptr inbounds %struct.mline, %struct.mline* %132, i32 0, i32 4
  %133 = load i8*, i8** %color168, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %133, i64 %idxprom167
  store i8 %129, i8* %arrayidx169, align 1
  br label %do.end.170

do.end.170:                                       ; preds = %do.body.139
  br label %if.end.171

if.end.171:                                       ; preds = %do.end.170, %cond.false.83, %land.lhs.true.73, %cond.true.63
  br label %do.body.172

do.body.172:                                      ; preds = %if.end.171
  %134 = load %struct.mline*, %struct.mline** %ml, align 8
  %image173 = getelementptr inbounds %struct.mline, %struct.mline* %134, i32 0, i32 0
  %135 = load i8*, i8** %image173, align 8
  %136 = load i32, i32* %x.addr, align 4
  %idx.ext174 = sext i32 %136 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %135, i64 %idx.ext174
  %137 = load %struct.mline*, %struct.mline** %ml, align 8
  %image176 = getelementptr inbounds %struct.mline, %struct.mline* %137, i32 0, i32 0
  %138 = load i8*, i8** %image176, align 8
  %139 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %139, 1
  %idx.ext177 = sext i32 %add to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %138, i64 %idx.ext177
  %140 = load i32, i32* %n, align 4
  %conv179 = sext i32 %140 to i64
  call void @bcopy(i8* %add.ptr175, i8* %add.ptr178, i64 %conv179) #1
  %141 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr180 = getelementptr inbounds %struct.mline, %struct.mline* %141, i32 0, i32 1
  %142 = load i8*, i8** %attr180, align 8
  %143 = load i32, i32* %x.addr, align 4
  %idx.ext181 = sext i32 %143 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %142, i64 %idx.ext181
  %144 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr183 = getelementptr inbounds %struct.mline, %struct.mline* %144, i32 0, i32 1
  %145 = load i8*, i8** %attr183, align 8
  %146 = load i32, i32* %x.addr, align 4
  %add184 = add nsw i32 %146, 1
  %idx.ext185 = sext i32 %add184 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %145, i64 %idx.ext185
  %147 = load i32, i32* %n, align 4
  %conv187 = sext i32 %147 to i64
  call void @bcopy(i8* %add.ptr182, i8* %add.ptr186, i64 %conv187) #1
  %148 = load %struct.mline*, %struct.mline** %ml, align 8
  %font188 = getelementptr inbounds %struct.mline, %struct.mline* %148, i32 0, i32 2
  %149 = load i8*, i8** %font188, align 8
  %150 = load i32, i32* %x.addr, align 4
  %idx.ext189 = sext i32 %150 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %149, i64 %idx.ext189
  %151 = load %struct.mline*, %struct.mline** %ml, align 8
  %font191 = getelementptr inbounds %struct.mline, %struct.mline* %151, i32 0, i32 2
  %152 = load i8*, i8** %font191, align 8
  %153 = load i32, i32* %x.addr, align 4
  %add192 = add nsw i32 %153, 1
  %idx.ext193 = sext i32 %add192 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %152, i64 %idx.ext193
  %154 = load i32, i32* %n, align 4
  %conv195 = sext i32 %154 to i64
  call void @bcopy(i8* %add.ptr190, i8* %add.ptr194, i64 %conv195) #1
  %155 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx196 = getelementptr inbounds %struct.mline, %struct.mline* %155, i32 0, i32 3
  %156 = load i8*, i8** %fontx196, align 8
  %157 = load i32, i32* %x.addr, align 4
  %idx.ext197 = sext i32 %157 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %156, i64 %idx.ext197
  %158 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx199 = getelementptr inbounds %struct.mline, %struct.mline* %158, i32 0, i32 3
  %159 = load i8*, i8** %fontx199, align 8
  %160 = load i32, i32* %x.addr, align 4
  %add200 = add nsw i32 %160, 1
  %idx.ext201 = sext i32 %add200 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %159, i64 %idx.ext201
  %161 = load i32, i32* %n, align 4
  %conv203 = sext i32 %161 to i64
  call void @bcopy(i8* %add.ptr198, i8* %add.ptr202, i64 %conv203) #1
  %162 = load %struct.mline*, %struct.mline** %ml, align 8
  %color204 = getelementptr inbounds %struct.mline, %struct.mline* %162, i32 0, i32 4
  %163 = load i8*, i8** %color204, align 8
  %164 = load i32, i32* %x.addr, align 4
  %idx.ext205 = sext i32 %164 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %163, i64 %idx.ext205
  %165 = load %struct.mline*, %struct.mline** %ml, align 8
  %color207 = getelementptr inbounds %struct.mline, %struct.mline* %165, i32 0, i32 4
  %166 = load i8*, i8** %color207, align 8
  %167 = load i32, i32* %x.addr, align 4
  %add208 = add nsw i32 %167, 1
  %idx.ext209 = sext i32 %add208 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %166, i64 %idx.ext209
  %168 = load i32, i32* %n, align 4
  %conv211 = sext i32 %168 to i64
  call void @bcopy(i8* %add.ptr206, i8* %add.ptr210, i64 %conv211) #1
  br label %do.end.212

do.end.212:                                       ; preds = %do.body.172
  br label %if.end.213

if.end.213:                                       ; preds = %do.end.212, %if.end.55
  br label %do.body.214

do.body.214:                                      ; preds = %if.end.213
  %169 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image215 = getelementptr inbounds %struct.mchar, %struct.mchar* %169, i32 0, i32 0
  %170 = load i8, i8* %image215, align 1
  %171 = load i32, i32* %x.addr, align 4
  %idxprom216 = sext i32 %171 to i64
  %172 = load %struct.mline*, %struct.mline** %ml, align 8
  %image217 = getelementptr inbounds %struct.mline, %struct.mline* %172, i32 0, i32 0
  %173 = load i8*, i8** %image217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %173, i64 %idxprom216
  store i8 %170, i8* %arrayidx218, align 1
  %174 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr219 = getelementptr inbounds %struct.mchar, %struct.mchar* %174, i32 0, i32 1
  %175 = load i8, i8* %attr219, align 1
  %176 = load i32, i32* %x.addr, align 4
  %idxprom220 = sext i32 %176 to i64
  %177 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr221 = getelementptr inbounds %struct.mline, %struct.mline* %177, i32 0, i32 1
  %178 = load i8*, i8** %attr221, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %178, i64 %idxprom220
  store i8 %175, i8* %arrayidx222, align 1
  %179 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %font223 = getelementptr inbounds %struct.mchar, %struct.mchar* %179, i32 0, i32 2
  %180 = load i8, i8* %font223, align 1
  %181 = load i32, i32* %x.addr, align 4
  %idxprom224 = sext i32 %181 to i64
  %182 = load %struct.mline*, %struct.mline** %ml, align 8
  %font225 = getelementptr inbounds %struct.mline, %struct.mline* %182, i32 0, i32 2
  %183 = load i8*, i8** %font225, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %183, i64 %idxprom224
  store i8 %180, i8* %arrayidx226, align 1
  %184 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %fontx227 = getelementptr inbounds %struct.mchar, %struct.mchar* %184, i32 0, i32 3
  %185 = load i8, i8* %fontx227, align 1
  %186 = load i32, i32* %x.addr, align 4
  %idxprom228 = sext i32 %186 to i64
  %187 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx229 = getelementptr inbounds %struct.mline, %struct.mline* %187, i32 0, i32 3
  %188 = load i8*, i8** %fontx229, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %188, i64 %idxprom228
  store i8 %185, i8* %arrayidx230, align 1
  %189 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color231 = getelementptr inbounds %struct.mchar, %struct.mchar* %189, i32 0, i32 4
  %190 = load i8, i8* %color231, align 1
  %191 = load i32, i32* %x.addr, align 4
  %idxprom232 = sext i32 %191 to i64
  %192 = load %struct.mline*, %struct.mline** %ml, align 8
  %color233 = getelementptr inbounds %struct.mline, %struct.mline* %192, i32 0, i32 4
  %193 = load i8*, i8** %color233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %193, i64 %idxprom232
  store i8 %190, i8* %arrayidx234, align 1
  br label %do.end.235

do.end.235:                                       ; preds = %do.body.214
  %194 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %194, i32 0, i32 5
  %195 = load i8, i8* %mbcs, align 1
  %tobool = icmp ne i8 %195, 0
  br i1 %tobool, label %if.then.236, label %if.end.464

if.then.236:                                      ; preds = %do.end.235
  %196 = load i32, i32* %n, align 4
  %dec = add nsw i32 %196, -1
  store i32 %dec, i32* %n, align 4
  %cmp237 = icmp sgt i32 %dec, 0
  br i1 %cmp237, label %if.then.239, label %if.end.400

if.then.239:                                      ; preds = %if.then.236
  %197 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer240 = getelementptr inbounds %struct.win, %struct.win* %197, i32 0, i32 3
  %l_encoding241 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer240, i32 0, i32 5
  %198 = load i32, i32* %l_encoding241, align 4
  %cmp242 = icmp eq i32 %198, 8
  br i1 %cmp242, label %cond.true.244, label %cond.false.264

cond.true.244:                                    ; preds = %if.then.239
  %199 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer245 = getelementptr inbounds %struct.win, %struct.win* %199, i32 0, i32 3
  %l_width246 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer245, i32 0, i32 1
  %200 = load i32, i32* %l_width246, align 4
  %sub247 = sub nsw i32 %200, 1
  %idxprom248 = sext i32 %sub247 to i64
  %201 = load %struct.mline*, %struct.mline** %ml, align 8
  %font249 = getelementptr inbounds %struct.mline, %struct.mline* %201, i32 0, i32 2
  %202 = load i8*, i8** %font249, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %202, i64 %idxprom248
  %203 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %203 to i32
  %cmp252 = icmp eq i32 %conv251, 255
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.352

land.lhs.true.254:                                ; preds = %cond.true.244
  %204 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer255 = getelementptr inbounds %struct.win, %struct.win* %204, i32 0, i32 3
  %l_width256 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer255, i32 0, i32 1
  %205 = load i32, i32* %l_width256, align 4
  %sub257 = sub nsw i32 %205, 1
  %idxprom258 = sext i32 %sub257 to i64
  %206 = load %struct.mline*, %struct.mline** %ml, align 8
  %image259 = getelementptr inbounds %struct.mline, %struct.mline* %206, i32 0, i32 0
  %207 = load i8*, i8** %image259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %207, i64 %idxprom258
  %208 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %208 to i32
  %cmp262 = icmp eq i32 %conv261, 255
  br i1 %cmp262, label %if.then.275, label %if.end.352

cond.false.264:                                   ; preds = %if.then.239
  %209 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer265 = getelementptr inbounds %struct.win, %struct.win* %209, i32 0, i32 3
  %l_width266 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer265, i32 0, i32 1
  %210 = load i32, i32* %l_width266, align 4
  %sub267 = sub nsw i32 %210, 1
  %idxprom268 = sext i32 %sub267 to i64
  %211 = load %struct.mline*, %struct.mline** %ml, align 8
  %font269 = getelementptr inbounds %struct.mline, %struct.mline* %211, i32 0, i32 2
  %212 = load i8*, i8** %font269, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %212, i64 %idxprom268
  %213 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %213 to i32
  %and272 = and i32 %conv271, 224
  %cmp273 = icmp eq i32 %and272, 128
  br i1 %cmp273, label %if.then.275, label %if.end.352

if.then.275:                                      ; preds = %cond.false.264, %land.lhs.true.254
  %214 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer276 = getelementptr inbounds %struct.win, %struct.win* %214, i32 0, i32 3
  %l_width277 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer276, i32 0, i32 1
  %215 = load i32, i32* %l_width277, align 4
  %sub278 = sub nsw i32 %215, 1
  %cmp279 = icmp sgt i32 %sub278, 0
  br i1 %cmp279, label %if.then.281, label %if.end.319

if.then.281:                                      ; preds = %if.then.275
  br label %do.body.282

do.body.282:                                      ; preds = %if.then.281
  %216 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %217 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer283 = getelementptr inbounds %struct.win, %struct.win* %217, i32 0, i32 3
  %l_width284 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer283, i32 0, i32 1
  %218 = load i32, i32* %l_width284, align 4
  %sub285 = sub nsw i32 %218, 1
  %sub286 = sub nsw i32 %sub285, 1
  %idxprom287 = sext i32 %sub286 to i64
  %219 = load %struct.mline*, %struct.mline** %ml, align 8
  %image288 = getelementptr inbounds %struct.mline, %struct.mline* %219, i32 0, i32 0
  %220 = load i8*, i8** %image288, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %220, i64 %idxprom287
  store i8 %216, i8* %arrayidx289, align 1
  %221 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %222 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer290 = getelementptr inbounds %struct.win, %struct.win* %222, i32 0, i32 3
  %l_width291 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer290, i32 0, i32 1
  %223 = load i32, i32* %l_width291, align 4
  %sub292 = sub nsw i32 %223, 1
  %sub293 = sub nsw i32 %sub292, 1
  %idxprom294 = sext i32 %sub293 to i64
  %224 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr295 = getelementptr inbounds %struct.mline, %struct.mline* %224, i32 0, i32 1
  %225 = load i8*, i8** %attr295, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %225, i64 %idxprom294
  store i8 %221, i8* %arrayidx296, align 1
  %226 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %227 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer297 = getelementptr inbounds %struct.win, %struct.win* %227, i32 0, i32 3
  %l_width298 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer297, i32 0, i32 1
  %228 = load i32, i32* %l_width298, align 4
  %sub299 = sub nsw i32 %228, 1
  %sub300 = sub nsw i32 %sub299, 1
  %idxprom301 = sext i32 %sub300 to i64
  %229 = load %struct.mline*, %struct.mline** %ml, align 8
  %font302 = getelementptr inbounds %struct.mline, %struct.mline* %229, i32 0, i32 2
  %230 = load i8*, i8** %font302, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %230, i64 %idxprom301
  store i8 %226, i8* %arrayidx303, align 1
  %231 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %232 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer304 = getelementptr inbounds %struct.win, %struct.win* %232, i32 0, i32 3
  %l_width305 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer304, i32 0, i32 1
  %233 = load i32, i32* %l_width305, align 4
  %sub306 = sub nsw i32 %233, 1
  %sub307 = sub nsw i32 %sub306, 1
  %idxprom308 = sext i32 %sub307 to i64
  %234 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx309 = getelementptr inbounds %struct.mline, %struct.mline* %234, i32 0, i32 3
  %235 = load i8*, i8** %fontx309, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %235, i64 %idxprom308
  store i8 %231, i8* %arrayidx310, align 1
  %236 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %237 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer311 = getelementptr inbounds %struct.win, %struct.win* %237, i32 0, i32 3
  %l_width312 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer311, i32 0, i32 1
  %238 = load i32, i32* %l_width312, align 4
  %sub313 = sub nsw i32 %238, 1
  %sub314 = sub nsw i32 %sub313, 1
  %idxprom315 = sext i32 %sub314 to i64
  %239 = load %struct.mline*, %struct.mline** %ml, align 8
  %color316 = getelementptr inbounds %struct.mline, %struct.mline* %239, i32 0, i32 4
  %240 = load i8*, i8** %color316, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %240, i64 %idxprom315
  store i8 %236, i8* %arrayidx317, align 1
  br label %do.end.318

do.end.318:                                       ; preds = %do.body.282
  br label %if.end.319

if.end.319:                                       ; preds = %do.end.318, %if.then.275
  br label %do.body.320

do.body.320:                                      ; preds = %if.end.319
  %241 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %242 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer321 = getelementptr inbounds %struct.win, %struct.win* %242, i32 0, i32 3
  %l_width322 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer321, i32 0, i32 1
  %243 = load i32, i32* %l_width322, align 4
  %sub323 = sub nsw i32 %243, 1
  %idxprom324 = sext i32 %sub323 to i64
  %244 = load %struct.mline*, %struct.mline** %ml, align 8
  %image325 = getelementptr inbounds %struct.mline, %struct.mline* %244, i32 0, i32 0
  %245 = load i8*, i8** %image325, align 8
  %arrayidx326 = getelementptr inbounds i8, i8* %245, i64 %idxprom324
  store i8 %241, i8* %arrayidx326, align 1
  %246 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %247 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer327 = getelementptr inbounds %struct.win, %struct.win* %247, i32 0, i32 3
  %l_width328 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer327, i32 0, i32 1
  %248 = load i32, i32* %l_width328, align 4
  %sub329 = sub nsw i32 %248, 1
  %idxprom330 = sext i32 %sub329 to i64
  %249 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr331 = getelementptr inbounds %struct.mline, %struct.mline* %249, i32 0, i32 1
  %250 = load i8*, i8** %attr331, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %250, i64 %idxprom330
  store i8 %246, i8* %arrayidx332, align 1
  %251 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %252 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer333 = getelementptr inbounds %struct.win, %struct.win* %252, i32 0, i32 3
  %l_width334 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer333, i32 0, i32 1
  %253 = load i32, i32* %l_width334, align 4
  %sub335 = sub nsw i32 %253, 1
  %idxprom336 = sext i32 %sub335 to i64
  %254 = load %struct.mline*, %struct.mline** %ml, align 8
  %font337 = getelementptr inbounds %struct.mline, %struct.mline* %254, i32 0, i32 2
  %255 = load i8*, i8** %font337, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %255, i64 %idxprom336
  store i8 %251, i8* %arrayidx338, align 1
  %256 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %257 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer339 = getelementptr inbounds %struct.win, %struct.win* %257, i32 0, i32 3
  %l_width340 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer339, i32 0, i32 1
  %258 = load i32, i32* %l_width340, align 4
  %sub341 = sub nsw i32 %258, 1
  %idxprom342 = sext i32 %sub341 to i64
  %259 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx343 = getelementptr inbounds %struct.mline, %struct.mline* %259, i32 0, i32 3
  %260 = load i8*, i8** %fontx343, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %260, i64 %idxprom342
  store i8 %256, i8* %arrayidx344, align 1
  %261 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %262 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer345 = getelementptr inbounds %struct.win, %struct.win* %262, i32 0, i32 3
  %l_width346 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer345, i32 0, i32 1
  %263 = load i32, i32* %l_width346, align 4
  %sub347 = sub nsw i32 %263, 1
  %idxprom348 = sext i32 %sub347 to i64
  %264 = load %struct.mline*, %struct.mline** %ml, align 8
  %color349 = getelementptr inbounds %struct.mline, %struct.mline* %264, i32 0, i32 4
  %265 = load i8*, i8** %color349, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %265, i64 %idxprom348
  store i8 %261, i8* %arrayidx350, align 1
  br label %do.end.351

do.end.351:                                       ; preds = %do.body.320
  br label %if.end.352

if.end.352:                                       ; preds = %do.end.351, %cond.false.264, %land.lhs.true.254, %cond.true.244
  br label %do.body.353

do.body.353:                                      ; preds = %if.end.352
  %266 = load %struct.mline*, %struct.mline** %ml, align 8
  %image354 = getelementptr inbounds %struct.mline, %struct.mline* %266, i32 0, i32 0
  %267 = load i8*, i8** %image354, align 8
  %268 = load i32, i32* %x.addr, align 4
  %add355 = add nsw i32 %268, 1
  %idx.ext356 = sext i32 %add355 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %267, i64 %idx.ext356
  %269 = load %struct.mline*, %struct.mline** %ml, align 8
  %image358 = getelementptr inbounds %struct.mline, %struct.mline* %269, i32 0, i32 0
  %270 = load i8*, i8** %image358, align 8
  %271 = load i32, i32* %x.addr, align 4
  %add359 = add nsw i32 %271, 2
  %idx.ext360 = sext i32 %add359 to i64
  %add.ptr361 = getelementptr inbounds i8, i8* %270, i64 %idx.ext360
  %272 = load i32, i32* %n, align 4
  %conv362 = sext i32 %272 to i64
  call void @bcopy(i8* %add.ptr357, i8* %add.ptr361, i64 %conv362) #1
  %273 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr363 = getelementptr inbounds %struct.mline, %struct.mline* %273, i32 0, i32 1
  %274 = load i8*, i8** %attr363, align 8
  %275 = load i32, i32* %x.addr, align 4
  %add364 = add nsw i32 %275, 1
  %idx.ext365 = sext i32 %add364 to i64
  %add.ptr366 = getelementptr inbounds i8, i8* %274, i64 %idx.ext365
  %276 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr367 = getelementptr inbounds %struct.mline, %struct.mline* %276, i32 0, i32 1
  %277 = load i8*, i8** %attr367, align 8
  %278 = load i32, i32* %x.addr, align 4
  %add368 = add nsw i32 %278, 2
  %idx.ext369 = sext i32 %add368 to i64
  %add.ptr370 = getelementptr inbounds i8, i8* %277, i64 %idx.ext369
  %279 = load i32, i32* %n, align 4
  %conv371 = sext i32 %279 to i64
  call void @bcopy(i8* %add.ptr366, i8* %add.ptr370, i64 %conv371) #1
  %280 = load %struct.mline*, %struct.mline** %ml, align 8
  %font372 = getelementptr inbounds %struct.mline, %struct.mline* %280, i32 0, i32 2
  %281 = load i8*, i8** %font372, align 8
  %282 = load i32, i32* %x.addr, align 4
  %add373 = add nsw i32 %282, 1
  %idx.ext374 = sext i32 %add373 to i64
  %add.ptr375 = getelementptr inbounds i8, i8* %281, i64 %idx.ext374
  %283 = load %struct.mline*, %struct.mline** %ml, align 8
  %font376 = getelementptr inbounds %struct.mline, %struct.mline* %283, i32 0, i32 2
  %284 = load i8*, i8** %font376, align 8
  %285 = load i32, i32* %x.addr, align 4
  %add377 = add nsw i32 %285, 2
  %idx.ext378 = sext i32 %add377 to i64
  %add.ptr379 = getelementptr inbounds i8, i8* %284, i64 %idx.ext378
  %286 = load i32, i32* %n, align 4
  %conv380 = sext i32 %286 to i64
  call void @bcopy(i8* %add.ptr375, i8* %add.ptr379, i64 %conv380) #1
  %287 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx381 = getelementptr inbounds %struct.mline, %struct.mline* %287, i32 0, i32 3
  %288 = load i8*, i8** %fontx381, align 8
  %289 = load i32, i32* %x.addr, align 4
  %add382 = add nsw i32 %289, 1
  %idx.ext383 = sext i32 %add382 to i64
  %add.ptr384 = getelementptr inbounds i8, i8* %288, i64 %idx.ext383
  %290 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx385 = getelementptr inbounds %struct.mline, %struct.mline* %290, i32 0, i32 3
  %291 = load i8*, i8** %fontx385, align 8
  %292 = load i32, i32* %x.addr, align 4
  %add386 = add nsw i32 %292, 2
  %idx.ext387 = sext i32 %add386 to i64
  %add.ptr388 = getelementptr inbounds i8, i8* %291, i64 %idx.ext387
  %293 = load i32, i32* %n, align 4
  %conv389 = sext i32 %293 to i64
  call void @bcopy(i8* %add.ptr384, i8* %add.ptr388, i64 %conv389) #1
  %294 = load %struct.mline*, %struct.mline** %ml, align 8
  %color390 = getelementptr inbounds %struct.mline, %struct.mline* %294, i32 0, i32 4
  %295 = load i8*, i8** %color390, align 8
  %296 = load i32, i32* %x.addr, align 4
  %add391 = add nsw i32 %296, 1
  %idx.ext392 = sext i32 %add391 to i64
  %add.ptr393 = getelementptr inbounds i8, i8* %295, i64 %idx.ext392
  %297 = load %struct.mline*, %struct.mline** %ml, align 8
  %color394 = getelementptr inbounds %struct.mline, %struct.mline* %297, i32 0, i32 4
  %298 = load i8*, i8** %color394, align 8
  %299 = load i32, i32* %x.addr, align 4
  %add395 = add nsw i32 %299, 2
  %idx.ext396 = sext i32 %add395 to i64
  %add.ptr397 = getelementptr inbounds i8, i8* %298, i64 %idx.ext396
  %300 = load i32, i32* %n, align 4
  %conv398 = sext i32 %300 to i64
  call void @bcopy(i8* %add.ptr393, i8* %add.ptr397, i64 %conv398) #1
  br label %do.end.399

do.end.399:                                       ; preds = %do.body.353
  br label %if.end.400

if.end.400:                                       ; preds = %do.end.399, %if.then.236
  br label %do.body.401

do.body.401:                                      ; preds = %if.end.400
  %301 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image402 = getelementptr inbounds %struct.mchar, %struct.mchar* %301, i32 0, i32 0
  %302 = load i8, i8* %image402, align 1
  %303 = load i32, i32* %x.addr, align 4
  %add403 = add nsw i32 %303, 1
  %idxprom404 = sext i32 %add403 to i64
  %304 = load %struct.mline*, %struct.mline** %ml, align 8
  %image405 = getelementptr inbounds %struct.mline, %struct.mline* %304, i32 0, i32 0
  %305 = load i8*, i8** %image405, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %305, i64 %idxprom404
  store i8 %302, i8* %arrayidx406, align 1
  %306 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr407 = getelementptr inbounds %struct.mchar, %struct.mchar* %306, i32 0, i32 1
  %307 = load i8, i8* %attr407, align 1
  %308 = load i32, i32* %x.addr, align 4
  %add408 = add nsw i32 %308, 1
  %idxprom409 = sext i32 %add408 to i64
  %309 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr410 = getelementptr inbounds %struct.mline, %struct.mline* %309, i32 0, i32 1
  %310 = load i8*, i8** %attr410, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %310, i64 %idxprom409
  store i8 %307, i8* %arrayidx411, align 1
  %311 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %font412 = getelementptr inbounds %struct.mchar, %struct.mchar* %311, i32 0, i32 2
  %312 = load i8, i8* %font412, align 1
  %313 = load i32, i32* %x.addr, align 4
  %add413 = add nsw i32 %313, 1
  %idxprom414 = sext i32 %add413 to i64
  %314 = load %struct.mline*, %struct.mline** %ml, align 8
  %font415 = getelementptr inbounds %struct.mline, %struct.mline* %314, i32 0, i32 2
  %315 = load i8*, i8** %font415, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %315, i64 %idxprom414
  store i8 %312, i8* %arrayidx416, align 1
  %316 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %fontx417 = getelementptr inbounds %struct.mchar, %struct.mchar* %316, i32 0, i32 3
  %317 = load i8, i8* %fontx417, align 1
  %318 = load i32, i32* %x.addr, align 4
  %add418 = add nsw i32 %318, 1
  %idxprom419 = sext i32 %add418 to i64
  %319 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx420 = getelementptr inbounds %struct.mline, %struct.mline* %319, i32 0, i32 3
  %320 = load i8*, i8** %fontx420, align 8
  %arrayidx421 = getelementptr inbounds i8, i8* %320, i64 %idxprom419
  store i8 %317, i8* %arrayidx421, align 1
  %321 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color422 = getelementptr inbounds %struct.mchar, %struct.mchar* %321, i32 0, i32 4
  %322 = load i8, i8* %color422, align 1
  %323 = load i32, i32* %x.addr, align 4
  %add423 = add nsw i32 %323, 1
  %idxprom424 = sext i32 %add423 to i64
  %324 = load %struct.mline*, %struct.mline** %ml, align 8
  %color425 = getelementptr inbounds %struct.mline, %struct.mline* %324, i32 0, i32 4
  %325 = load i8*, i8** %color425, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %325, i64 %idxprom424
  store i8 %322, i8* %arrayidx426, align 1
  br label %do.end.427

do.end.427:                                       ; preds = %do.body.401
  %326 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs428 = getelementptr inbounds %struct.mchar, %struct.mchar* %326, i32 0, i32 5
  %327 = load i8, i8* %mbcs428, align 1
  %328 = load i32, i32* %x.addr, align 4
  %add429 = add nsw i32 %328, 1
  %idxprom430 = sext i32 %add429 to i64
  %329 = load %struct.mline*, %struct.mline** %ml, align 8
  %image431 = getelementptr inbounds %struct.mline, %struct.mline* %329, i32 0, i32 0
  %330 = load i8*, i8** %image431, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %330, i64 %idxprom430
  store i8 %327, i8* %arrayidx432, align 1
  %331 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer433 = getelementptr inbounds %struct.win, %struct.win* %331, i32 0, i32 3
  %l_encoding434 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer433, i32 0, i32 5
  %332 = load i32, i32* %l_encoding434, align 4
  %cmp435 = icmp ne i32 %332, 8
  br i1 %cmp435, label %if.then.437, label %if.else

if.then.437:                                      ; preds = %do.end.427
  %333 = load i32, i32* %x.addr, align 4
  %add438 = add nsw i32 %333, 1
  %idxprom439 = sext i32 %add438 to i64
  %334 = load %struct.mline*, %struct.mline** %ml, align 8
  %font440 = getelementptr inbounds %struct.mline, %struct.mline* %334, i32 0, i32 2
  %335 = load i8*, i8** %font440, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %335, i64 %idxprom439
  %336 = load i8, i8* %arrayidx441, align 1
  %conv442 = zext i8 %336 to i32
  %or = or i32 %conv442, 128
  %conv443 = trunc i32 %or to i8
  store i8 %conv443, i8* %arrayidx441, align 1
  br label %if.end.463

if.else:                                          ; preds = %do.end.427
  %337 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer444 = getelementptr inbounds %struct.win, %struct.win* %337, i32 0, i32 3
  %l_encoding445 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer444, i32 0, i32 5
  %338 = load i32, i32* %l_encoding445, align 4
  %cmp446 = icmp eq i32 %338, 8
  br i1 %cmp446, label %land.lhs.true.448, label %if.end.462

land.lhs.true.448:                                ; preds = %if.else
  %339 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs449 = getelementptr inbounds %struct.mchar, %struct.mchar* %339, i32 0, i32 5
  %340 = load i8, i8* %mbcs449, align 1
  %conv450 = zext i8 %340 to i32
  %tobool451 = icmp ne i32 %conv450, 0
  br i1 %tobool451, label %if.then.452, label %if.end.462

if.then.452:                                      ; preds = %land.lhs.true.448
  %341 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs453 = getelementptr inbounds %struct.mchar, %struct.mchar* %341, i32 0, i32 5
  %342 = load i8, i8* %mbcs453, align 1
  %343 = load i32, i32* %x.addr, align 4
  %add454 = add nsw i32 %343, 1
  %idxprom455 = sext i32 %add454 to i64
  %344 = load %struct.mline*, %struct.mline** %ml, align 8
  %font456 = getelementptr inbounds %struct.mline, %struct.mline* %344, i32 0, i32 2
  %345 = load i8*, i8** %font456, align 8
  %arrayidx457 = getelementptr inbounds i8, i8* %345, i64 %idxprom455
  store i8 %342, i8* %arrayidx457, align 1
  %346 = load i32, i32* %x.addr, align 4
  %add458 = add nsw i32 %346, 1
  %idxprom459 = sext i32 %add458 to i64
  %347 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx460 = getelementptr inbounds %struct.mline, %struct.mline* %347, i32 0, i32 3
  %348 = load i8*, i8** %fontx460, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %348, i64 %idxprom459
  store i8 0, i8* %arrayidx461, align 1
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.452, %land.lhs.true.448, %if.else
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.then.437
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %do.end.235
  ret void
}

declare void @LInsChar(%struct.layer*, %struct.mchar*, i32, i32, %struct.mline*) #4

; Function Attrs: nounwind uwtable
define internal void @MPutChar(%struct.win* %p, %struct.mchar* %c, i32 %x, i32 %y) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @MFixLine(%struct.win* %0, i32 %1, %struct.mchar* %2)
  %3 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 36
  %5 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %5, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %ml, align 8
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %7 = load i32, i32* %l_encoding, align 4
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %x.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %9, i32 0, i32 2
  %10 = load i8*, i8** %font, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %cond.true
  %12 = load i32, i32* %x.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %13, i32 0, i32 0
  %14 = load i8*, i8** %image, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp eq i32 %conv7, 255
  br i1 %cmp8, label %if.then, label %if.end.52

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %x.addr, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.mline*, %struct.mline** %ml, align 8
  %font11 = getelementptr inbounds %struct.mline, %struct.mline* %17, i32 0, i32 2
  %18 = load i8*, i8** %font11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  %19 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %and = and i32 %conv13, 224
  %cmp14 = icmp eq i32 %and, 128
  br i1 %cmp14, label %if.then, label %if.end.52

if.then:                                          ; preds = %cond.false, %land.lhs.true
  %20 = load i32, i32* %x.addr, align 4
  %cmp16 = icmp sgt i32 %20, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %21 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %22 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom19 = sext i32 %sub to i64
  %23 = load %struct.mline*, %struct.mline** %ml, align 8
  %image20 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 0
  %24 = load i8*, i8** %image20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %idxprom19
  store i8 %21, i8* %arrayidx21, align 1
  %25 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %26 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %26, 1
  %idxprom23 = sext i32 %sub22 to i64
  %27 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %27, i32 0, i32 1
  %28 = load i8*, i8** %attr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 %idxprom23
  store i8 %25, i8* %arrayidx24, align 1
  %29 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %30 = load i32, i32* %x.addr, align 4
  %sub25 = sub nsw i32 %30, 1
  %idxprom26 = sext i32 %sub25 to i64
  %31 = load %struct.mline*, %struct.mline** %ml, align 8
  %font27 = getelementptr inbounds %struct.mline, %struct.mline* %31, i32 0, i32 2
  %32 = load i8*, i8** %font27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 %idxprom26
  store i8 %29, i8* %arrayidx28, align 1
  %33 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %34 = load i32, i32* %x.addr, align 4
  %sub29 = sub nsw i32 %34, 1
  %idxprom30 = sext i32 %sub29 to i64
  %35 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %35, i32 0, i32 3
  %36 = load i8*, i8** %fontx, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 %idxprom30
  store i8 %33, i8* %arrayidx31, align 1
  %37 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %38 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %38, 1
  %idxprom33 = sext i32 %sub32 to i64
  %39 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %39, i32 0, i32 4
  %40 = load i8*, i8** %color, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %40, i64 %idxprom33
  store i8 %37, i8* %arrayidx34, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %do.body.35

do.body.35:                                       ; preds = %if.end
  %41 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %42 = load i32, i32* %x.addr, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct.mline*, %struct.mline** %ml, align 8
  %image37 = getelementptr inbounds %struct.mline, %struct.mline* %43, i32 0, i32 0
  %44 = load i8*, i8** %image37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 %idxprom36
  store i8 %41, i8* %arrayidx38, align 1
  %45 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %46 = load i32, i32* %x.addr, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr40 = getelementptr inbounds %struct.mline, %struct.mline* %47, i32 0, i32 1
  %48 = load i8*, i8** %attr40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %48, i64 %idxprom39
  store i8 %45, i8* %arrayidx41, align 1
  %49 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %50 = load i32, i32* %x.addr, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct.mline*, %struct.mline** %ml, align 8
  %font43 = getelementptr inbounds %struct.mline, %struct.mline* %51, i32 0, i32 2
  %52 = load i8*, i8** %font43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %52, i64 %idxprom42
  store i8 %49, i8* %arrayidx44, align 1
  %53 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %54 = load i32, i32* %x.addr, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx46 = getelementptr inbounds %struct.mline, %struct.mline* %55, i32 0, i32 3
  %56 = load i8*, i8** %fontx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %56, i64 %idxprom45
  store i8 %53, i8* %arrayidx47, align 1
  %57 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %58 = load i32, i32* %x.addr, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load %struct.mline*, %struct.mline** %ml, align 8
  %color49 = getelementptr inbounds %struct.mline, %struct.mline* %59, i32 0, i32 4
  %60 = load i8*, i8** %color49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %60, i64 %idxprom48
  store i8 %57, i8* %arrayidx50, align 1
  br label %do.end.51

do.end.51:                                        ; preds = %do.body.35
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %cond.false, %land.lhs.true, %cond.true
  %61 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer53 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 3
  %l_encoding54 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer53, i32 0, i32 5
  %62 = load i32, i32* %l_encoding54, align 4
  %cmp55 = icmp eq i32 %62, 8
  br i1 %cmp55, label %cond.true.57, label %cond.false.72

cond.true.57:                                     ; preds = %if.end.52
  %63 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %63, 1
  %idxprom58 = sext i32 %add to i64
  %64 = load %struct.mline*, %struct.mline** %ml, align 8
  %font59 = getelementptr inbounds %struct.mline, %struct.mline* %64, i32 0, i32 2
  %65 = load i8*, i8** %font59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %65, i64 %idxprom58
  %66 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %66 to i32
  %cmp62 = icmp eq i32 %conv61, 255
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.128

land.lhs.true.64:                                 ; preds = %cond.true.57
  %67 = load i32, i32* %x.addr, align 4
  %add65 = add nsw i32 %67, 1
  %idxprom66 = sext i32 %add65 to i64
  %68 = load %struct.mline*, %struct.mline** %ml, align 8
  %image67 = getelementptr inbounds %struct.mline, %struct.mline* %68, i32 0, i32 0
  %69 = load i8*, i8** %image67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 %idxprom66
  %70 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %70 to i32
  %cmp70 = icmp eq i32 %conv69, 255
  br i1 %cmp70, label %if.then.88, label %if.end.128

cond.false.72:                                    ; preds = %if.end.52
  %71 = load i32, i32* %x.addr, align 4
  %idxprom73 = sext i32 %71 to i64
  %72 = load %struct.mline*, %struct.mline** %ml, align 8
  %font74 = getelementptr inbounds %struct.mline, %struct.mline* %72, i32 0, i32 2
  %73 = load i8*, i8** %font74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %73, i64 %idxprom73
  %74 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %74 to i32
  %and77 = and i32 %conv76, 31
  %cmp78 = icmp ne i32 %and77, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.128

land.lhs.true.80:                                 ; preds = %cond.false.72
  %75 = load i32, i32* %x.addr, align 4
  %idxprom81 = sext i32 %75 to i64
  %76 = load %struct.mline*, %struct.mline** %ml, align 8
  %font82 = getelementptr inbounds %struct.mline, %struct.mline* %76, i32 0, i32 2
  %77 = load i8*, i8** %font82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %77, i64 %idxprom81
  %78 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %78 to i32
  %and85 = and i32 %conv84, 224
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.128

if.then.88:                                       ; preds = %land.lhs.true.80, %land.lhs.true.64
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  %79 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %80 = load i32, i32* %x.addr, align 4
  %idxprom90 = sext i32 %80 to i64
  %81 = load %struct.mline*, %struct.mline** %ml, align 8
  %image91 = getelementptr inbounds %struct.mline, %struct.mline* %81, i32 0, i32 0
  %82 = load i8*, i8** %image91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %82, i64 %idxprom90
  store i8 %79, i8* %arrayidx92, align 1
  %83 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %84 = load i32, i32* %x.addr, align 4
  %idxprom93 = sext i32 %84 to i64
  %85 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr94 = getelementptr inbounds %struct.mline, %struct.mline* %85, i32 0, i32 1
  %86 = load i8*, i8** %attr94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %86, i64 %idxprom93
  store i8 %83, i8* %arrayidx95, align 1
  %87 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %88 = load i32, i32* %x.addr, align 4
  %idxprom96 = sext i32 %88 to i64
  %89 = load %struct.mline*, %struct.mline** %ml, align 8
  %font97 = getelementptr inbounds %struct.mline, %struct.mline* %89, i32 0, i32 2
  %90 = load i8*, i8** %font97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %90, i64 %idxprom96
  store i8 %87, i8* %arrayidx98, align 1
  %91 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %92 = load i32, i32* %x.addr, align 4
  %idxprom99 = sext i32 %92 to i64
  %93 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx100 = getelementptr inbounds %struct.mline, %struct.mline* %93, i32 0, i32 3
  %94 = load i8*, i8** %fontx100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %94, i64 %idxprom99
  store i8 %91, i8* %arrayidx101, align 1
  %95 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %96 = load i32, i32* %x.addr, align 4
  %idxprom102 = sext i32 %96 to i64
  %97 = load %struct.mline*, %struct.mline** %ml, align 8
  %color103 = getelementptr inbounds %struct.mline, %struct.mline* %97, i32 0, i32 4
  %98 = load i8*, i8** %color103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %98, i64 %idxprom102
  store i8 %95, i8* %arrayidx104, align 1
  br label %do.end.105

do.end.105:                                       ; preds = %do.body.89
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %99 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %100 = load i32, i32* %x.addr, align 4
  %add107 = add nsw i32 %100, 1
  %idxprom108 = sext i32 %add107 to i64
  %101 = load %struct.mline*, %struct.mline** %ml, align 8
  %image109 = getelementptr inbounds %struct.mline, %struct.mline* %101, i32 0, i32 0
  %102 = load i8*, i8** %image109, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %102, i64 %idxprom108
  store i8 %99, i8* %arrayidx110, align 1
  %103 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %104 = load i32, i32* %x.addr, align 4
  %add111 = add nsw i32 %104, 1
  %idxprom112 = sext i32 %add111 to i64
  %105 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr113 = getelementptr inbounds %struct.mline, %struct.mline* %105, i32 0, i32 1
  %106 = load i8*, i8** %attr113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %106, i64 %idxprom112
  store i8 %103, i8* %arrayidx114, align 1
  %107 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %108 = load i32, i32* %x.addr, align 4
  %add115 = add nsw i32 %108, 1
  %idxprom116 = sext i32 %add115 to i64
  %109 = load %struct.mline*, %struct.mline** %ml, align 8
  %font117 = getelementptr inbounds %struct.mline, %struct.mline* %109, i32 0, i32 2
  %110 = load i8*, i8** %font117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %110, i64 %idxprom116
  store i8 %107, i8* %arrayidx118, align 1
  %111 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %112 = load i32, i32* %x.addr, align 4
  %add119 = add nsw i32 %112, 1
  %idxprom120 = sext i32 %add119 to i64
  %113 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx121 = getelementptr inbounds %struct.mline, %struct.mline* %113, i32 0, i32 3
  %114 = load i8*, i8** %fontx121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %114, i64 %idxprom120
  store i8 %111, i8* %arrayidx122, align 1
  %115 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %116 = load i32, i32* %x.addr, align 4
  %add123 = add nsw i32 %116, 1
  %idxprom124 = sext i32 %add123 to i64
  %117 = load %struct.mline*, %struct.mline** %ml, align 8
  %color125 = getelementptr inbounds %struct.mline, %struct.mline* %117, i32 0, i32 4
  %118 = load i8*, i8** %color125, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %118, i64 %idxprom124
  store i8 %115, i8* %arrayidx126, align 1
  br label %do.end.127

do.end.127:                                       ; preds = %do.body.106
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %land.lhs.true.80, %cond.false.72, %land.lhs.true.64, %cond.true.57
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %119 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image130 = getelementptr inbounds %struct.mchar, %struct.mchar* %119, i32 0, i32 0
  %120 = load i8, i8* %image130, align 1
  %121 = load i32, i32* %x.addr, align 4
  %idxprom131 = sext i32 %121 to i64
  %122 = load %struct.mline*, %struct.mline** %ml, align 8
  %image132 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 0
  %123 = load i8*, i8** %image132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %123, i64 %idxprom131
  store i8 %120, i8* %arrayidx133, align 1
  %124 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr134 = getelementptr inbounds %struct.mchar, %struct.mchar* %124, i32 0, i32 1
  %125 = load i8, i8* %attr134, align 1
  %126 = load i32, i32* %x.addr, align 4
  %idxprom135 = sext i32 %126 to i64
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr136 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 1
  %128 = load i8*, i8** %attr136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %128, i64 %idxprom135
  store i8 %125, i8* %arrayidx137, align 1
  %129 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %font138 = getelementptr inbounds %struct.mchar, %struct.mchar* %129, i32 0, i32 2
  %130 = load i8, i8* %font138, align 1
  %131 = load i32, i32* %x.addr, align 4
  %idxprom139 = sext i32 %131 to i64
  %132 = load %struct.mline*, %struct.mline** %ml, align 8
  %font140 = getelementptr inbounds %struct.mline, %struct.mline* %132, i32 0, i32 2
  %133 = load i8*, i8** %font140, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %133, i64 %idxprom139
  store i8 %130, i8* %arrayidx141, align 1
  %134 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %fontx142 = getelementptr inbounds %struct.mchar, %struct.mchar* %134, i32 0, i32 3
  %135 = load i8, i8* %fontx142, align 1
  %136 = load i32, i32* %x.addr, align 4
  %idxprom143 = sext i32 %136 to i64
  %137 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx144 = getelementptr inbounds %struct.mline, %struct.mline* %137, i32 0, i32 3
  %138 = load i8*, i8** %fontx144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %138, i64 %idxprom143
  store i8 %135, i8* %arrayidx145, align 1
  %139 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color146 = getelementptr inbounds %struct.mchar, %struct.mchar* %139, i32 0, i32 4
  %140 = load i8, i8* %color146, align 1
  %141 = load i32, i32* %x.addr, align 4
  %idxprom147 = sext i32 %141 to i64
  %142 = load %struct.mline*, %struct.mline** %ml, align 8
  %color148 = getelementptr inbounds %struct.mline, %struct.mline* %142, i32 0, i32 4
  %143 = load i8*, i8** %color148, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %143, i64 %idxprom147
  store i8 %140, i8* %arrayidx149, align 1
  br label %do.end.150

do.end.150:                                       ; preds = %do.body.129
  %144 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %144, i32 0, i32 5
  %145 = load i8, i8* %mbcs, align 1
  %tobool = icmp ne i8 %145, 0
  br i1 %tobool, label %if.then.151, label %if.end.306

if.then.151:                                      ; preds = %do.end.150
  %146 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer152 = getelementptr inbounds %struct.win, %struct.win* %146, i32 0, i32 3
  %l_encoding153 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer152, i32 0, i32 5
  %147 = load i32, i32* %l_encoding153, align 4
  %cmp154 = icmp eq i32 %147, 8
  br i1 %cmp154, label %cond.true.156, label %cond.false.174

cond.true.156:                                    ; preds = %if.then.151
  %148 = load i32, i32* %x.addr, align 4
  %add157 = add nsw i32 %148, 1
  %add158 = add nsw i32 %add157, 1
  %idxprom159 = sext i32 %add158 to i64
  %149 = load %struct.mline*, %struct.mline** %ml, align 8
  %font160 = getelementptr inbounds %struct.mline, %struct.mline* %149, i32 0, i32 2
  %150 = load i8*, i8** %font160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %150, i64 %idxprom159
  %151 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %151 to i32
  %cmp163 = icmp eq i32 %conv162, 255
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.242

land.lhs.true.165:                                ; preds = %cond.true.156
  %152 = load i32, i32* %x.addr, align 4
  %add166 = add nsw i32 %152, 1
  %add167 = add nsw i32 %add166, 1
  %idxprom168 = sext i32 %add167 to i64
  %153 = load %struct.mline*, %struct.mline** %ml, align 8
  %image169 = getelementptr inbounds %struct.mline, %struct.mline* %153, i32 0, i32 0
  %154 = load i8*, i8** %image169, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %154, i64 %idxprom168
  %155 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %155 to i32
  %cmp172 = icmp eq i32 %conv171, 255
  br i1 %cmp172, label %if.then.192, label %if.end.242

cond.false.174:                                   ; preds = %if.then.151
  %156 = load i32, i32* %x.addr, align 4
  %add175 = add nsw i32 %156, 1
  %idxprom176 = sext i32 %add175 to i64
  %157 = load %struct.mline*, %struct.mline** %ml, align 8
  %font177 = getelementptr inbounds %struct.mline, %struct.mline* %157, i32 0, i32 2
  %158 = load i8*, i8** %font177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %158, i64 %idxprom176
  %159 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %159 to i32
  %and180 = and i32 %conv179, 31
  %cmp181 = icmp ne i32 %and180, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.242

land.lhs.true.183:                                ; preds = %cond.false.174
  %160 = load i32, i32* %x.addr, align 4
  %add184 = add nsw i32 %160, 1
  %idxprom185 = sext i32 %add184 to i64
  %161 = load %struct.mline*, %struct.mline** %ml, align 8
  %font186 = getelementptr inbounds %struct.mline, %struct.mline* %161, i32 0, i32 2
  %162 = load i8*, i8** %font186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %162, i64 %idxprom185
  %163 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %163 to i32
  %and189 = and i32 %conv188, 224
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %if.then.192, label %if.end.242

if.then.192:                                      ; preds = %land.lhs.true.183, %land.lhs.true.165
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %164 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %165 = load i32, i32* %x.addr, align 4
  %add194 = add nsw i32 %165, 1
  %idxprom195 = sext i32 %add194 to i64
  %166 = load %struct.mline*, %struct.mline** %ml, align 8
  %image196 = getelementptr inbounds %struct.mline, %struct.mline* %166, i32 0, i32 0
  %167 = load i8*, i8** %image196, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %167, i64 %idxprom195
  store i8 %164, i8* %arrayidx197, align 1
  %168 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %169 = load i32, i32* %x.addr, align 4
  %add198 = add nsw i32 %169, 1
  %idxprom199 = sext i32 %add198 to i64
  %170 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr200 = getelementptr inbounds %struct.mline, %struct.mline* %170, i32 0, i32 1
  %171 = load i8*, i8** %attr200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %171, i64 %idxprom199
  store i8 %168, i8* %arrayidx201, align 1
  %172 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %173 = load i32, i32* %x.addr, align 4
  %add202 = add nsw i32 %173, 1
  %idxprom203 = sext i32 %add202 to i64
  %174 = load %struct.mline*, %struct.mline** %ml, align 8
  %font204 = getelementptr inbounds %struct.mline, %struct.mline* %174, i32 0, i32 2
  %175 = load i8*, i8** %font204, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %175, i64 %idxprom203
  store i8 %172, i8* %arrayidx205, align 1
  %176 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %177 = load i32, i32* %x.addr, align 4
  %add206 = add nsw i32 %177, 1
  %idxprom207 = sext i32 %add206 to i64
  %178 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx208 = getelementptr inbounds %struct.mline, %struct.mline* %178, i32 0, i32 3
  %179 = load i8*, i8** %fontx208, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %179, i64 %idxprom207
  store i8 %176, i8* %arrayidx209, align 1
  %180 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %181 = load i32, i32* %x.addr, align 4
  %add210 = add nsw i32 %181, 1
  %idxprom211 = sext i32 %add210 to i64
  %182 = load %struct.mline*, %struct.mline** %ml, align 8
  %color212 = getelementptr inbounds %struct.mline, %struct.mline* %182, i32 0, i32 4
  %183 = load i8*, i8** %color212, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %183, i64 %idxprom211
  store i8 %180, i8* %arrayidx213, align 1
  br label %do.end.214

do.end.214:                                       ; preds = %do.body.193
  br label %do.body.215

do.body.215:                                      ; preds = %do.end.214
  %184 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %185 = load i32, i32* %x.addr, align 4
  %add216 = add nsw i32 %185, 1
  %add217 = add nsw i32 %add216, 1
  %idxprom218 = sext i32 %add217 to i64
  %186 = load %struct.mline*, %struct.mline** %ml, align 8
  %image219 = getelementptr inbounds %struct.mline, %struct.mline* %186, i32 0, i32 0
  %187 = load i8*, i8** %image219, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %187, i64 %idxprom218
  store i8 %184, i8* %arrayidx220, align 1
  %188 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %189 = load i32, i32* %x.addr, align 4
  %add221 = add nsw i32 %189, 1
  %add222 = add nsw i32 %add221, 1
  %idxprom223 = sext i32 %add222 to i64
  %190 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr224 = getelementptr inbounds %struct.mline, %struct.mline* %190, i32 0, i32 1
  %191 = load i8*, i8** %attr224, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %191, i64 %idxprom223
  store i8 %188, i8* %arrayidx225, align 1
  %192 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %193 = load i32, i32* %x.addr, align 4
  %add226 = add nsw i32 %193, 1
  %add227 = add nsw i32 %add226, 1
  %idxprom228 = sext i32 %add227 to i64
  %194 = load %struct.mline*, %struct.mline** %ml, align 8
  %font229 = getelementptr inbounds %struct.mline, %struct.mline* %194, i32 0, i32 2
  %195 = load i8*, i8** %font229, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %195, i64 %idxprom228
  store i8 %192, i8* %arrayidx230, align 1
  %196 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %197 = load i32, i32* %x.addr, align 4
  %add231 = add nsw i32 %197, 1
  %add232 = add nsw i32 %add231, 1
  %idxprom233 = sext i32 %add232 to i64
  %198 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx234 = getelementptr inbounds %struct.mline, %struct.mline* %198, i32 0, i32 3
  %199 = load i8*, i8** %fontx234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %199, i64 %idxprom233
  store i8 %196, i8* %arrayidx235, align 1
  %200 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %201 = load i32, i32* %x.addr, align 4
  %add236 = add nsw i32 %201, 1
  %add237 = add nsw i32 %add236, 1
  %idxprom238 = sext i32 %add237 to i64
  %202 = load %struct.mline*, %struct.mline** %ml, align 8
  %color239 = getelementptr inbounds %struct.mline, %struct.mline* %202, i32 0, i32 4
  %203 = load i8*, i8** %color239, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %203, i64 %idxprom238
  store i8 %200, i8* %arrayidx240, align 1
  br label %do.end.241

do.end.241:                                       ; preds = %do.body.215
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %land.lhs.true.183, %cond.false.174, %land.lhs.true.165, %cond.true.156
  br label %do.body.243

do.body.243:                                      ; preds = %if.end.242
  %204 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image244 = getelementptr inbounds %struct.mchar, %struct.mchar* %204, i32 0, i32 0
  %205 = load i8, i8* %image244, align 1
  %206 = load i32, i32* %x.addr, align 4
  %add245 = add nsw i32 %206, 1
  %idxprom246 = sext i32 %add245 to i64
  %207 = load %struct.mline*, %struct.mline** %ml, align 8
  %image247 = getelementptr inbounds %struct.mline, %struct.mline* %207, i32 0, i32 0
  %208 = load i8*, i8** %image247, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %208, i64 %idxprom246
  store i8 %205, i8* %arrayidx248, align 1
  %209 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr249 = getelementptr inbounds %struct.mchar, %struct.mchar* %209, i32 0, i32 1
  %210 = load i8, i8* %attr249, align 1
  %211 = load i32, i32* %x.addr, align 4
  %add250 = add nsw i32 %211, 1
  %idxprom251 = sext i32 %add250 to i64
  %212 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr252 = getelementptr inbounds %struct.mline, %struct.mline* %212, i32 0, i32 1
  %213 = load i8*, i8** %attr252, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %213, i64 %idxprom251
  store i8 %210, i8* %arrayidx253, align 1
  %214 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %font254 = getelementptr inbounds %struct.mchar, %struct.mchar* %214, i32 0, i32 2
  %215 = load i8, i8* %font254, align 1
  %216 = load i32, i32* %x.addr, align 4
  %add255 = add nsw i32 %216, 1
  %idxprom256 = sext i32 %add255 to i64
  %217 = load %struct.mline*, %struct.mline** %ml, align 8
  %font257 = getelementptr inbounds %struct.mline, %struct.mline* %217, i32 0, i32 2
  %218 = load i8*, i8** %font257, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %218, i64 %idxprom256
  store i8 %215, i8* %arrayidx258, align 1
  %219 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %fontx259 = getelementptr inbounds %struct.mchar, %struct.mchar* %219, i32 0, i32 3
  %220 = load i8, i8* %fontx259, align 1
  %221 = load i32, i32* %x.addr, align 4
  %add260 = add nsw i32 %221, 1
  %idxprom261 = sext i32 %add260 to i64
  %222 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx262 = getelementptr inbounds %struct.mline, %struct.mline* %222, i32 0, i32 3
  %223 = load i8*, i8** %fontx262, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %223, i64 %idxprom261
  store i8 %220, i8* %arrayidx263, align 1
  %224 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color264 = getelementptr inbounds %struct.mchar, %struct.mchar* %224, i32 0, i32 4
  %225 = load i8, i8* %color264, align 1
  %226 = load i32, i32* %x.addr, align 4
  %add265 = add nsw i32 %226, 1
  %idxprom266 = sext i32 %add265 to i64
  %227 = load %struct.mline*, %struct.mline** %ml, align 8
  %color267 = getelementptr inbounds %struct.mline, %struct.mline* %227, i32 0, i32 4
  %228 = load i8*, i8** %color267, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %228, i64 %idxprom266
  store i8 %225, i8* %arrayidx268, align 1
  br label %do.end.269

do.end.269:                                       ; preds = %do.body.243
  %229 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs270 = getelementptr inbounds %struct.mchar, %struct.mchar* %229, i32 0, i32 5
  %230 = load i8, i8* %mbcs270, align 1
  %231 = load i32, i32* %x.addr, align 4
  %add271 = add nsw i32 %231, 1
  %idxprom272 = sext i32 %add271 to i64
  %232 = load %struct.mline*, %struct.mline** %ml, align 8
  %image273 = getelementptr inbounds %struct.mline, %struct.mline* %232, i32 0, i32 0
  %233 = load i8*, i8** %image273, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %233, i64 %idxprom272
  store i8 %230, i8* %arrayidx274, align 1
  %234 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer275 = getelementptr inbounds %struct.win, %struct.win* %234, i32 0, i32 3
  %l_encoding276 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer275, i32 0, i32 5
  %235 = load i32, i32* %l_encoding276, align 4
  %cmp277 = icmp ne i32 %235, 8
  br i1 %cmp277, label %if.then.279, label %if.else

if.then.279:                                      ; preds = %do.end.269
  %236 = load i32, i32* %x.addr, align 4
  %add280 = add nsw i32 %236, 1
  %idxprom281 = sext i32 %add280 to i64
  %237 = load %struct.mline*, %struct.mline** %ml, align 8
  %font282 = getelementptr inbounds %struct.mline, %struct.mline* %237, i32 0, i32 2
  %238 = load i8*, i8** %font282, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %238, i64 %idxprom281
  %239 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %239 to i32
  %or = or i32 %conv284, 128
  %conv285 = trunc i32 %or to i8
  store i8 %conv285, i8* %arrayidx283, align 1
  br label %if.end.305

if.else:                                          ; preds = %do.end.269
  %240 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer286 = getelementptr inbounds %struct.win, %struct.win* %240, i32 0, i32 3
  %l_encoding287 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer286, i32 0, i32 5
  %241 = load i32, i32* %l_encoding287, align 4
  %cmp288 = icmp eq i32 %241, 8
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.304

land.lhs.true.290:                                ; preds = %if.else
  %242 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs291 = getelementptr inbounds %struct.mchar, %struct.mchar* %242, i32 0, i32 5
  %243 = load i8, i8* %mbcs291, align 1
  %conv292 = zext i8 %243 to i32
  %tobool293 = icmp ne i32 %conv292, 0
  br i1 %tobool293, label %if.then.294, label %if.end.304

if.then.294:                                      ; preds = %land.lhs.true.290
  %244 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs295 = getelementptr inbounds %struct.mchar, %struct.mchar* %244, i32 0, i32 5
  %245 = load i8, i8* %mbcs295, align 1
  %246 = load i32, i32* %x.addr, align 4
  %add296 = add nsw i32 %246, 1
  %idxprom297 = sext i32 %add296 to i64
  %247 = load %struct.mline*, %struct.mline** %ml, align 8
  %font298 = getelementptr inbounds %struct.mline, %struct.mline* %247, i32 0, i32 2
  %248 = load i8*, i8** %font298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %248, i64 %idxprom297
  store i8 %245, i8* %arrayidx299, align 1
  %249 = load i32, i32* %x.addr, align 4
  %add300 = add nsw i32 %249, 1
  %idxprom301 = sext i32 %add300 to i64
  %250 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx302 = getelementptr inbounds %struct.mline, %struct.mline* %250, i32 0, i32 3
  %251 = load i8*, i8** %fontx302, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %251, i64 %idxprom301
  store i8 0, i8* %arrayidx303, align 1
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.294, %land.lhs.true.290, %if.else
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.then.279
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %do.end.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MWrapChar(%struct.win* %p, %struct.mchar* %c, i32 %y, i32 %top, i32 %bot, i32 %ins) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %y.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %bot.addr = alloca i32, align 4
  %ins.addr = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  %bce = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  store i32 %bot, i32* %bot.addr, align 4
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
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %5 = load i32, i32* %y.addr, align 4
  %6 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @MFixLine(%struct.win* %4, i32 %5, %struct.mchar* %6)
  %7 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 36
  %9 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %9, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %ml, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), align 1
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %12 = load i32, i32* %l_width, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %13, i32 0, i32 0
  %14 = load i8*, i8** %image, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 %idxprom3
  store i8 %10, i8* %arrayidx4, align 1
  %15 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 1), align 1
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_width6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 1
  %17 = load i32, i32* %l_width6, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr8 = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 1
  %19 = load i8*, i8** %attr8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %19, i64 %idxprom7
  store i8 %15, i8* %arrayidx9, align 1
  %20 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 2), align 1
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer10 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %l_width11 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer10, i32 0, i32 1
  %22 = load i32, i32* %l_width11, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 2
  %24 = load i8*, i8** %font, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %24, i64 %idxprom12
  store i8 %20, i8* %arrayidx13, align 1
  %25 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 3), align 1
  %26 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer14 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_width15 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer14, i32 0, i32 1
  %27 = load i32, i32* %l_width15, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %28, i32 0, i32 3
  %29 = load i8*, i8** %fontx, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %29, i64 %idxprom16
  store i8 %25, i8* %arrayidx17, align 1
  %30 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 4), align 1
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer18 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_width19 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer18, i32 0, i32 1
  %32 = load i32, i32* %l_width19, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load %struct.mline*, %struct.mline** %ml, align 8
  %color21 = getelementptr inbounds %struct.mline, %struct.mline* %33, i32 0, i32 4
  %34 = load i8*, i8** %color21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %34, i64 %idxprom20
  store i8 %30, i8* %arrayidx22, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %35 = load i32, i32* %y.addr, align 4
  %36 = load i32, i32* %bot.addr, align 4
  %cmp = icmp eq i32 %35, %36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %37 = load %struct.win*, %struct.win** %p.addr, align 8
  %38 = load i32, i32* %top.addr, align 4
  %39 = load i32, i32* %bot.addr, align 4
  %40 = load i32, i32* %bce, align 4
  call void @MScrollV(%struct.win* %37, i32 1, i32 %38, i32 %39, i32 %40)
  br label %if.end.28

if.else:                                          ; preds = %do.end
  %41 = load i32, i32* %y.addr, align 4
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer24, i32 0, i32 2
  %43 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %43, 1
  %cmp25 = icmp slt i32 %41, %sub
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else
  %44 = load i32, i32* %y.addr, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %y.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %45 = load i32, i32* %ins.addr, align 4
  %tobool29 = icmp ne i32 %45, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.28
  %46 = load %struct.win*, %struct.win** %p.addr, align 8
  %47 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %48 = load i32, i32* %y.addr, align 4
  call void @MInsChar(%struct.win* %46, %struct.mchar* %47, i32 0, i32 %48)
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.28
  %49 = load %struct.win*, %struct.win** %p.addr, align 8
  %50 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %51 = load i32, i32* %y.addr, align 4
  call void @MPutChar(%struct.win* %49, %struct.mchar* %50, i32 0, i32 %51)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  ret void
}

declare void @LWrapChar(%struct.layer*, %struct.mchar*, i32, i32, i32, i32) #4

declare void @LSetRendition(%struct.layer*, %struct.mchar*) #4

; Function Attrs: nounwind uwtable
define void @WNewAutoFlow(%struct.win* %win, i32 %on) #0 {
entry:
  %win.addr = alloca %struct.win*, align 8
  %on.addr = alloca i32, align 4
  store %struct.win* %win, %struct.win** %win.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_flow = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 67
  %1 = load i32, i32* %w_flow, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load i32, i32* %on.addr, align 4
  %mul = mul nsw i32 3, %2
  %or = or i32 4, %mul
  %3 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_flow1 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 67
  store i32 %or, i32* %w_flow1, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %4 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_flow2 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 67
  %5 = load i32, i32* %w_flow2, align 4
  %and3 = and i32 %5, -3
  %6 = load i32, i32* %on.addr, align 4
  %mul4 = mul nsw i32 2, %6
  %or5 = or i32 %and3, %mul4
  %7 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_flow6 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 67
  store i32 %or5, i32* %w_flow6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 3
  %9 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_flow7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 67
  %10 = load i32, i32* %w_flow7, align 4
  %and8 = and i32 %10, 1
  call void @LSetFlow(%struct.layer* %w_layer, i32 %and8)
  ret void
}

declare void @LSetFlow(%struct.layer*, i32) #4

; Function Attrs: nounwind uwtable
define void @ChangeAKA(%struct.win* %p, i8* %s, i32 %l) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %l.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 22
  %2 = load i8*, i8** %w_akachange, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akabuf = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 23
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf, i32 0, i32 0
  %add.ptr1 = getelementptr inbounds i8, i8* %arraydecay, i64 768
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 -1
  %cmp3 = icmp eq i8* %add.ptr, %add.ptr2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.end

if.end.7:                                         ; preds = %if.end
  %8 = load i32, i32* %c, align 4
  %cmp8 = icmp slt i32 %8, 32
  br i1 %cmp8, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %9 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %9, 127
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %c, align 4
  %cmp13 = icmp sge i32 %10, 128
  br i1 %cmp13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %lor.lhs.false.12
  %11 = load i32, i32* %c, align 4
  %cmp15 = icmp slt i32 %11, 160
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.19

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_c1 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 59
  %13 = load i32, i32* %w_c1, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.17, %lor.lhs.false, %if.end.7
  br label %for.inc

if.end.19:                                        ; preds = %land.lhs.true.17, %land.lhs.true, %lor.lhs.false.12
  %14 = load i32, i32* %c, align 4
  %conv20 = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange21 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 22
  %17 = load i8*, i8** %w_akachange21, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 %conv20, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.19, %if.then.18
  %18 = load i32, i32* %l.addr, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %l.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %if.then, %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange23 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 22
  %21 = load i8*, i8** %w_akachange23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %21, i64 %idxprom22
  store i8 0, i8* %arrayidx24, align 1
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange25 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 22
  %23 = load i8*, i8** %w_akachange25, align 8
  %24 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 21
  store i8* %23, i8** %w_title, align 8
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange26 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 22
  %26 = load i8*, i8** %w_akachange26, align 8
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akabuf27 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 23
  %arraydecay28 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf27, i32 0, i32 0
  %cmp29 = icmp ne i8* %26, %arraydecay28
  br i1 %cmp29, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %for.end
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange32 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 22
  %29 = load i8*, i8** %w_akachange32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %30 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.then.31
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akachange38 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 22
  %32 = load i8*, i8** %w_akachange38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 -1
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %33 to i32
  %cmp41 = icmp eq i32 %conv40, 58
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %lor.lhs.false.37, %if.then.31
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akabuf44 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 23
  %arraydecay45 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf44, i32 0, i32 0
  %35 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_akabuf46 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 23
  %arraydecay47 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf46, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay47) #6
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay45, i64 %call
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i64 1
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_title50 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 21
  store i8* %add.ptr49, i8** %w_title50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.43, %lor.lhs.false.37
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  %37 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WindowChanged(%struct.win* %37, i32 116)
  call void @WindowChanged(%struct.win* null, i32 119)
  call void @WindowChanged(%struct.win* null, i32 87)
  ret void
}

; Function Attrs: nounwind uwtable
define void @WindowChanged(%struct.win* %p, i32 %what) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %what.addr = alloca i32, align 4
  %inwstr = alloca i32, align 4
  %inhstr = alloca i32, align 4
  %inlstr = alloca i32, align 4
  %inwstrh = alloca i32, align 4
  %inhstrh = alloca i32, align 4
  %inlstrh = alloca i32, align 4
  %got = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %olddisplay = alloca %struct.display*, align 8
  %cv = alloca %struct.canvas*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 0, i32* %inwstrh, align 4
  store i32 0, i32* %inhstrh, align 4
  store i32 0, i32* %inlstrh, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  store i32 0, i32* %inhstr, align 4
  store i32 0, i32* %inwstr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %1, 102
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @WindowChanged(%struct.win* null, i32 375)
  call void @WindowChanged(%struct.win* null, i32 343)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %what.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load i8*, i8** @captionstring, align 8
  %4 = load i32, i32* %what.addr, align 4
  %call = call i32 @WindowChangedCheck(i8* %3, i32 %4, i32* %inwstrh)
  store i32 %call, i32* %inwstr, align 4
  %5 = load i8*, i8** @hstatusstring, align 8
  %6 = load i32, i32* %what.addr, align 4
  %call2 = call i32 @WindowChangedCheck(i8* %5, i32 %6, i32* %inhstrh)
  store i32 %call2, i32* %inhstr, align 4
  %7 = load i8*, i8** @wliststr, align 8
  %8 = load i32, i32* %what.addr, align 4
  %call3 = call i32 @WindowChangedCheck(i8* %7, i32 %8, i32* %inlstrh)
  store i32 %call3, i32* %inlstr, align 4
  br label %if.end.4

if.else:                                          ; preds = %if.end
  store i32 0, i32* %inhstr, align 4
  store i32 0, i32* %inwstr, align 4
  store i32 1, i32* %inlstr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp5 = icmp eq %struct.win* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.76

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %10, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.then.6
  %11 = load %struct.display*, %struct.display** @display, align 8
  %tobool7 = icmp ne %struct.display* %11, null
  br i1 %tobool7, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 22
  %13 = load i32, i32* %d_x, align 4
  store i32 %13, i32* %ox, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 23
  %15 = load i32, i32* %d_y, align 4
  store i32 %15, i32* %oy, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 3
  %17 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %17, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %18 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %18, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %19 = load i32, i32* %inlstr, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.10
  %20 = load i32, i32* %inlstrh, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool13 = icmp ne %struct.win* %21, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.24

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 57
  %23 = load i8*, i8** %w_hstatus, align 8
  %tobool15 = icmp ne i8* %23, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.24

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %24 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus17 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 57
  %25 = load i8*, i8** %w_hstatus17, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %tobool18 = icmp ne i32 %conv, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus20 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 57
  %28 = load i8*, i8** %w_hstatus20, align 8
  %29 = load i32, i32* %what.addr, align 4
  %call21 = call i32 @WindowChangedCheck(i8* %28, i32 %29, i32* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19, %for.body.10
  %30 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @WListUpdatecv(%struct.canvas* %30, %struct.win* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.19, %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true, %lor.lhs.false
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 9
  %32 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 9
  %33 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 7
  %34 = load i8*, i8** %l_data, align 8
  %35 = bitcast i8* %34 to %struct.win*
  store %struct.win* %35, %struct.win** %p.addr, align 8
  %36 = load i32, i32* %inwstr, align 4
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %if.then.41, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.24
  %37 = load i32, i32* %inwstrh, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.48

land.lhs.true.28:                                 ; preds = %lor.lhs.false.26
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool29 = icmp ne %struct.win* %38, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.48

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %39 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus31 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 57
  %40 = load i8*, i8** %w_hstatus31, align 8
  %tobool32 = icmp ne i8* %40, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.48

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %41 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus34 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 57
  %42 = load i8*, i8** %w_hstatus34, align 8
  %43 = load i8, i8* %42, align 1
  %conv35 = sext i8 %43 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.48

land.lhs.true.37:                                 ; preds = %land.lhs.true.33
  %44 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus38 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 57
  %45 = load i8*, i8** %w_hstatus38, align 8
  %46 = load i32, i32* %what.addr, align 4
  %call39 = call i32 @WindowChangedCheck(i8* %45, i32 %46, i32* null)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %land.lhs.true.37, %if.end.24
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 17
  %48 = load i32, i32* %c_ye, align 4
  %add = add nsw i32 %48, 1
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 17
  %50 = load i32, i32* %d_height, align 4
  %cmp42 = icmp slt i32 %add, %50
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.then.41
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye45 = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 17
  %52 = load i32, i32* %c_ye45, align 4
  %add46 = add nsw i32 %52, 1
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 16
  %54 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %54, 1
  call void @RefreshLine(i32 %add46, i32 0, i32 %sub, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.37, %land.lhs.true.33, %land.lhs.true.30, %land.lhs.true.28, %lor.lhs.false.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %55, i32 0, i32 0
  %56 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %56, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 10
  %58 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %58, %struct.win** %p.addr, align 8
  %59 = load i32, i32* %inhstr, align 4
  %tobool49 = icmp ne i32 %59, 0
  br i1 %tobool49, label %if.then.65, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %for.end
  %60 = load i32, i32* %inhstrh, align 4
  %tobool51 = icmp ne i32 %60, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.66

land.lhs.true.52:                                 ; preds = %lor.lhs.false.50
  %61 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool53 = icmp ne %struct.win* %61, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.66

land.lhs.true.54:                                 ; preds = %land.lhs.true.52
  %62 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus55 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 57
  %63 = load i8*, i8** %w_hstatus55, align 8
  %tobool56 = icmp ne i8* %63, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %land.lhs.true.54
  %64 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus58 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 57
  %65 = load i8*, i8** %w_hstatus58, align 8
  %66 = load i8, i8* %65, align 1
  %conv59 = sext i8 %66 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.66

land.lhs.true.61:                                 ; preds = %land.lhs.true.57
  %67 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus62 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 57
  %68 = load i8*, i8** %w_hstatus62, align 8
  %69 = load i32, i32* %what.addr, align 4
  %call63 = call i32 @WindowChangedCheck(i8* %68, i32 %69, i32* null)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.61, %for.end
  call void @RefreshHStatus()
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %land.lhs.true.61, %land.lhs.true.57, %land.lhs.true.54, %land.lhs.true.52, %lor.lhs.false.50
  %70 = load i32, i32* %ox, align 4
  %cmp67 = icmp ne i32 %70, -1
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.73

land.lhs.true.69:                                 ; preds = %if.end.66
  %71 = load i32, i32* %oy, align 4
  %cmp70 = icmp ne i32 %71, -1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.69
  %72 = load i32, i32* %ox, align 4
  %73 = load i32, i32* %oy, align 4
  call void @GotoPos(i32 %72, i32 %73)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true.69, %if.end.66
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 0
  %75 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %75, %struct.display** @display, align 8
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %76 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %76, %struct.display** @display, align 8
  br label %return

if.end.76:                                        ; preds = %if.end.4
  %77 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus77 = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 57
  %78 = load i8*, i8** %w_hstatus77, align 8
  %tobool78 = icmp ne i8* %78, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.96

land.lhs.true.79:                                 ; preds = %if.end.76
  %79 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus80 = getelementptr inbounds %struct.win, %struct.win* %79, i32 0, i32 57
  %80 = load i8*, i8** %w_hstatus80, align 8
  %81 = load i8, i8* %80, align 1
  %conv81 = sext i8 %81 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.96

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %82 = load i32, i32* %inwstrh, align 4
  %tobool84 = icmp ne i32 %82, 0
  br i1 %tobool84, label %land.lhs.true.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.83
  %83 = load i32, i32* %inhstrh, align 4
  %tobool86 = icmp ne i32 %83, 0
  br i1 %tobool86, label %land.lhs.true.89, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.85
  %84 = load i32, i32* %inlstrh, align 4
  %tobool88 = icmp ne i32 %84, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.96

land.lhs.true.89:                                 ; preds = %lor.lhs.false.87, %lor.lhs.false.85, %land.lhs.true.83
  %85 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hstatus90 = getelementptr inbounds %struct.win, %struct.win* %85, i32 0, i32 57
  %86 = load i8*, i8** %w_hstatus90, align 8
  %87 = load i32, i32* %what.addr, align 4
  %call91 = call i32 @WindowChangedCheck(i8* %86, i32 %87, i32* null)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %land.lhs.true.89
  %88 = load i32, i32* %inwstrh, align 4
  %89 = load i32, i32* %inwstr, align 4
  %or = or i32 %89, %88
  store i32 %or, i32* %inwstr, align 4
  %90 = load i32, i32* %inhstrh, align 4
  %91 = load i32, i32* %inhstr, align 4
  %or94 = or i32 %91, %90
  store i32 %or94, i32* %inhstr, align 4
  %92 = load i32, i32* %inlstrh, align 4
  %93 = load i32, i32* %inlstr, align 4
  %or95 = or i32 %93, %92
  store i32 %or95, i32* %inlstr, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %land.lhs.true.89, %lor.lhs.false.87, %land.lhs.true.79, %if.end.76
  %94 = load i32, i32* %inwstr, align 4
  %tobool97 = icmp ne i32 %94, 0
  br i1 %tobool97, label %if.end.103, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %if.end.96
  %95 = load i32, i32* %inhstr, align 4
  %tobool99 = icmp ne i32 %95, 0
  br i1 %tobool99, label %if.end.103, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %land.lhs.true.98
  %96 = load i32, i32* %inlstr, align 4
  %tobool101 = icmp ne i32 %96, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true.100
  br label %return

if.end.103:                                       ; preds = %land.lhs.true.100, %land.lhs.true.98, %if.end.96
  %97 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %97, %struct.display** @display, align 8
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.155, %if.end.103
  %98 = load %struct.display*, %struct.display** @display, align 8
  %tobool105 = icmp ne %struct.display* %98, null
  br i1 %tobool105, label %for.body.106, label %for.end.157

for.body.106:                                     ; preds = %for.cond.104
  store i32 0, i32* %got, align 4
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_x107 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 22
  %100 = load i32, i32* %d_x107, align 4
  store i32 %100, i32* %ox, align 4
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_y108 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 23
  %102 = load i32, i32* %d_y108, align 4
  store i32 %102, i32* %oy, align 4
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist109 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 3
  %104 = load %struct.canvas*, %struct.canvas** %d_cvlist109, align 8
  store %struct.canvas* %104, %struct.canvas** %cv, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.136, %for.body.106
  %105 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool111 = icmp ne %struct.canvas* %105, null
  br i1 %tobool111, label %for.body.112, label %for.end.138

for.body.112:                                     ; preds = %for.cond.110
  %106 = load i32, i32* %inlstr, align 4
  %tobool113 = icmp ne i32 %106, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.body.112
  %107 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %108 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WListUpdatecv(%struct.canvas* %107, %struct.win* %108)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %for.body.112
  %109 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer116 = getelementptr inbounds %struct.canvas, %struct.canvas* %109, i32 0, i32 9
  %110 = load %struct.layer*, %struct.layer** %c_layer116, align 8
  %l_bottom117 = getelementptr inbounds %struct.layer, %struct.layer* %110, i32 0, i32 9
  %111 = load %struct.layer*, %struct.layer** %l_bottom117, align 8
  %l_data118 = getelementptr inbounds %struct.layer, %struct.layer* %111, i32 0, i32 7
  %112 = load i8*, i8** %l_data118, align 8
  %113 = bitcast i8* %112 to %struct.win*
  %114 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp119 = icmp ne %struct.win* %113, %114
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  br label %for.inc.136

if.end.122:                                       ; preds = %if.end.115
  store i32 1, i32* %got, align 4
  %115 = load i32, i32* %inwstr, align 4
  %tobool123 = icmp ne i32 %115, 0
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.135

land.lhs.true.124:                                ; preds = %if.end.122
  %116 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye125 = getelementptr inbounds %struct.canvas, %struct.canvas* %116, i32 0, i32 17
  %117 = load i32, i32* %c_ye125, align 4
  %add126 = add nsw i32 %117, 1
  %118 = load %struct.display*, %struct.display** @display, align 8
  %d_height127 = getelementptr inbounds %struct.display, %struct.display* %118, i32 0, i32 17
  %119 = load i32, i32* %d_height127, align 4
  %cmp128 = icmp slt i32 %add126, %119
  br i1 %cmp128, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %land.lhs.true.124
  %120 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye131 = getelementptr inbounds %struct.canvas, %struct.canvas* %120, i32 0, i32 17
  %121 = load i32, i32* %c_ye131, align 4
  %add132 = add nsw i32 %121, 1
  %122 = load %struct.display*, %struct.display** @display, align 8
  %d_width133 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 16
  %123 = load i32, i32* %d_width133, align 4
  %sub134 = sub nsw i32 %123, 1
  call void @RefreshLine(i32 %add132, i32 0, i32 %sub134, i32 0)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.130, %land.lhs.true.124, %if.end.122
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135, %if.then.121
  %124 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next137 = getelementptr inbounds %struct.canvas, %struct.canvas* %124, i32 0, i32 0
  %125 = load %struct.canvas*, %struct.canvas** %c_next137, align 8
  store %struct.canvas* %125, %struct.canvas** %cv, align 8
  br label %for.cond.110

for.end.138:                                      ; preds = %for.cond.110
  %126 = load i32, i32* %got, align 4
  %tobool139 = icmp ne i32 %126, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.end.147

land.lhs.true.140:                                ; preds = %for.end.138
  %127 = load i32, i32* %inhstr, align 4
  %tobool141 = icmp ne i32 %127, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.147

land.lhs.true.142:                                ; preds = %land.lhs.true.140
  %128 = load %struct.win*, %struct.win** %p.addr, align 8
  %129 = load %struct.display*, %struct.display** @display, align 8
  %d_fore143 = getelementptr inbounds %struct.display, %struct.display* %129, i32 0, i32 10
  %130 = load %struct.win*, %struct.win** %d_fore143, align 8
  %cmp144 = icmp eq %struct.win* %128, %130
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %land.lhs.true.142
  call void @RefreshHStatus()
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %land.lhs.true.142, %land.lhs.true.140, %for.end.138
  %131 = load i32, i32* %ox, align 4
  %cmp148 = icmp ne i32 %131, -1
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.154

land.lhs.true.150:                                ; preds = %if.end.147
  %132 = load i32, i32* %oy, align 4
  %cmp151 = icmp ne i32 %132, -1
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %land.lhs.true.150
  %133 = load i32, i32* %ox, align 4
  %134 = load i32, i32* %oy, align 4
  call void @GotoPos(i32 %133, i32 %134)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %land.lhs.true.150, %if.end.147
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %135 = load %struct.display*, %struct.display** @display, align 8
  %d_next156 = getelementptr inbounds %struct.display, %struct.display* %135, i32 0, i32 0
  %136 = load %struct.display*, %struct.display** %d_next156, align 8
  store %struct.display* %136, %struct.display** @display, align 8
  br label %for.cond.104

for.end.157:                                      ; preds = %for.cond.104
  %137 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %137, %struct.display** @display, align 8
  br label %return

return:                                           ; preds = %for.end.157, %if.then.102, %for.end.75
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MFindUsedLine(%struct.win* %p, i32 %ye, i32 %ys) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %ye.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 36
  %1 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %2 = load i32, i32* %ye.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %1, i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** %ml, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %ye.addr, align 4
  store i32 %3, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* %ys.addr, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 0
  %7 = load i8*, i8** %image, align 8
  %8 = load i8*, i8** @blank, align 8
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %10 = load i32, i32* %l_width, align 4
  %conv = sext i32 %10 to i64
  %call = call i32 @bcmp(i8* %7, i8* %8, i64 %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %11 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %11, i32 0, i32 1
  %12 = load i8*, i8** %attr, align 8
  %13 = load i8*, i8** @null, align 8
  %cmp1 = icmp ne i8* %12, %13
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr3 = getelementptr inbounds %struct.mline, %struct.mline* %14, i32 0, i32 1
  %15 = load i8*, i8** %attr3, align 8
  %16 = load i8*, i8** @null, align 8
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_width5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 1
  %18 = load i32, i32* %l_width5, align 4
  %conv6 = sext i32 %18 to i64
  %call7 = call i32 @bcmp(i8* %15, i8* %16, i64 %conv6) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.10:                                        ; preds = %land.lhs.true, %if.end
  %19 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %19, i32 0, i32 4
  %20 = load i8*, i8** %color, align 8
  %21 = load i8*, i8** @null, align 8
  %cmp11 = icmp ne i8* %20, %21
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end.10
  %22 = load %struct.mline*, %struct.mline** %ml, align 8
  %color14 = getelementptr inbounds %struct.mline, %struct.mline* %22, i32 0, i32 4
  %23 = load i8*, i8** %color14, align 8
  %24 = load i8*, i8** @null, align 8
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 3
  %l_width16 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 1
  %26 = load i32, i32* %l_width16, align 4
  %conv17 = sext i32 %26 to i64
  %call18 = call i32 @bcmp(i8* %23, i8* %24, i64 %conv17) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.13
  br label %for.end

if.end.21:                                        ; preds = %land.lhs.true.13, %if.end.10
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer22 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer22, i32 0, i32 5
  %28 = load i32, i32* %l_encoding, align 4
  %cmp23 = icmp eq i32 %28, 8
  br i1 %cmp23, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %if.end.21
  %29 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %29, i32 0, i32 2
  %30 = load i8*, i8** %font, align 8
  %31 = load i8*, i8** @null, align 8
  %cmp26 = icmp ne i8* %30, %31
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.36

land.lhs.true.28:                                 ; preds = %if.then.25
  %32 = load %struct.mline*, %struct.mline** %ml, align 8
  %font29 = getelementptr inbounds %struct.mline, %struct.mline* %32, i32 0, i32 2
  %33 = load i8*, i8** %font29, align 8
  %34 = load i8*, i8** @null, align 8
  %35 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer30 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 3
  %l_width31 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer30, i32 0, i32 1
  %36 = load i32, i32* %l_width31, align 4
  %conv32 = sext i32 %36 to i64
  %call33 = call i32 @bcmp(i8* %33, i8* %34, i64 %conv32) #6
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.28
  br label %for.end

if.end.36:                                        ; preds = %land.lhs.true.28, %if.then.25
  %37 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %37, i32 0, i32 3
  %38 = load i8*, i8** %fontx, align 8
  %39 = load i8*, i8** @null, align 8
  %cmp37 = icmp ne i8* %38, %39
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %if.end.36
  %40 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx40 = getelementptr inbounds %struct.mline, %struct.mline* %40, i32 0, i32 3
  %41 = load i8*, i8** %fontx40, align 8
  %42 = load i8*, i8** @null, align 8
  %43 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer41 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 3
  %l_width42 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer41, i32 0, i32 1
  %44 = load i32, i32* %l_width42, align 4
  %conv43 = sext i32 %44 to i64
  %call44 = call i32 @bcmp(i8* %41, i8* %42, i64 %conv43) #6
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.39
  br label %for.end

if.end.47:                                        ; preds = %land.lhs.true.39, %if.end.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %45 = load i32, i32* %y, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %y, align 4
  %46 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr = getelementptr inbounds %struct.mline, %struct.mline* %46, i32 -1
  store %struct.mline* %incdec.ptr, %struct.mline** %ml, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.46, %if.then.35, %if.then.20, %if.then.9, %if.then, %for.cond
  br label %do.body.49

do.body.49:                                       ; preds = %for.end
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  %47 = load i32, i32* %y, align 4
  ret i32 %47
}

; Function Attrs: nounwind readonly
declare i32 @bcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @WBell(%struct.win* %p, i32 %visual) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %visual.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %visual, i32* %visual.addr, align 4
  %0 = load %struct.display*, %struct.display** @displays, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bell = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 66
  store i32 2, i32* %w_bell, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %2, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %3, null
  br i1 %tobool, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 3
  %5 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %5, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %6, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 9
  %8 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 9
  %9 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %10 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  %cmp4 = icmp eq %struct.layer* %9, %w_layer
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body.3
  br label %for.end

if.end.6:                                         ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 0
  %12 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.end:                                          ; preds = %if.then.5, %for.cond.1
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool7 = icmp ne %struct.canvas* %13, null
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %14 = load i32, i32* %visual.addr, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 42
  %str = bitcast %union.tcu* %arrayidx to i8**
  %16 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %16)
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %for.end
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool10 = icmp ne %struct.canvas* %17, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else.20

land.lhs.true.11:                                 ; preds = %if.else
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 43
  %str14 = bitcast %union.tcu* %arrayidx13 to i8**
  %19 = load i8*, i8** %str14, align 8
  %tobool15 = icmp ne i8* %19, null
  br i1 %tobool15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %land.lhs.true.11
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs17 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 83
  %arrayidx18 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs17, i32 0, i64 43
  %str19 = bitcast %union.tcu* %arrayidx18 to i8**
  %21 = load i8*, i8** %str19, align 8
  call void @AddCStr(i8* %21)
  br label %if.end.23

if.else.20:                                       ; preds = %land.lhs.true.11, %if.else
  %22 = load i32, i32* %visual.addr, align 4
  %tobool21 = icmp ne i32 %22, 0
  %cond = select i1 %tobool21, i32 3, i32 1
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bell22 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 66
  store i32 %cond, i32* %w_bell22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.9
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 0
  %25 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %25, %struct.display** @display, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

declare void @AddCStr(i8*) #4

; Function Attrs: nounwind uwtable
define void @WMsg(%struct.win* %p, i32 %err, i8* %str) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %err.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldflayer, align 8
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  store %struct.layer* %w_layer, %struct.layer** @flayer, align 8
  %2 = load i32, i32* %err.addr, align 4
  %3 = load i8*, i8** %str.addr, align 8
  call void (i32, i8*, ...) @LMsg(i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  %4 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %4, %struct.layer** @flayer, align 8
  ret void
}

declare void @LMsg(i32, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @WChangeSize(%struct.win* %p, i32 %w, i32 %h) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %wok = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 0, i32* %wok, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %cmp = icmp eq %struct.canvas* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %3 = load i32, i32* %w.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 77
  %6 = load i32, i32* %w_histheight, align 4
  %call = call i32 @ChangeWindowSize(%struct.win* %2, i32 %3, i32 %4, i32 %6)
  br label %for.end.61

if.end:                                           ; preds = %entry
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_cvlist2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 0
  %8 = load %struct.canvas*, %struct.canvas** %l_cvlist2, align 8
  store %struct.canvas* %8, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 1
  %11 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %11, %struct.display** @display, align 8
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 10
  %14 = load %struct.win*, %struct.win** %d_fore, align 8
  %cmp3 = icmp ne %struct.win* %12, %14
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 44
  %str = bitcast %union.tcu* %arrayidx to i8**
  %16 = load i8*, i8** %str, align 8
  %tobool6 = icmp ne i8* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %for.end

if.end.8:                                         ; preds = %if.end.5
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs9 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 83
  %arrayidx10 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs9, i32 0, i64 45
  %str11 = bitcast %union.tcu* %arrayidx10 to i8**
  %18 = load i8*, i8** %str11, align 8
  %tobool12 = icmp ne i8* %18, null
  br i1 %tobool12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.8
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* @Z0width, align 4
  %cmp13 = icmp eq i32 %19, %20
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %w.addr, align 4
  %22 = load i32, i32* @Z1width, align 4
  %cmp14 = icmp eq i32 %21, %22
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %wok, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %lor.lhs.false, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.16, %if.then.4
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 10
  %24 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %24, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp17 = icmp eq %struct.canvas* %25, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %for.end
  %26 = load i32, i32* %wok, align 4
  %cmp19 = icmp eq i32 %26, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  br label %for.end.61

if.end.21:                                        ; preds = %land.lhs.true.18, %for.end
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 44
  %str24 = bitcast %union.tcu* %arrayidx23 to i8**
  %28 = load i8*, i8** %str24, align 8
  %tobool25 = icmp ne i8* %28, null
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  %29 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer27 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer27, i32 0, i32 2
  %30 = load i32, i32* %l_height, align 4
  store i32 %30, i32* %h.addr, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.21
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %32 = load i32, i32* %w.addr, align 4
  %33 = load i32, i32* %h.addr, align 4
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight29 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 77
  %35 = load i32, i32* %w_histheight29, align 4
  %call30 = call i32 @ChangeWindowSize(%struct.win* %31, i32 %32, i32 %33, i32 %35)
  %36 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %36, %struct.display** @display, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.60, %if.end.28
  %37 = load %struct.display*, %struct.display** @display, align 8
  %tobool32 = icmp ne %struct.display* %37, null
  br i1 %tobool32, label %for.body.33, label %for.end.61

for.body.33:                                      ; preds = %for.cond.31
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_fore34 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 10
  %40 = load %struct.win*, %struct.win** %d_fore34, align 8
  %cmp35 = icmp eq %struct.win* %38, %40
  br i1 %cmp35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %for.body.33
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 3
  %42 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  %tobool37 = icmp ne %struct.canvas* %42, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %if.then.36
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist39 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 3
  %44 = load %struct.canvas*, %struct.canvas** %d_cvlist39, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %44, i32 0, i32 0
  %45 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  %cmp40 = icmp eq %struct.canvas* %45, null
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %land.lhs.true.38
  %46 = load i32, i32* %w.addr, align 4
  %47 = load i32, i32* %h.addr, align 4
  %call42 = call i32 @ResizeDisplay(i32 %46, i32 %47)
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true.38, %if.then.36
  %48 = load i32, i32* %w.addr, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 17
  %50 = load i32, i32* %d_height, align 4
  %call43 = call i32 @ResizeDisplay(i32 %48, i32 %50)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.41
  call void @ResizeLayersToCanvases()
  br label %for.inc.60

if.end.45:                                        ; preds = %for.body.33
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist46 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 3
  %52 = load %struct.canvas*, %struct.canvas** %d_cvlist46, align 8
  store %struct.canvas* %52, %struct.canvas** %cv, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.54, %if.end.45
  %53 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool48 = icmp ne %struct.canvas* %53, null
  br i1 %tobool48, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.47
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 9
  %55 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %55, i32 0, i32 9
  %56 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %57 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer50 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 3
  %cmp51 = icmp eq %struct.layer* %56, %w_layer50
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body.49
  br label %for.end.56

if.end.53:                                        ; preds = %for.body.49
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %58 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next55 = getelementptr inbounds %struct.canvas, %struct.canvas* %58, i32 0, i32 0
  %59 = load %struct.canvas*, %struct.canvas** %c_next55, align 8
  store %struct.canvas* %59, %struct.canvas** %cv, align 8
  br label %for.cond.47

for.end.56:                                       ; preds = %if.then.52, %for.cond.47
  %60 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool57 = icmp ne %struct.canvas* %60, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.56
  call void @Redisplay(i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %for.end.56
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59, %if.end.44
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 0
  %62 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %62, %struct.display** @display, align 8
  br label %for.cond.31

for.end.61:                                       ; preds = %if.then, %if.then.20, %for.cond.31
  ret void
}

declare i32 @ChangeWindowSize(%struct.win*, i32, i32, i32) #4

declare i32 @ResizeDisplay(i32, i32) #4

declare void @ResizeLayersToCanvases() #4

declare void @Redisplay(i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @WindowChangedCheck(i8* %s, i32 %what, i32* %hp) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %what.addr = alloca i32, align 4
  %hp.addr = alloca i32*, align 8
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32* %hp, i32** %hp.addr, align 8
  store i32 0, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.then, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end.46

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32*, i32** %hp.addr, align 8
  %tobool1 = icmp ne i32* %4, null
  %cond = select i1 %tobool1, i32 37, i32 5
  %cmp = icmp ne i32 %conv, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  store i32 0, i32* %l, align 4
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  %conv5 = zext i1 %cmp4 to i32
  %7 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %conv5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  %conv8 = zext i1 %cmp7 to i32
  %10 = load i8*, i8** %s.addr, align 8
  %idx.ext9 = sext i32 %conv8 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 %idx.ext9
  store i8* %add.ptr10, i8** %s.addr, align 8
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.18, %if.end
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp sge i32 %conv12, 48
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.11
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.11
  %15 = phi i1 [ false, %while.cond.11 ], [ %cmp16, %land.rhs ]
  br i1 %15, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %land.end
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr19, i8** %s.addr, align 8
  br label %while.cond.11

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 76
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %while.end
  %19 = load i8*, i8** %s.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr24, i8** %s.addr, align 8
  store i32 256, i32* %l, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %while.end
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 104
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 1, i32* %h, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.25
  %22 = load i8*, i8** %s.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %24 = load i32, i32* %what.addr, align 4
  %cmp32 = icmp eq i32 %conv31, %24
  br i1 %cmp32, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %25 = load i8*, i8** %s.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv34 = sext i8 %26 to i32
  %27 = load i32, i32* %l, align 4
  %or = or i32 %conv34, %27
  %28 = load i32, i32* %what.addr, align 4
  %cmp35 = icmp eq i32 %or, %28
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* %what.addr, align 4
  %cmp38 = icmp eq i32 %29, 100
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false, %if.end.30
  br label %while.end.46

if.end.41:                                        ; preds = %lor.lhs.false.37
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8, i8* %30, align 1
  %tobool42 = icmp ne i8 %31, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %32 = load i8*, i8** %s.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr44, i8** %s.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  br label %while.cond

while.end.46:                                     ; preds = %if.then.40, %while.cond
  %33 = load i32*, i32** %hp.addr, align 8
  %tobool47 = icmp ne i32* %33, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.end.46
  %34 = load i32, i32* %h, align 4
  %35 = load i32*, i32** %hp.addr, align 8
  store i32 %34, i32* %35, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %while.end.46
  %36 = load i8*, i8** %s.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv50 = sext i8 %37 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  %cond52 = select i1 %tobool51, i32 1, i32 0
  ret i32 %cond52
}

declare void @WListUpdatecv(%struct.canvas*, %struct.win*) #4

declare void @RefreshLine(i32, i32, i32, i32) #4

declare void @RefreshHStatus() #4

declare void @GotoPos(i32, i32) #4

declare i8* @MakeWinMsg(i8*, %struct.win*, i32) #4

declare i32 @logfwrite(%struct.logfile*, i8*, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @logfclose(%struct.logfile*) #4

declare i32 @logfflush(%struct.logfile*) #4

; Function Attrs: nounwind uwtable
define internal void @BackSpace() #0 {
entry:
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %3 = load i32, i32* %l_x2, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %l_x2, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_wrap = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 48
  %5 = load i32, i32* %w_wrap, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer3, i32 0, i32 4
  %7 = load i32, i32* %l_y, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_x7 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 3
  store i32 %sub, i32* %l_x7, align 4
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer8 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  %l_y9 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer8, i32 0, i32 4
  %11 = load i32, i32* %l_y9, align 4
  %dec10 = add nsw i32 %11, -1
  store i32 %dec10, i32* %l_y9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %l_x14 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer13, i32 0, i32 3
  %14 = load i32, i32* %l_x14, align 4
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 3
  %l_y16 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 4
  %16 = load i32, i32* %l_y16, align 4
  call void @LGotoPos(%struct.layer* %w_layer12, i32 %14, i32 %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Return() #0 {
entry:
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  store i32 0, i32* %l_x2, align 4
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 3
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_x5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 3
  %5 = load i32, i32* %l_x5, align 4
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 4
  %7 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer3, i32 %5, i32 %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FindAKA() #0 {
entry:
  %cp = alloca i8*, align 8
  %line = alloca i8*, align 8
  %wp = alloca %struct.win*, align 8
  %len = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  store %struct.win* %0, %struct.win** %wp, align 8
  %1 = load %struct.win*, %struct.win** %wp, align 8
  %w_akabuf = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 23
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %2 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 24
  %3 = load i32, i32* %w_autoaka, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka2 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 24
  %5 = load i32, i32* %w_autoaka2, align 4
  %6 = load %struct.win*, %struct.win** %wp, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %7 = load i32, i32* %l_height, align 4
  %cmp3 = icmp sle i32 %5, %7
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka5 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 24
  %9 = load i32, i32* %w_autoaka5, align 4
  %sub = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %10 = load %struct.win*, %struct.win** %wp, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 4
  %11 = load i32, i32* %l_y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %y, align 4
  %12 = load %struct.win*, %struct.win** %wp, align 8
  %w_layer7 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer7, i32 0, i32 1
  %13 = load i32, i32* %l_width, align 4
  store i32 %13, i32* @cols, align 4
  br label %try_line

try_line:                                         ; preds = %if.then.28, %cond.end
  %14 = load i32, i32* %y, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.win*, %struct.win** %wp, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %17 = load i8*, i8** %image, align 8
  store i8* %17, i8** %line, align 8
  store i8* %17, i8** %cp, align 8
  %18 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka8 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 24
  %19 = load i32, i32* %w_autoaka8, align 4
  %cmp9 = icmp sgt i32 %19, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.38

land.lhs.true.11:                                 ; preds = %try_line
  %20 = load %struct.win*, %struct.win** %wp, align 8
  %w_akabuf12 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 23
  %arraydecay13 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf12, i32 0, i32 0
  %21 = load i8, i8* %arraydecay13, align 1
  %conv14 = sext i8 %21 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then, label %if.end.38

if.then:                                          ; preds = %land.lhs.true.11
  br label %for.cond

for.cond:                                         ; preds = %if.end.37, %if.then
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8*, i8** %line, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = load i32, i32* @cols, align 4
  %25 = load i32, i32* %len, align 4
  %sub17 = sub nsw i32 %24, %25
  %conv18 = sext i32 %sub17 to i64
  %cmp19 = icmp sge i64 %sub.ptr.sub, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %for.cond
  %26 = load i32, i32* %y, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %y, align 4
  %27 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka22 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 24
  %28 = load i32, i32* %w_autoaka22, align 4
  %cmp23 = icmp eq i32 %inc, %28
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.21
  %29 = load i32, i32* %y, align 4
  %30 = load i32, i32* @rows, align 4
  %cmp26 = icmp slt i32 %29, %30
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  br label %try_line

if.end:                                           ; preds = %land.lhs.true.25, %if.then.21
  br label %if.end.90

if.end.29:                                        ; preds = %for.cond
  %31 = load i8*, i8** %cp, align 8
  %32 = load %struct.win*, %struct.win** %wp, align 8
  %w_akabuf30 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 23
  %arraydecay31 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf30, i32 0, i32 0
  %33 = load i32, i32* %len, align 4
  %conv32 = sext i32 %33 to i64
  %call33 = call i32 @strncmp(i8* %31, i8* %arraydecay31, i64 %conv32) #6
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.29
  br label %for.end

if.end.37:                                        ; preds = %if.end.29
  %34 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.36
  %35 = load i32, i32* %len, align 4
  %36 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %land.lhs.true.11, %try_line
  %37 = load i32, i32* @cols, align 4
  %conv39 = sext i32 %37 to i64
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8*, i8** %line, align 8
  %sub.ptr.lhs.cast40 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %39 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub43 = sub nsw i64 %conv39, %sub.ptr.sub42
  %conv44 = trunc i64 %sub43 to i32
  store i32 %conv44, i32* %len, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.end.38
  %40 = load i32, i32* %len, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.45
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv46 = zext i8 %42 to i32
  %cmp47 = icmp eq i32 %conv46, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.45
  %43 = phi i1 [ false, %for.cond.45 ], [ %cmp47, %land.rhs ]
  br i1 %43, label %for.body, label %for.end.50

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %len, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %len, align 4
  %45 = load i8*, i8** %cp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr49, i8** %cp, align 8
  br label %for.cond.45

for.end.50:                                       ; preds = %land.end
  %46 = load i32, i32* %len, align 4
  %tobool51 = icmp ne i32 %46, 0
  br i1 %tobool51, label %if.then.52, label %if.else.88

if.then.52:                                       ; preds = %for.end.50
  %47 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka53 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 24
  %48 = load i32, i32* %w_autoaka53, align 4
  %cmp54 = icmp sgt i32 %48, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.else

land.lhs.true.56:                                 ; preds = %if.then.52
  %49 = load i8*, i8** %cp, align 8
  %50 = load i8, i8* %49, align 1
  %conv57 = zext i8 %50 to i32
  %cmp58 = icmp eq i32 %conv57, 33
  br i1 %cmp58, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.56
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv60 = zext i8 %52 to i32
  %cmp61 = icmp eq i32 %conv60, 37
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv64 = zext i8 %54 to i32
  %cmp65 = icmp eq i32 %conv64, 94
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %land.lhs.true.56
  %55 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka68 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 24
  store i32 -1, i32* %w_autoaka68, align 4
  br label %if.end.70

if.else:                                          ; preds = %lor.lhs.false.63, %if.then.52
  %56 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka69 = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 24
  store i32 0, i32* %w_autoaka69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %if.then.67
  %57 = load i8*, i8** %cp, align 8
  store i8* %57, i8** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.82, %if.end.70
  %58 = load i32, i32* %len, align 4
  %tobool71 = icmp ne i32 %58, 0
  br i1 %tobool71, label %land.rhs.72, label %land.end.76

land.rhs.72:                                      ; preds = %while.cond
  %59 = load i8*, i8** %cp, align 8
  %60 = load i8, i8* %59, align 1
  %conv73 = zext i8 %60 to i32
  %cmp74 = icmp ne i32 %conv73, 32
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.72, %while.cond
  %61 = phi i1 [ false, %while.cond ], [ %cmp74, %land.rhs.72 ]
  br i1 %61, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.76
  %62 = load i8*, i8** %cp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr77, i8** %cp, align 8
  %63 = load i8, i8* %62, align 1
  %conv78 = zext i8 %63 to i32
  %cmp79 = icmp eq i32 %conv78, 47
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %while.body
  %64 = load i8*, i8** %cp, align 8
  store i8* %64, i8** %line, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %while.body
  %65 = load i32, i32* %len, align 4
  %dec83 = add nsw i32 %65, -1
  store i32 %dec83, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.76
  %66 = load %struct.win*, %struct.win** %wp, align 8
  %67 = load i8*, i8** %line, align 8
  %68 = load i8*, i8** %cp, align 8
  %69 = load i8*, i8** %line, align 8
  %sub.ptr.lhs.cast84 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %69 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %conv87 = trunc i64 %sub.ptr.sub86 to i32
  call void @ChangeAKA(%struct.win* %66, i8* %67, i32 %conv87)
  br label %if.end.90

if.else.88:                                       ; preds = %for.end.50
  %70 = load %struct.win*, %struct.win** %wp, align 8
  %w_autoaka89 = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 24
  store i32 0, i32* %w_autoaka89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.end, %if.else.88, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LineFeed(i32 %out_mode) #0 {
entry:
  %out_mode.addr = alloca i32, align 4
  store i32 %out_mode, i32* %out_mode.addr, align 4
  %0 = load i32, i32* %out_mode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %3 = load i32, i32* %l_y, align 4
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 47
  %5 = load i32, i32* %w_bot, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_y4 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer3, i32 0, i32 4
  %7 = load i32, i32* %l_y4, align 4
  %8 = load i32, i32* @rows, align 4
  %sub = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then.2
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_y8 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer7, i32 0, i32 4
  %10 = load i32, i32* %l_y8, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %l_y8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.then.2
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer10 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_x12 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer11, i32 0, i32 3
  %13 = load i32, i32* %l_x12, align 4
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 3
  %l_y14 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer13, i32 0, i32 4
  %15 = load i32, i32* %l_y14, align 4
  call void @LGotoPos(%struct.layer* %w_layer10, i32 %13, i32 %15)
  br label %return

if.end.15:                                        ; preds = %if.end
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 24
  %17 = load i32, i32* %w_autoaka, align 4
  %cmp16 = icmp sgt i32 %17, 1
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_autoaka18 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 24
  %19 = load i32, i32* %w_autoaka18, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %w_autoaka18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 46
  %22 = load i32, i32* %w_top, align 4
  %23 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot20 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 47
  %24 = load i32, i32* %w_bot20, align 4
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 60
  %26 = load i32, i32* %w_bce, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %28 = load i8, i8* %color, align 1
  %conv = zext i8 %28 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend22 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend22, i32 0, i32 1
  %30 = load i8, i8* %attr, align 1
  %conv23 = zext i8 %30 to i32
  %and24 = and i32 %conv23, 128
  %tobool25 = icmp ne i32 %and24, 0
  %cond = select i1 %tobool25, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollV(%struct.win* %20, i32 1, i32 %22, i32 %24, i32 %cond26)
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer27 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_top28 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 46
  %33 = load i32, i32* %w_top28, align 4
  %34 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot29 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 47
  %35 = load i32, i32* %w_bot29, align 4
  %36 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce30 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 60
  %37 = load i32, i32* %w_bce30, align 4
  %tobool31 = icmp ne i32 %37, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.45

cond.true.32:                                     ; preds = %cond.end
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend33 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 37
  %color34 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend33, i32 0, i32 4
  %39 = load i8, i8* %color34, align 1
  %conv35 = zext i8 %39 to i32
  %and36 = and i32 %conv35, 240
  %shr37 = ashr i32 %and36, 4
  %40 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend38 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 37
  %attr39 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend38, i32 0, i32 1
  %41 = load i8, i8* %attr39, align 1
  %conv40 = zext i8 %41 to i32
  %and41 = and i32 %conv40, 128
  %tobool42 = icmp ne i32 %and41, 0
  %cond43 = select i1 %tobool42, i32 256, i32 0
  %or44 = or i32 %shr37, %cond43
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.32
  %cond47 = phi i32 [ %or44, %cond.true.32 ], [ 0, %cond.false.45 ]
  call void @LScrollV(%struct.layer* %w_layer27, i32 1, i32 %33, i32 %35, i32 %cond47)
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer48 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %43 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer49 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 3
  %l_x50 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer49, i32 0, i32 3
  %44 = load i32, i32* %l_x50, align 4
  %45 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer51 = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 3
  %l_y52 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer51, i32 0, i32 4
  %46 = load i32, i32* %l_y52, align 4
  call void @LGotoPos(%struct.layer* %w_layer48, i32 %44, i32 %46)
  br label %return

return:                                           ; preds = %cond.end.46, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ForwardTab() #0 {
entry:
  %x = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* @cols, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @LineFeed(i32 1)
  store i32 0, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 65
  %6 = load i8*, i8** %w_tabs, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %9, 1
  %cmp1 = icmp slt i32 %8, %sub
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* @cols, align 4
  %sub5 = sub nsw i32 %12, 1
  %cmp6 = icmp slt i32 %11, %sub5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs9 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 65
  %15 = load i8*, i8** %w_tabs9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  %16 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %16, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i32, i32* %x, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %x, align 4
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 3
  %l_x14 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer13, i32 0, i32 3
  store i32 %19, i32* %l_x14, align 4
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer16 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 3
  %l_x17 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer16, i32 0, i32 3
  %23 = load i32, i32* %l_x17, align 4
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer18 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer18, i32 0, i32 4
  %25 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer15, i32 %23, i32 %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MapCharset(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 41
  %2 = load i32, i32* %w_Charset, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 41
  store i32 %4, i32* %w_Charset1, align 4
  %6 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %8 to i8
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 38
  store i8 %conv, i8* %w_FontL, align 1
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL2 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 38
  %11 = load i8, i8* %w_FontL2, align 1
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 37
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 2
  store i8 %11, i8* %font, align 1
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend3 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer, %struct.mchar* %w_rend3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @MScrollV(%struct.win* %p, i32 %n, i32 %ys, i32 %ye, i32 %bce) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %n.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cnt1 = alloca i32, align 4
  %cnt2 = alloca i32, align 4
  %tmp = alloca [256 x %struct.mline], align 16
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.151

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %ye.addr, align 4
  %3 = load i32, i32* %ys.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %4 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %add, %4
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then.3
  %5 = load i32, i32* %ye.addr, align 4
  %6 = load i32, i32* %ys.addr, align 4
  %sub6 = sub nsw i32 %5, %6
  %add7 = add nsw i32 %sub6, 1
  store i32 %add7, i32* %n.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.then.3
  %7 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp sgt i32 %7, 256
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %sub11 = sub nsw i32 %9, 256
  %10 = load i32, i32* %ys.addr, align 4
  %11 = load i32, i32* %ye.addr, align 4
  %12 = load i32, i32* %bce.addr, align 4
  call void @MScrollV(%struct.win* %8, i32 %sub11, i32 %10, i32 %11, i32 %12)
  store i32 256, i32* %n.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %13 = load i32, i32* @compacthist, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.end.12
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %15 = load i32, i32* %ye.addr, align 4
  %16 = load i32, i32* %ys.addr, align 4
  %call = call i32 @MFindUsedLine(%struct.win* %14, i32 %15, i32 %16)
  store i32 %call, i32* %ye.addr, align 4
  %17 = load i32, i32* %ye.addr, align 4
  %18 = load i32, i32* %ys.addr, align 4
  %sub14 = sub nsw i32 %17, %18
  %add15 = add nsw i32 %sub14, 1
  %19 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %add15, %19
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.13
  %20 = load i32, i32* %ye.addr, align 4
  %21 = load i32, i32* %ys.addr, align 4
  %sub18 = sub nsw i32 %20, %21
  %add19 = add nsw i32 %sub18, 1
  store i32 %add19, i32* %n.addr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.13
  %22 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp sle i32 %22, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %if.end.151

if.end.23:                                        ; preds = %if.end.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.12
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 36
  %24 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %25 = load i32, i32* %ys.addr, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %24, i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** %ml, align 8
  %26 = load i32, i32* %ys.addr, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %ys.addr, align 4
  %29 = load i32, i32* %n.addr, align 4
  %add25 = add nsw i32 %28, %29
  %cmp26 = icmp slt i32 %27, %add25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %ys.addr, align 4
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 46
  %32 = load i32, i32* %w_top, align 4
  %cmp27 = icmp eq i32 %30, %32
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  %34 = load %struct.mline*, %struct.mline** %ml, align 8
  call void @WAddLineToHist(%struct.win* %33, %struct.mline* %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body
  %35 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %35, i32 0, i32 1
  %36 = load i8*, i8** %attr, align 8
  %37 = load i8*, i8** @null, align 8
  %cmp30 = icmp ne i8* %36, %37
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %38 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr32 = getelementptr inbounds %struct.mline, %struct.mline* %38, i32 0, i32 1
  %39 = load i8*, i8** %attr32, align 8
  call void @free(i8* %39) #1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %40 = load i8*, i8** @null, align 8
  %41 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr34 = getelementptr inbounds %struct.mline, %struct.mline* %41, i32 0, i32 1
  store i8* %40, i8** %attr34, align 8
  %42 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %42, i32 0, i32 2
  %43 = load i8*, i8** %font, align 8
  %44 = load i8*, i8** @null, align 8
  %cmp35 = icmp ne i8* %43, %44
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %45 = load %struct.mline*, %struct.mline** %ml, align 8
  %font37 = getelementptr inbounds %struct.mline, %struct.mline* %45, i32 0, i32 2
  %46 = load i8*, i8** %font37, align 8
  call void @free(i8* %46) #1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %47 = load i8*, i8** @null, align 8
  %48 = load %struct.mline*, %struct.mline** %ml, align 8
  %font39 = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 2
  store i8* %47, i8** %font39, align 8
  %49 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %49, i32 0, i32 3
  %50 = load i8*, i8** %fontx, align 8
  %51 = load i8*, i8** @null, align 8
  %cmp40 = icmp ne i8* %50, %51
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %52 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx42 = getelementptr inbounds %struct.mline, %struct.mline* %52, i32 0, i32 3
  %53 = load i8*, i8** %fontx42, align 8
  call void @free(i8* %53) #1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.38
  %54 = load i8*, i8** @null, align 8
  %55 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx44 = getelementptr inbounds %struct.mline, %struct.mline* %55, i32 0, i32 3
  store i8* %54, i8** %fontx44, align 8
  %56 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %56, i32 0, i32 4
  %57 = load i8*, i8** %color, align 8
  %58 = load i8*, i8** @null, align 8
  %cmp45 = icmp ne i8* %57, %58
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.43
  %59 = load %struct.mline*, %struct.mline** %ml, align 8
  %color47 = getelementptr inbounds %struct.mline, %struct.mline* %59, i32 0, i32 4
  %60 = load i8*, i8** %color47, align 8
  call void @free(i8* %60) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %61 = load i8*, i8** @null, align 8
  %62 = load %struct.mline*, %struct.mline** %ml, align 8
  %color49 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 4
  store i8* %61, i8** %color49, align 8
  %63 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %63, i32 0, i32 0
  %64 = load i8*, i8** %image, align 8
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %66 = load i32, i32* %l_width, align 4
  %add50 = add nsw i32 %66, 1
  call void @bclear(i8* %64, i32 %add50)
  %67 = load i32, i32* %bce.addr, align 4
  %tobool51 = icmp ne i32 %67, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.48
  %68 = load %struct.win*, %struct.win** %p.addr, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer53 = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 3
  %l_width54 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer53, i32 0, i32 1
  %71 = load i32, i32* %l_width54, align 4
  %72 = load i32, i32* %bce.addr, align 4
  call void @MBceLine(%struct.win* %68, i32 %69, i32 0, i32 %71, i32 %72)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  %74 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 1
  store %struct.mline* %incdec.ptr, %struct.mline** %ml, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %75 to i64
  %mul = mul i64 %conv, 40
  %conv56 = trunc i64 %mul to i32
  store i32 %conv56, i32* %cnt1, align 4
  %76 = load i32, i32* %ye.addr, align 4
  %77 = load i32, i32* %ys.addr, align 4
  %sub57 = sub nsw i32 %76, %77
  %add58 = add nsw i32 %sub57, 1
  %78 = load i32, i32* %n.addr, align 4
  %sub59 = sub nsw i32 %add58, %78
  %conv60 = sext i32 %sub59 to i64
  %mul61 = mul i64 %conv60, 40
  %conv62 = trunc i64 %mul61 to i32
  store i32 %conv62, i32* %cnt2, align 4
  %79 = load i32, i32* %cnt1, align 4
  %tobool63 = icmp ne i32 %79, 0
  br i1 %tobool63, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %for.end
  %80 = load i32, i32* %cnt2, align 4
  %tobool64 = icmp ne i32 %80, 0
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true
  %81 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines66 = getelementptr inbounds %struct.win, %struct.win* %81, i32 0, i32 36
  %82 = load %struct.mline*, %struct.mline** %w_mlines66, align 8
  %83 = load i32, i32* %ys.addr, align 4
  %idx.ext67 = sext i32 %83 to i64
  %add.ptr68 = getelementptr inbounds %struct.mline, %struct.mline* %82, i64 %idx.ext67
  %84 = bitcast %struct.mline* %add.ptr68 to i8*
  %85 = load i32, i32* %cnt1, align 4
  %86 = load i32, i32* %cnt2, align 4
  %arraydecay = getelementptr inbounds [256 x %struct.mline], [256 x %struct.mline]* %tmp, i32 0, i32 0
  %87 = bitcast %struct.mline* %arraydecay to i8*
  call void @Scroll(i8* %84, i32 %85, i32 %86, i8* %87)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %land.lhs.true, %for.end
  br label %if.end.151

if.else:                                          ; preds = %if.end
  %88 = load i32, i32* %n.addr, align 4
  %sub70 = sub nsw i32 0, %88
  store i32 %sub70, i32* %n.addr, align 4
  %89 = load i32, i32* %ye.addr, align 4
  %90 = load i32, i32* %ys.addr, align 4
  %sub71 = sub nsw i32 %89, %90
  %add72 = add nsw i32 %sub71, 1
  %91 = load i32, i32* %n.addr, align 4
  %cmp73 = icmp slt i32 %add72, %91
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.else
  %92 = load i32, i32* %ye.addr, align 4
  %93 = load i32, i32* %ys.addr, align 4
  %sub76 = sub nsw i32 %92, %93
  %add77 = add nsw i32 %sub76, 1
  store i32 %add77, i32* %n.addr, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.else
  %94 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp sgt i32 %94, 256
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.78
  %95 = load %struct.win*, %struct.win** %p.addr, align 8
  %96 = load i32, i32* %n.addr, align 4
  %sub82 = sub nsw i32 %96, 256
  %sub83 = sub nsw i32 0, %sub82
  %97 = load i32, i32* %ys.addr, align 4
  %98 = load i32, i32* %ye.addr, align 4
  %99 = load i32, i32* %bce.addr, align 4
  call void @MScrollV(%struct.win* %95, i32 %sub83, i32 %97, i32 %98, i32 %99)
  store i32 256, i32* %n.addr, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.78
  %100 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines85 = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 36
  %101 = load %struct.mline*, %struct.mline** %w_mlines85, align 8
  %102 = load i32, i32* %ye.addr, align 4
  %idx.ext86 = sext i32 %102 to i64
  %add.ptr87 = getelementptr inbounds %struct.mline, %struct.mline* %101, i64 %idx.ext86
  store %struct.mline* %add.ptr87, %struct.mline** %ml, align 8
  %103 = load i32, i32* %ye.addr, align 4
  store i32 %103, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.130, %if.end.84
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %ye.addr, align 4
  %106 = load i32, i32* %n.addr, align 4
  %sub89 = sub nsw i32 %105, %106
  %cmp90 = icmp sgt i32 %104, %sub89
  br i1 %cmp90, label %for.body.92, label %for.end.132

for.body.92:                                      ; preds = %for.cond.88
  %107 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr93 = getelementptr inbounds %struct.mline, %struct.mline* %107, i32 0, i32 1
  %108 = load i8*, i8** %attr93, align 8
  %109 = load i8*, i8** @null, align 8
  %cmp94 = icmp ne i8* %108, %109
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.body.92
  %110 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr97 = getelementptr inbounds %struct.mline, %struct.mline* %110, i32 0, i32 1
  %111 = load i8*, i8** %attr97, align 8
  call void @free(i8* %111) #1
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.body.92
  %112 = load i8*, i8** @null, align 8
  %113 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr99 = getelementptr inbounds %struct.mline, %struct.mline* %113, i32 0, i32 1
  store i8* %112, i8** %attr99, align 8
  %114 = load %struct.mline*, %struct.mline** %ml, align 8
  %font100 = getelementptr inbounds %struct.mline, %struct.mline* %114, i32 0, i32 2
  %115 = load i8*, i8** %font100, align 8
  %116 = load i8*, i8** @null, align 8
  %cmp101 = icmp ne i8* %115, %116
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.98
  %117 = load %struct.mline*, %struct.mline** %ml, align 8
  %font104 = getelementptr inbounds %struct.mline, %struct.mline* %117, i32 0, i32 2
  %118 = load i8*, i8** %font104, align 8
  call void @free(i8* %118) #1
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.98
  %119 = load i8*, i8** @null, align 8
  %120 = load %struct.mline*, %struct.mline** %ml, align 8
  %font106 = getelementptr inbounds %struct.mline, %struct.mline* %120, i32 0, i32 2
  store i8* %119, i8** %font106, align 8
  %121 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx107 = getelementptr inbounds %struct.mline, %struct.mline* %121, i32 0, i32 3
  %122 = load i8*, i8** %fontx107, align 8
  %123 = load i8*, i8** @null, align 8
  %cmp108 = icmp ne i8* %122, %123
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.105
  %124 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx111 = getelementptr inbounds %struct.mline, %struct.mline* %124, i32 0, i32 3
  %125 = load i8*, i8** %fontx111, align 8
  call void @free(i8* %125) #1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.105
  %126 = load i8*, i8** @null, align 8
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx113 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 3
  store i8* %126, i8** %fontx113, align 8
  %128 = load %struct.mline*, %struct.mline** %ml, align 8
  %color114 = getelementptr inbounds %struct.mline, %struct.mline* %128, i32 0, i32 4
  %129 = load i8*, i8** %color114, align 8
  %130 = load i8*, i8** @null, align 8
  %cmp115 = icmp ne i8* %129, %130
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.112
  %131 = load %struct.mline*, %struct.mline** %ml, align 8
  %color118 = getelementptr inbounds %struct.mline, %struct.mline* %131, i32 0, i32 4
  %132 = load i8*, i8** %color118, align 8
  call void @free(i8* %132) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.112
  %133 = load i8*, i8** @null, align 8
  %134 = load %struct.mline*, %struct.mline** %ml, align 8
  %color120 = getelementptr inbounds %struct.mline, %struct.mline* %134, i32 0, i32 4
  store i8* %133, i8** %color120, align 8
  %135 = load %struct.mline*, %struct.mline** %ml, align 8
  %image121 = getelementptr inbounds %struct.mline, %struct.mline* %135, i32 0, i32 0
  %136 = load i8*, i8** %image121, align 8
  %137 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer122 = getelementptr inbounds %struct.win, %struct.win* %137, i32 0, i32 3
  %l_width123 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer122, i32 0, i32 1
  %138 = load i32, i32* %l_width123, align 4
  %add124 = add nsw i32 %138, 1
  call void @bclear(i8* %136, i32 %add124)
  %139 = load i32, i32* %bce.addr, align 4
  %tobool125 = icmp ne i32 %139, 0
  br i1 %tobool125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.119
  %140 = load %struct.win*, %struct.win** %p.addr, align 8
  %141 = load i32, i32* %i, align 4
  %142 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer127 = getelementptr inbounds %struct.win, %struct.win* %142, i32 0, i32 3
  %l_width128 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer127, i32 0, i32 1
  %143 = load i32, i32* %l_width128, align 4
  %144 = load i32, i32* %bce.addr, align 4
  call void @MBceLine(%struct.win* %140, i32 %141, i32 0, i32 %143, i32 %144)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.119
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %145 = load i32, i32* %i, align 4
  %dec = add nsw i32 %145, -1
  store i32 %dec, i32* %i, align 4
  %146 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr131 = getelementptr inbounds %struct.mline, %struct.mline* %146, i32 -1
  store %struct.mline* %incdec.ptr131, %struct.mline** %ml, align 8
  br label %for.cond.88

for.end.132:                                      ; preds = %for.cond.88
  %147 = load i32, i32* %n.addr, align 4
  %conv133 = sext i32 %147 to i64
  %mul134 = mul i64 %conv133, 40
  %conv135 = trunc i64 %mul134 to i32
  store i32 %conv135, i32* %cnt1, align 4
  %148 = load i32, i32* %ye.addr, align 4
  %149 = load i32, i32* %ys.addr, align 4
  %sub136 = sub nsw i32 %148, %149
  %add137 = add nsw i32 %sub136, 1
  %150 = load i32, i32* %n.addr, align 4
  %sub138 = sub nsw i32 %add137, %150
  %conv139 = sext i32 %sub138 to i64
  %mul140 = mul i64 %conv139, 40
  %conv141 = trunc i64 %mul140 to i32
  store i32 %conv141, i32* %cnt2, align 4
  %151 = load i32, i32* %cnt1, align 4
  %tobool142 = icmp ne i32 %151, 0
  br i1 %tobool142, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %for.end.132
  %152 = load i32, i32* %cnt2, align 4
  %tobool144 = icmp ne i32 %152, 0
  br i1 %tobool144, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %land.lhs.true.143
  %153 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines146 = getelementptr inbounds %struct.win, %struct.win* %153, i32 0, i32 36
  %154 = load %struct.mline*, %struct.mline** %w_mlines146, align 8
  %155 = load i32, i32* %ys.addr, align 4
  %idx.ext147 = sext i32 %155 to i64
  %add.ptr148 = getelementptr inbounds %struct.mline, %struct.mline* %154, i64 %idx.ext147
  %156 = bitcast %struct.mline* %add.ptr148 to i8*
  %157 = load i32, i32* %cnt2, align 4
  %158 = load i32, i32* %cnt1, align 4
  %arraydecay149 = getelementptr inbounds [256 x %struct.mline], [256 x %struct.mline]* %tmp, i32 0, i32 0
  %159 = bitcast %struct.mline* %arraydecay149 to i8*
  call void @Scroll(i8* %156, i32 %157, i32 %158, i8* %159)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.145, %land.lhs.true.143, %for.end.132
  br label %if.end.151

if.end.151:                                       ; preds = %if.then, %if.then.22, %if.end.150, %if.end.69
  ret void
}

declare void @LScrollV(%struct.layer*, i32, i32, i32, i32) #4

; Function Attrs: nounwind uwtable
define internal void @WAddLineToHist(%struct.win* %wp, %struct.mline* %ml) #0 {
entry:
  %wp.addr = alloca %struct.win*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %q = alloca i8*, align 8
  %o = alloca i8*, align 8
  %hml = alloca %struct.mline*, align 8
  store %struct.win* %wp, %struct.win** %wp.addr, align 8
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  %0 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 77
  %1 = load i32, i32* %w_histheight, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.33

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 78
  %3 = load i32, i32* %w_histidx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 79
  %5 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %5, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %hml, align 8
  %6 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 0
  %7 = load i8*, i8** %image, align 8
  store i8* %7, i8** %q, align 8
  %8 = load %struct.mline*, %struct.mline** %hml, align 8
  %image1 = getelementptr inbounds %struct.mline, %struct.mline* %8, i32 0, i32 0
  %9 = load i8*, i8** %image1, align 8
  %10 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image2 = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 0
  store i8* %9, i8** %image2, align 8
  %11 = load i8*, i8** %q, align 8
  %12 = load %struct.mline*, %struct.mline** %hml, align 8
  %image3 = getelementptr inbounds %struct.mline, %struct.mline* %12, i32 0, i32 0
  store i8* %11, i8** %image3, align 8
  %13 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %13, i32 0, i32 1
  %14 = load i8*, i8** %attr, align 8
  store i8* %14, i8** %q, align 8
  %15 = load %struct.mline*, %struct.mline** %hml, align 8
  %attr4 = getelementptr inbounds %struct.mline, %struct.mline* %15, i32 0, i32 1
  %16 = load i8*, i8** %attr4, align 8
  store i8* %16, i8** %o, align 8
  %17 = load i8*, i8** %q, align 8
  %18 = load %struct.mline*, %struct.mline** %hml, align 8
  %attr5 = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 1
  store i8* %17, i8** %attr5, align 8
  %19 = load i8*, i8** @null, align 8
  %20 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr6 = getelementptr inbounds %struct.mline, %struct.mline* %20, i32 0, i32 1
  store i8* %19, i8** %attr6, align 8
  %21 = load i8*, i8** %o, align 8
  %22 = load i8*, i8** @null, align 8
  %cmp7 = icmp ne i8* %21, %22
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %23 = load i8*, i8** %o, align 8
  call void @free(i8* %23) #1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %24 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %24, i32 0, i32 2
  %25 = load i8*, i8** %font, align 8
  store i8* %25, i8** %q, align 8
  %26 = load %struct.mline*, %struct.mline** %hml, align 8
  %font10 = getelementptr inbounds %struct.mline, %struct.mline* %26, i32 0, i32 2
  %27 = load i8*, i8** %font10, align 8
  store i8* %27, i8** %o, align 8
  %28 = load i8*, i8** %q, align 8
  %29 = load %struct.mline*, %struct.mline** %hml, align 8
  %font11 = getelementptr inbounds %struct.mline, %struct.mline* %29, i32 0, i32 2
  store i8* %28, i8** %font11, align 8
  %30 = load i8*, i8** @null, align 8
  %31 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font12 = getelementptr inbounds %struct.mline, %struct.mline* %31, i32 0, i32 2
  store i8* %30, i8** %font12, align 8
  %32 = load i8*, i8** %o, align 8
  %33 = load i8*, i8** @null, align 8
  %cmp13 = icmp ne i8* %32, %33
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  %34 = load i8*, i8** %o, align 8
  call void @free(i8* %34) #1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.9
  %35 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %35, i32 0, i32 3
  %36 = load i8*, i8** %fontx, align 8
  store i8* %36, i8** %q, align 8
  %37 = load %struct.mline*, %struct.mline** %hml, align 8
  %fontx16 = getelementptr inbounds %struct.mline, %struct.mline* %37, i32 0, i32 3
  %38 = load i8*, i8** %fontx16, align 8
  store i8* %38, i8** %o, align 8
  %39 = load i8*, i8** %q, align 8
  %40 = load %struct.mline*, %struct.mline** %hml, align 8
  %fontx17 = getelementptr inbounds %struct.mline, %struct.mline* %40, i32 0, i32 3
  store i8* %39, i8** %fontx17, align 8
  %41 = load i8*, i8** @null, align 8
  %42 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx18 = getelementptr inbounds %struct.mline, %struct.mline* %42, i32 0, i32 3
  store i8* %41, i8** %fontx18, align 8
  %43 = load i8*, i8** %o, align 8
  %44 = load i8*, i8** @null, align 8
  %cmp19 = icmp ne i8* %43, %44
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  %45 = load i8*, i8** %o, align 8
  call void @free(i8* %45) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.15
  %46 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %46, i32 0, i32 4
  %47 = load i8*, i8** %color, align 8
  store i8* %47, i8** %q, align 8
  %48 = load %struct.mline*, %struct.mline** %hml, align 8
  %color22 = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 4
  %49 = load i8*, i8** %color22, align 8
  store i8* %49, i8** %o, align 8
  %50 = load i8*, i8** %q, align 8
  %51 = load %struct.mline*, %struct.mline** %hml, align 8
  %color23 = getelementptr inbounds %struct.mline, %struct.mline* %51, i32 0, i32 4
  store i8* %50, i8** %color23, align 8
  %52 = load i8*, i8** @null, align 8
  %53 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color24 = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 4
  store i8* %52, i8** %color24, align 8
  %54 = load i8*, i8** %o, align 8
  %55 = load i8*, i8** @null, align 8
  %cmp25 = icmp ne i8* %54, %55
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %56 = load i8*, i8** %o, align 8
  call void @free(i8* %56) #1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.21
  %57 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_histidx28 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 78
  %58 = load i32, i32* %w_histidx28, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %w_histidx28, align 4
  %59 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_histheight29 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 77
  %60 = load i32, i32* %w_histheight29, align 4
  %cmp30 = icmp sge i32 %inc, %60
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.27
  %61 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_histidx32 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 78
  store i32 0, i32* %w_histidx32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.then.31, %if.end.27
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @bclear(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @MBceLine(%struct.win* %p, i32 %y, i32 %xs, i32 %xe, i32 %bce) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %mc = alloca %struct.mchar, align 1
  %ml = alloca %struct.mline*, align 8
  %x = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = bitcast %struct.mchar* %mc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  %1 = load i8, i8* %color, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 15
  %2 = load i32, i32* %bce.addr, align 4
  %shl = shl i32 %2, 4
  %and1 = and i32 %shl, 240
  %or = or i32 %and, %and1
  %conv2 = trunc i32 %or to i8
  %color3 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  store i8 %conv2, i8* %color3, align 1
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  %3 = load i8, i8* %attr, align 1
  %conv4 = zext i8 %3 to i32
  %or5 = or i32 %conv4, 128
  %4 = load i32, i32* %bce.addr, align 4
  %and6 = and i32 %4, 256
  %tobool = icmp ne i32 %and6, 0
  %cond = select i1 %tobool, i32 0, i32 128
  %xor = xor i32 %or5, %cond
  %conv7 = trunc i32 %xor to i8
  %attr8 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  store i8 %conv7, i8* %attr8, align 1
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %6 = load i32, i32* %y.addr, align 4
  call void @MFixLine(%struct.win* %5, i32 %6, %struct.mchar* %mc)
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 36
  %8 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %9 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %8, i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** %ml, align 8
  %attr9 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  %10 = load i8, i8* %attr9, align 1
  %tobool10 = icmp ne i8 %10, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %xs.addr, align 4
  store i32 %11, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %xe.addr, align 4
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %attr12 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  %14 = load i8, i8* %attr12, align 1
  %15 = load i32, i32* %x, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr13 = getelementptr inbounds %struct.mline, %struct.mline* %16, i32 0, i32 1
  %17 = load i8*, i8** %attr13, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 %14, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %x, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %color14 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  %19 = load i8, i8* %color14, align 1
  %tobool15 = icmp ne i8 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.end
  %20 = load i32, i32* %xs.addr, align 4
  store i32 %20, i32* %x, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %if.then.16
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %xe.addr, align 4
  %cmp18 = icmp sle i32 %21, %22
  br i1 %cmp18, label %for.body.20, label %for.end.27

for.body.20:                                      ; preds = %for.cond.17
  %color21 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  %23 = load i8, i8* %color21, align 1
  %24 = load i32, i32* %x, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.mline*, %struct.mline** %ml, align 8
  %color23 = getelementptr inbounds %struct.mline, %struct.mline* %25, i32 0, i32 4
  %26 = load i8*, i8** %color23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %idxprom22
  store i8 %23, i8* %arrayidx24, align 1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.20
  %27 = load i32, i32* %x, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %x, align 4
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Scroll(i8* %cp, i32 %cnt1, i32 %cnt2, i8* %tmp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %cnt1.addr = alloca i32, align 4
  %cnt2.addr = alloca i32, align 4
  %tmp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store i32 %cnt1, i32* %cnt1.addr, align 4
  store i32 %cnt2, i32* %cnt2.addr, align 4
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i32, i32* %cnt1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %cnt2.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.14

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %cnt1.addr, align 4
  %3 = load i32, i32* %cnt2.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8*, i8** %tmp.addr, align 8
  %6 = load i32, i32* %cnt1.addr, align 4
  %conv = sext i32 %6 to i64
  call void @bcopy(i8* %4, i8* %5, i64 %conv) #1
  %7 = load i8*, i8** %cp.addr, align 8
  %8 = load i32, i32* %cnt1.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i8*, i8** %cp.addr, align 8
  %10 = load i32, i32* %cnt2.addr, align 4
  %conv3 = sext i32 %10 to i64
  call void @bcopy(i8* %add.ptr, i8* %9, i64 %conv3) #1
  %11 = load i8*, i8** %tmp.addr, align 8
  %12 = load i8*, i8** %cp.addr, align 8
  %13 = load i32, i32* %cnt2.addr, align 4
  %idx.ext4 = sext i32 %13 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %12, i64 %idx.ext4
  %14 = load i32, i32* %cnt1.addr, align 4
  %conv6 = sext i32 %14 to i64
  call void @bcopy(i8* %11, i8* %add.ptr5, i64 %conv6) #1
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %15 = load i8*, i8** %cp.addr, align 8
  %16 = load i32, i32* %cnt1.addr, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %idx.ext7
  %17 = load i8*, i8** %tmp.addr, align 8
  %18 = load i32, i32* %cnt2.addr, align 4
  %conv9 = sext i32 %18 to i64
  call void @bcopy(i8* %add.ptr8, i8* %17, i64 %conv9) #1
  %19 = load i8*, i8** %cp.addr, align 8
  %20 = load i8*, i8** %cp.addr, align 8
  %21 = load i32, i32* %cnt2.addr, align 4
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %20, i64 %idx.ext10
  %22 = load i32, i32* %cnt1.addr, align 4
  %conv12 = sext i32 %22 to i64
  call void @bcopy(i8* %19, i8* %add.ptr11, i64 %conv12) #1
  %23 = load i8*, i8** %tmp.addr, align 8
  %24 = load i8*, i8** %cp.addr, align 8
  %25 = load i32, i32* %cnt2.addr, align 4
  %conv13 = sext i32 %25 to i64
  call void @bcopy(i8* %23, i8* %24, i64 %conv13) #1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReverseLineFeed() #0 {
entry:
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 46
  %3 = load i32, i32* %w_top, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_top1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 46
  %6 = load i32, i32* %w_top1, align 4
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 47
  %8 = load i32, i32* %w_bot, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 60
  %10 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %12 = load i8, i8* %color, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend2, i32 0, i32 1
  %14 = load i8, i8* %attr, align 1
  %conv3 = zext i8 %14 to i32
  %and4 = and i32 %conv3, 128
  %tobool5 = icmp ne i32 %and4, 0
  %cond = select i1 %tobool5, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollV(%struct.win* %4, i32 -1, i32 %6, i32 %8, i32 %cond6)
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer7 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 3
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_top8 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 46
  %17 = load i32, i32* %w_top8, align 4
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot9 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 47
  %19 = load i32, i32* %w_bot9, align 4
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce10 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 60
  %21 = load i32, i32* %w_bce10, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.25

cond.true.12:                                     ; preds = %cond.end
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend13 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 37
  %color14 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend13, i32 0, i32 4
  %23 = load i8, i8* %color14, align 1
  %conv15 = zext i8 %23 to i32
  %and16 = and i32 %conv15, 240
  %shr17 = ashr i32 %and16, 4
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend18 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 37
  %attr19 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend18, i32 0, i32 1
  %25 = load i8, i8* %attr19, align 1
  %conv20 = zext i8 %25 to i32
  %and21 = and i32 %conv20, 128
  %tobool22 = icmp ne i32 %and21, 0
  %cond23 = select i1 %tobool22, i32 256, i32 0
  %or24 = or i32 %shr17, %cond23
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.12
  %cond27 = phi i32 [ %or24, %cond.true.12 ], [ 0, %cond.false.25 ]
  call void @LScrollV(%struct.layer* %w_layer7, i32 -1, i32 %17, i32 %19, i32 %cond27)
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer28 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer29 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer29, i32 0, i32 3
  %28 = load i32, i32* %l_x, align 4
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer30 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 3
  %l_y31 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer30, i32 0, i32 4
  %30 = load i32, i32* %l_y31, align 4
  call void @LGotoPos(%struct.layer* %w_layer28, i32 %28, i32 %30)
  br label %if.end.37

if.else:                                          ; preds = %entry
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer32 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_y33 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer32, i32 0, i32 4
  %32 = load i32, i32* %l_y33, align 4
  %cmp34 = icmp sgt i32 %32, 0
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.else
  call void @CursorUp(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %cond.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Report(i8* %fmt, i32 %n1, i32 %n2) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %rbuf = alloca [40 x i8], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %rbuf, i32 0, i32 0
  %0 = load i8*, i8** %fmt.addr, align 8
  %1 = load i32, i32* %n1.addr, align 4
  %2 = load i32, i32* %n2.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %0, i32 %1, i32 %2) #1
  %arraydecay1 = getelementptr inbounds [40 x i8], [40 x i8]* %rbuf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #6
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 6
  %4 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool = icmp ne %struct.pseudowin* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin3 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 6
  %6 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin3, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %6, i32 0, i32 0
  %7 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %7, 4096
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin5 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 6
  %9 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin5, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %9, i32 0, i32 8
  %10 = load i32, i32* %p_inlen, align 4
  %11 = load i32, i32* %len, align 4
  %add = add nsw i32 %10, %11
  %conv6 = zext i32 %add to i64
  %cmp = icmp ule i64 %conv6, 4096
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %arraydecay9 = getelementptr inbounds [40 x i8], [40 x i8]* %rbuf, i32 0, i32 0
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin10 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 6
  %13 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin10, align 8
  %p_inbuf = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %13, i32 0, i32 7
  %arraydecay11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf, i32 0, i32 0
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin12 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 6
  %15 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin12, align 8
  %p_inlen13 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %15, i32 0, i32 8
  %16 = load i32, i32* %p_inlen13, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay11, i64 %idx.ext
  %17 = load i32, i32* %len, align 4
  %conv14 = sext i32 %17 to i64
  call void @bcopy(i8* %arraydecay9, i8* %add.ptr, i64 %conv14) #1
  %18 = load i32, i32* %len, align 4
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_pwin15 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 6
  %20 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin15, align 8
  %p_inlen16 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %20, i32 0, i32 8
  %21 = load i32, i32* %p_inlen16, align 4
  %add17 = add nsw i32 %21, %18
  store i32 %add17, i32* %p_inlen16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 17
  %23 = load i32, i32* %w_inlen, align 4
  %24 = load i32, i32* %len, align 4
  %add18 = add nsw i32 %23, %24
  %conv19 = zext i32 %add18 to i64
  %cmp20 = icmp ule i64 %conv19, 4096
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.else
  %arraydecay23 = getelementptr inbounds [40 x i8], [40 x i8]* %rbuf, i32 0, i32 0
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_inbuf = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 16
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf, i32 0, i32 0
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen25 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 17
  %27 = load i32, i32* %w_inlen25, align 4
  %idx.ext26 = sext i32 %27 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext26
  %28 = load i32, i32* %len, align 4
  %conv28 = sext i32 %28 to i64
  call void @bcopy(i8* %arraydecay23, i8* %add.ptr27, i64 %conv28) #1
  %29 = load i32, i32* %len, align 4
  %30 = load %struct.win*, %struct.win** @curr, align 8
  %w_inlen29 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 17
  %31 = load i32, i32* %w_inlen29, align 4
  %add30 = add nsw i32 %31, %29
  store i32 %add30, i32* %w_inlen29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.22, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SaveCursor(%struct.cursor* %cursor) #0 {
entry:
  %cursor.addr = alloca %struct.cursor*, align 8
  store %struct.cursor* %cursor, %struct.cursor** %cursor.addr, align 8
  %0 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %on = getelementptr inbounds %struct.cursor, %struct.cursor* %0, i32 0, i32 0
  store i32 1, i32* %on, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %2 = load i32, i32* %l_x, align 4
  %3 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %x = getelementptr inbounds %struct.cursor, %struct.cursor* %3, i32 0, i32 1
  store i32 %2, i32* %x, align 4
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %5 = load i32, i32* %l_y, align 4
  %6 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %y = getelementptr inbounds %struct.cursor, %struct.cursor* %6, i32 0, i32 2
  store i32 %5, i32* %y, align 4
  %7 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Rend = getelementptr inbounds %struct.cursor, %struct.cursor* %7, i32 0, i32 3
  %8 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 37
  %9 = bitcast %struct.mchar* %Rend to i8*
  %10 = bitcast %struct.mchar* %w_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 6, i32 1, i1 false)
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 41
  %12 = load i32, i32* %w_Charset, align 4
  %13 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Charset = getelementptr inbounds %struct.cursor, %struct.cursor* %13, i32 0, i32 4
  store i32 %12, i32* %Charset, align 4
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 42
  %15 = load i32, i32* %w_CharsetR, align 4
  %16 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %CharsetR = getelementptr inbounds %struct.cursor, %struct.cursor* %16, i32 0, i32 5
  store i32 %15, i32* %CharsetR, align 4
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 43
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i32 0
  %18 = bitcast i32* %arraydecay to i8*
  %19 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Charsets = getelementptr inbounds %struct.cursor, %struct.cursor* %19, i32 0, i32 6
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %Charsets, i32 0, i32 0
  %20 = bitcast i32* %arraydecay2 to i8*
  call void @bcopy(i8* %18, i8* %20, i64 16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RestoreCursor(%struct.cursor* %cursor) #0 {
entry:
  %cursor.addr = alloca %struct.cursor*, align 8
  store %struct.cursor* %cursor, %struct.cursor** %cursor.addr, align 8
  %0 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %on = getelementptr inbounds %struct.cursor, %struct.cursor* %0, i32 0, i32 0
  %1 = load i32, i32* %on, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %3 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %x = getelementptr inbounds %struct.cursor, %struct.cursor* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %y = getelementptr inbounds %struct.cursor, %struct.cursor* %5, i32 0, i32 2
  %6 = load i32, i32* %y, align 4
  call void @LGotoPos(%struct.layer* %w_layer, i32 %4, i32 %6)
  %7 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %x1 = getelementptr inbounds %struct.cursor, %struct.cursor* %7, i32 0, i32 1
  %8 = load i32, i32* %x1, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 3
  store i32 %8, i32* %l_x, align 4
  %10 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %y3 = getelementptr inbounds %struct.cursor, %struct.cursor* %10, i32 0, i32 2
  %11 = load i32, i32* %y3, align 4
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 4
  store i32 %11, i32* %l_y, align 4
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 37
  %14 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Rend = getelementptr inbounds %struct.cursor, %struct.cursor* %14, i32 0, i32 3
  %15 = bitcast %struct.mchar* %w_rend to i8*
  %16 = bitcast %struct.mchar* %Rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 6, i32 1, i1 false)
  %17 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Charsets = getelementptr inbounds %struct.cursor, %struct.cursor* %17, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %Charsets, i32 0, i32 0
  %18 = bitcast i32* %arraydecay to i8*
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 43
  %arraydecay5 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i32 0
  %20 = bitcast i32* %arraydecay5 to i8*
  call void @bcopy(i8* %18, i8* %20, i64 16) #1
  %21 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %Charset = getelementptr inbounds %struct.cursor, %struct.cursor* %21, i32 0, i32 4
  %22 = load i32, i32* %Charset, align 4
  %23 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 41
  store i32 %22, i32* %w_Charset, align 4
  %24 = load %struct.cursor*, %struct.cursor** %cursor.addr, align 8
  %CharsetR = getelementptr inbounds %struct.cursor, %struct.cursor* %24, i32 0, i32 5
  %25 = load i32, i32* %CharsetR, align 4
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 42
  store i32 %25, i32* %w_CharsetR, align 4
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset6 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 41
  %29 = load i32, i32* %w_Charset6, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets7 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets7, i32 0, i64 %idxprom
  %31 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %31 to i8
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 38
  store i8 %conv, i8* %w_FontL, align 1
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR8 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 42
  %34 = load i32, i32* %w_CharsetR8, align 4
  %idxprom9 = sext i32 %34 to i64
  %35 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets10 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 43
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets10, i32 0, i64 %idxprom9
  %36 = load i32, i32* %arrayidx11, align 4
  %conv12 = trunc i32 %36 to i8
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 39
  store i8 %conv12, i8* %w_FontR, align 1
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 3
  %39 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend14 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer13, %struct.mchar* %w_rend14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ClearScreen() #0 {
entry:
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 1
  %2 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 2
  %4 = load i32, i32* %l_height, align 4
  %sub3 = sub nsw i32 %4, 1
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 60
  %6 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %8 = load i8, i8* %color, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend4, i32 0, i32 1
  %10 = load i8, i8* %attr, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 128
  %tobool7 = icmp ne i32 %and6, 0
  %cond = select i1 %tobool7, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @LClearArea(%struct.layer* %w_layer, i32 0, i32 0, i32 %sub, i32 %sub3, i32 %cond8, i32 1)
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer9 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_height10 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer9, i32 0, i32 2
  %13 = load i32, i32* %l_height10, align 4
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 3
  %l_height12 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer11, i32 0, i32 2
  %15 = load i32, i32* %l_height12, align 4
  %sub13 = sub nsw i32 %15, 1
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce14 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 60
  %17 = load i32, i32* %w_bce14, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.29

cond.true.16:                                     ; preds = %cond.end
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend17 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 37
  %color18 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend17, i32 0, i32 4
  %19 = load i8, i8* %color18, align 1
  %conv19 = zext i8 %19 to i32
  %and20 = and i32 %conv19, 240
  %shr21 = ashr i32 %and20, 4
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend22 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 37
  %attr23 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend22, i32 0, i32 1
  %21 = load i8, i8* %attr23, align 1
  %conv24 = zext i8 %21 to i32
  %and25 = and i32 %conv24, 128
  %tobool26 = icmp ne i32 %and25, 0
  %cond27 = select i1 %tobool26, i32 256, i32 0
  %or28 = or i32 %shr21, %cond27
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.16
  %cond31 = phi i32 [ %or28, %cond.true.16 ], [ 0, %cond.false.29 ]
  call void @MScrollV(%struct.win* %11, i32 %13, i32 0, i32 %sub13, i32 %cond31)
  ret void
}

declare void @LKeypadMode(%struct.layer*, i32) #4

declare void @LCursorkeysMode(%struct.layer*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @MapCharsetR(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 42
  %2 = load i32, i32* %w_CharsetR, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 42
  store i32 %4, i32* %w_CharsetR1, align 4
  %6 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %8 to i8
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 39
  store i8 %conv, i8* %w_FontR, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_gr = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 58
  store i32 1, i32* %w_gr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FillWithEs() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  call void @LClearAll(%struct.layer* %w_layer, i32 1)
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 4
  store i32 0, i32* %l_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @rows, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 36
  %7 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %7, i64 %idxprom
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %image, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i32, i32* @cols, align 4
  %add = add nsw i32 %9, 1
  call void @bclear(i8* %add.ptr, i32 %add)
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines4 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 36
  %12 = load %struct.mline*, %struct.mline** %w_mlines4, align 8
  %arrayidx5 = getelementptr inbounds %struct.mline, %struct.mline* %12, i64 %idxprom3
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx5, i32 0, i32 1
  %13 = load i8*, i8** %attr, align 8
  %14 = load i8*, i8** @null, align 8
  %cmp6 = icmp ne i8* %13, %14
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines8 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 36
  %17 = load %struct.mline*, %struct.mline** %w_mlines8, align 8
  %arrayidx9 = getelementptr inbounds %struct.mline, %struct.mline* %17, i64 %idxprom7
  %attr10 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx9, i32 0, i32 1
  %18 = load i8*, i8** %attr10, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i32, i32* @cols, align 4
  %add12 = add nsw i32 %19, 1
  %conv = sext i32 %add12 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr11, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines14 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 36
  %22 = load %struct.mline*, %struct.mline** %w_mlines14, align 8
  %arrayidx15 = getelementptr inbounds %struct.mline, %struct.mline* %22, i64 %idxprom13
  %font = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx15, i32 0, i32 2
  %23 = load i8*, i8** %font, align 8
  %24 = load i8*, i8** @null, align 8
  %cmp16 = icmp ne i8* %23, %24
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines20 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 36
  %27 = load %struct.mline*, %struct.mline** %w_mlines20, align 8
  %arrayidx21 = getelementptr inbounds %struct.mline, %struct.mline* %27, i64 %idxprom19
  %font22 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx21, i32 0, i32 2
  %28 = load i8*, i8** %font22, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i32, i32* @cols, align 4
  %add24 = add nsw i32 %29, 1
  %conv25 = sext i32 %add24 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr23, i8 0, i64 %conv25, i32 1, i1 false)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.18, %if.end
  %30 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines28 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 36
  %32 = load %struct.mline*, %struct.mline** %w_mlines28, align 8
  %arrayidx29 = getelementptr inbounds %struct.mline, %struct.mline* %32, i64 %idxprom27
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx29, i32 0, i32 3
  %33 = load i8*, i8** %fontx, align 8
  %34 = load i8*, i8** @null, align 8
  %cmp30 = icmp ne i8* %33, %34
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.26
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines34 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 36
  %37 = load %struct.mline*, %struct.mline** %w_mlines34, align 8
  %arrayidx35 = getelementptr inbounds %struct.mline, %struct.mline* %37, i64 %idxprom33
  %fontx36 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx35, i32 0, i32 3
  %38 = load i8*, i8** %fontx36, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i32, i32* @cols, align 4
  %add38 = add nsw i32 %39, 1
  %conv39 = sext i32 %add38 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr37, i8 0, i64 %conv39, i32 1, i1 false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.32, %if.end.26
  %40 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %40 to i64
  %41 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines42 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 36
  %42 = load %struct.mline*, %struct.mline** %w_mlines42, align 8
  %arrayidx43 = getelementptr inbounds %struct.mline, %struct.mline* %42, i64 %idxprom41
  %color = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx43, i32 0, i32 4
  %43 = load i8*, i8** %color, align 8
  %44 = load i8*, i8** @null, align 8
  %cmp44 = icmp ne i8* %43, %44
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.40
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines48 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 36
  %47 = load %struct.mline*, %struct.mline** %w_mlines48, align 8
  %arrayidx49 = getelementptr inbounds %struct.mline, %struct.mline* %47, i64 %idxprom47
  %color50 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx49, i32 0, i32 4
  %48 = load i8*, i8** %color50, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i32, i32* @cols, align 4
  %add52 = add nsw i32 %49, 1
  %conv53 = sext i32 %add52 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr51, i8 0, i64 %conv53, i32 1, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %if.end.40
  br label %do.end

do.end:                                           ; preds = %if.end.54
  %50 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines56 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 36
  %52 = load %struct.mline*, %struct.mline** %w_mlines56, align 8
  %arrayidx57 = getelementptr inbounds %struct.mline, %struct.mline* %52, i64 %idxprom55
  %image58 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx57, i32 0, i32 0
  %53 = load i8*, i8** %image58, align 8
  store i8* %53, i8** %p, align 8
  %54 = load i8*, i8** %p, align 8
  %55 = load i32, i32* @cols, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr59, i8** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %56 = load i8*, i8** %p, align 8
  %57 = load i8*, i8** %ep, align 8
  %cmp60 = icmp ult i8* %56, %57
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 69, i8* %58, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer62 = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 3
  call void @LRefreshAll(%struct.layer* %w_layer62, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DesignateCharset(i32 %c, i32 %n) #0 {
entry:
  %c.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_ss = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 44
  store i32 0, i32* %w_ss, align 4
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 66
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %c.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp ne i32 %5, %6
  br i1 %cmp4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end.3
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32, i32* %n.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_charsets7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 43
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %w_charsets7, i32 0, i64 %idxprom6
  store i32 %7, i32* %arrayidx8, align 4
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_Charset = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 41
  %11 = load i32, i32* %w_Charset, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.then.5
  %13 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %13 to i8
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 38
  store i8 %conv, i8* %w_FontL, align 1
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontL11 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 38
  %16 = load i8, i8* %w_FontL11, align 1
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 37
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 2
  store i8 %16, i8* %font, align 1
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend12 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer, %struct.mchar* %w_rend12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.then.5
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_CharsetR = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 42
  %21 = load i32, i32* %w_CharsetR, align 4
  %22 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp eq i32 %21, %22
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %23 = load i32, i32* %c.addr, align 4
  %conv17 = trunc i32 %23 to i8
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_FontR = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 39
  store i8 %conv17, i8* %w_FontR, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CursorUp(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 46
  %3 = load i32, i32* %w_top, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_y2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %6 = load i32, i32* %l_y2, align 4
  %sub = sub nsw i32 %6, %4
  store i32 %sub, i32* %l_y2, align 4
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_y6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 4
  store i32 0, i32* %l_y6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %n.addr, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_y8 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer7, i32 0, i32 4
  %10 = load i32, i32* %l_y8, align 4
  %sub9 = sub nsw i32 %10, %8
  store i32 %sub9, i32* %l_y8, align 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_top10 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 46
  %12 = load i32, i32* %w_top10, align 4
  %cmp11 = icmp slt i32 %sub9, %12
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.else
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_top13 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 46
  %14 = load i32, i32* %w_top13, align 4
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer14 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 3
  %l_y15 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer14, i32 0, i32 4
  store i32 %14, i32* %l_y15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer18 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer19 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer19, i32 0, i32 3
  %18 = load i32, i32* %l_x, align 4
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer20 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 3
  %l_y21 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer20, i32 0, i32 4
  %20 = load i32, i32* %l_y21, align 4
  call void @LGotoPos(%struct.layer* %w_layer18, i32 %18, i32 %20)
  ret void
}

declare void @LClearArea(%struct.layer*, i32, i32, i32, i32, i32, i32) #4

declare void @LClearAll(%struct.layer*, i32) #4

declare void @LRefreshAll(%struct.layer*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @ClearToEOS() #0 {
entry:
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %3 = load i32, i32* %l_x, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %y, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @ClearScreen()
  call void @RestorePosRendition()
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %9, 1
  %10 = load i32, i32* @rows, align 4
  %sub4 = sub nsw i32 %10, 1
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 60
  %12 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %14 = load i8, i8* %color, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend5 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend5, i32 0, i32 1
  %16 = load i8, i8* %attr, align 1
  %conv6 = zext i8 %16 to i32
  %and7 = and i32 %conv6, 128
  %tobool8 = icmp ne i32 %and7, 0
  %cond = select i1 %tobool8, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @LClearArea(%struct.layer* %w_layer3, i32 %7, i32 %8, i32 %sub, i32 %sub4, i32 %cond9, i32 1)
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* @cols, align 4
  %sub10 = sub nsw i32 %20, 1
  %21 = load i32, i32* @rows, align 4
  %sub11 = sub nsw i32 %21, 1
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce12 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 60
  %23 = load i32, i32* %w_bce12, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.27

cond.true.14:                                     ; preds = %cond.end
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend15 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 37
  %color16 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend15, i32 0, i32 4
  %25 = load i8, i8* %color16, align 1
  %conv17 = zext i8 %25 to i32
  %and18 = and i32 %conv17, 240
  %shr19 = ashr i32 %and18, 4
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend20 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 37
  %attr21 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend20, i32 0, i32 1
  %27 = load i8, i8* %attr21, align 1
  %conv22 = zext i8 %27 to i32
  %and23 = and i32 %conv22, 128
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 256, i32 0
  %or26 = or i32 %shr19, %cond25
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.14
  %cond29 = phi i32 [ %or26, %cond.true.14 ], [ 0, %cond.false.27 ]
  call void @MClearArea(%struct.win* %17, i32 %18, i32 %19, i32 %sub10, i32 %sub11, i32 %cond29)
  call void @RestorePosRendition()
  br label %return

return:                                           ; preds = %cond.end.28, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ClearFromBOS() #0 {
entry:
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %3 = load i32, i32* %l_x, align 4
  store i32 %3, i32* %x, align 4
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 60
  %8 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %10 = load i8, i8* %color, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend3 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend3, i32 0, i32 1
  %12 = load i8, i8* %attr, align 1
  %conv4 = zext i8 %12 to i32
  %and5 = and i32 %conv4, 128
  %tobool6 = icmp ne i32 %and5, 0
  %cond = select i1 %tobool6, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @LClearArea(%struct.layer* %w_layer2, i32 0, i32 0, i32 %5, i32 %6, i32 %cond7, i32 1)
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce8 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 60
  %17 = load i32, i32* %w_bce8, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.23

cond.true.10:                                     ; preds = %cond.end
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend11 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 37
  %color12 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend11, i32 0, i32 4
  %19 = load i8, i8* %color12, align 1
  %conv13 = zext i8 %19 to i32
  %and14 = and i32 %conv13, 240
  %shr15 = ashr i32 %and14, 4
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend16 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 37
  %attr17 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend16, i32 0, i32 1
  %21 = load i8, i8* %attr17, align 1
  %conv18 = zext i8 %21 to i32
  %and19 = and i32 %conv18, 128
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 256, i32 0
  %or22 = or i32 %shr15, %cond21
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.10
  %cond25 = phi i32 [ %or22, %cond.true.10 ], [ 0, %cond.false.23 ]
  call void @MClearArea(%struct.win* %13, i32 0, i32 0, i32 %14, i32 %15, i32 %cond25)
  call void @RestorePosRendition()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ClearLineRegion(i32 %from, i32 %to) #0 {
entry:
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %3 = load i32, i32* %from.addr, align 4
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* %to.addr, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 60
  %8 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %10 = load i8, i8* %color, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend2 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend2, i32 0, i32 1
  %12 = load i8, i8* %attr, align 1
  %conv3 = zext i8 %12 to i32
  %and4 = and i32 %conv3, 128
  %tobool5 = icmp ne i32 %and4, 0
  %cond = select i1 %tobool5, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @LClearArea(%struct.layer* %w_layer1, i32 %3, i32 %4, i32 %5, i32 %6, i32 %cond6, i32 1)
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %14 = load i32, i32* %from.addr, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %to.addr, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce7 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 60
  %19 = load i32, i32* %w_bce7, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.22

cond.true.9:                                      ; preds = %cond.end
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend10 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 37
  %color11 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend10, i32 0, i32 4
  %21 = load i8, i8* %color11, align 1
  %conv12 = zext i8 %21 to i32
  %and13 = and i32 %conv12, 240
  %shr14 = ashr i32 %and13, 4
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend15 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 37
  %attr16 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend15, i32 0, i32 1
  %23 = load i8, i8* %attr16, align 1
  %conv17 = zext i8 %23 to i32
  %and18 = and i32 %conv17, 128
  %tobool19 = icmp ne i32 %and18, 0
  %cond20 = select i1 %tobool19, i32 256, i32 0
  %or21 = or i32 %shr14, %cond20
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.9
  %cond24 = phi i32 [ %or21, %cond.true.9 ], [ 0, %cond.false.22 ]
  call void @MClearArea(%struct.win* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %cond24)
  call void @RestorePosRendition()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CursorDown(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 47
  %3 = load i32, i32* %w_bot, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_y2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %6 = load i32, i32* %l_y2, align 4
  %add = add nsw i32 %6, %4
  store i32 %add, i32* %l_y2, align 4
  %7 = load i32, i32* @rows, align 4
  %sub = sub nsw i32 %7, 1
  %cmp3 = icmp sgt i32 %add, %sub
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* @rows, align 4
  %sub5 = sub nsw i32 %8, 1
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_y7 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 4
  store i32 %sub5, i32* %l_y7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.18

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %n.addr, align 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer8 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_y9 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer8, i32 0, i32 4
  %12 = load i32, i32* %l_y9, align 4
  %add10 = add nsw i32 %12, %10
  store i32 %add10, i32* %l_y9, align 4
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot11 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 47
  %14 = load i32, i32* %w_bot11, align 4
  %cmp12 = icmp sgt i32 %add10, %14
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.else
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot14 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 47
  %16 = load i32, i32* %w_bot14, align 4
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_y16 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 4
  store i32 %16, i32* %l_y16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer19 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer20 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer20, i32 0, i32 3
  %20 = load i32, i32* %l_x, align 4
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer21 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %l_y22 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer21, i32 0, i32 4
  %22 = load i32, i32* %l_y22, align 4
  call void @LGotoPos(%struct.layer* %w_layer19, i32 %20, i32 %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CursorRight(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* @cols, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @LineFeed(i32 1)
  store i32 0, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_x2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %6 = load i32, i32* %l_x2, align 4
  %add = add nsw i32 %6, %4
  store i32 %add, i32* %l_x2, align 4
  %7 = load i32, i32* @cols, align 4
  %cmp3 = icmp sge i32 %add, %7
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load i32, i32* @cols, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_x6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 3
  store i32 %sub, i32* %l_x6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer8 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer9 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_x10 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer9, i32 0, i32 3
  %12 = load i32, i32* %l_x10, align 4
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer11, i32 0, i32 4
  %14 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer8, i32 %12, i32 %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CursorLeft(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %2 = load i32, i32* %l_x, align 4
  %sub = sub nsw i32 %2, %0
  store i32 %sub, i32* %l_x, align 4
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 3
  %l_x2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  store i32 0, i32* %l_x2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_x5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 3
  %6 = load i32, i32* %l_x5, align 4
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 4
  %8 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer3, i32 %6, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SelectRendition() #0 {
entry:
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %jj = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 1
  %1 = load i8, i8* %attr, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %a, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend1, i32 0, i32 4
  %3 = load i8, i8* %color, align 1
  %conv2 = zext i8 %3 to i32
  store i32 %conv2, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_args = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 27
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %w_args, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %j, align 4
  %7 = load i32, i32* %j, align 4
  %cmp = icmp eq i32 %7, 38
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %8 = load i32, i32* %j, align 4
  %cmp4 = icmp eq i32 %8, 48
  br i1 %cmp4, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.body
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 2
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 28
  %11 = load i32, i32* %w_NumArgs, align 4
  %cmp6 = icmp slt i32 %add, %11
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.34

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, 1
  %idxprom10 = sext i32 %add9 to i64
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_args11 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 27
  %arrayidx12 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args11, i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp eq i32 %14, 5
  br i1 %cmp13, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.8
  %15 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %15, 2
  store i32 %add15, i32* %i, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_args17 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 27
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %w_args17, i32 0, i64 %idxprom16
  %18 = load i32, i32* %arrayidx18, align 4
  store i32 %18, i32* %jj, align 4
  %19 = load i32, i32* %jj, align 4
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then
  %20 = load i32, i32* %jj, align 4
  %cmp22 = icmp sgt i32 %20, 255
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.then
  br label %do.cond

if.end:                                           ; preds = %lor.lhs.false.21
  %21 = load i32, i32* %jj, align 4
  %call = call i32 @color256to16(i32 %21)
  %add25 = add nsw i32 %call, 30
  store i32 %add25, i32* %jj, align 4
  %22 = load i32, i32* %jj, align 4
  %cmp26 = icmp sge i32 %22, 38
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end
  %23 = load i32, i32* %jj, align 4
  %add29 = add nsw i32 %23, 52
  store i32 %add29, i32* %jj, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end
  %24 = load i32, i32* %j, align 4
  %cmp31 = icmp eq i32 %24, 38
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %25 = load i32, i32* %jj, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %26 = load i32, i32* %jj, align 4
  %add33 = add nsw i32 %26, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %add33, %cond.false ]
  store i32 %cond, i32* %j, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %land.lhs.true.8, %land.lhs.true, %lor.lhs.false
  %27 = load i32, i32* %j, align 4
  %cmp35 = icmp eq i32 %27, 0
  br i1 %cmp35, label %if.then.46, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.end.34
  %28 = load i32, i32* %j, align 4
  %cmp38 = icmp sge i32 %28, 30
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.47

land.lhs.true.40:                                 ; preds = %lor.lhs.false.37
  %29 = load i32, i32* %j, align 4
  %cmp41 = icmp sle i32 %29, 39
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %land.lhs.true.40
  %30 = load i32, i32* %j, align 4
  %cmp44 = icmp ne i32 %30, 38
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.43, %if.end.34
  %31 = load i32, i32* %a, align 4
  %and = and i32 %31, 191
  store i32 %and, i32* %a, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true.43, %land.lhs.true.40, %lor.lhs.false.37
  %32 = load i32, i32* %j, align 4
  %cmp48 = icmp eq i32 %32, 0
  br i1 %cmp48, label %if.then.59, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.47
  %33 = load i32, i32* %j, align 4
  %cmp51 = icmp sge i32 %33, 40
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %lor.lhs.false.50
  %34 = load i32, i32* %j, align 4
  %cmp54 = icmp sle i32 %34, 49
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %35 = load i32, i32* %j, align 4
  %cmp57 = icmp ne i32 %35, 48
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.56, %if.end.47
  %36 = load i32, i32* %a, align 4
  %and60 = and i32 %36, 127
  store i32 %and60, i32* %a, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %land.lhs.true.56, %land.lhs.true.53, %lor.lhs.false.50
  %37 = load i32, i32* %j, align 4
  %cmp62 = icmp sge i32 %37, 90
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.68

land.lhs.true.64:                                 ; preds = %if.end.61
  %38 = load i32, i32* %j, align 4
  %cmp65 = icmp sle i32 %38, 97
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.64
  %39 = load i32, i32* %a, align 4
  %or = or i32 %39, 64
  store i32 %or, i32* %a, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.64, %if.end.61
  %40 = load i32, i32* %j, align 4
  %cmp69 = icmp sge i32 %40, 100
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %if.end.68
  %41 = load i32, i32* %j, align 4
  %cmp72 = icmp sle i32 %41, 107
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %land.lhs.true.71
  %42 = load i32, i32* %a, align 4
  %or75 = or i32 %42, 128
  store i32 %or75, i32* %a, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %land.lhs.true.71, %if.end.68
  %43 = load i32, i32* %j, align 4
  %cmp77 = icmp sge i32 %43, 90
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.83

land.lhs.true.79:                                 ; preds = %if.end.76
  %44 = load i32, i32* %j, align 4
  %cmp80 = icmp sle i32 %44, 97
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.79
  %45 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %45, 60
  store i32 %sub, i32* %j, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.79, %if.end.76
  %46 = load i32, i32* %j, align 4
  %cmp84 = icmp sge i32 %46, 100
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %if.end.83
  %47 = load i32, i32* %j, align 4
  %cmp87 = icmp sle i32 %47, 107
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.86
  %48 = load i32, i32* %j, align 4
  %sub90 = sub nsw i32 %48, 60
  store i32 %sub90, i32* %j, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.86, %if.end.83
  %49 = load i32, i32* %j, align 4
  %cmp92 = icmp sge i32 %49, 30
  br i1 %cmp92, label %land.lhs.true.94, label %if.else

land.lhs.true.94:                                 ; preds = %if.end.91
  %50 = load i32, i32* %j, align 4
  %cmp95 = icmp sle i32 %50, 39
  br i1 %cmp95, label %land.lhs.true.97, label %if.else

land.lhs.true.97:                                 ; preds = %land.lhs.true.94
  %51 = load i32, i32* %j, align 4
  %cmp98 = icmp ne i32 %51, 38
  br i1 %cmp98, label %if.then.100, label %if.else

if.then.100:                                      ; preds = %land.lhs.true.97
  %52 = load i32, i32* %c, align 4
  %and101 = and i32 %52, 240
  %53 = load i32, i32* %j, align 4
  %sub102 = sub nsw i32 %53, 30
  %xor = xor i32 %sub102, 9
  %or103 = or i32 %and101, %xor
  store i32 %or103, i32* %c, align 4
  br label %if.end.118

if.else:                                          ; preds = %land.lhs.true.97, %land.lhs.true.94, %if.end.91
  %54 = load i32, i32* %j, align 4
  %cmp104 = icmp sge i32 %54, 40
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.117

land.lhs.true.106:                                ; preds = %if.else
  %55 = load i32, i32* %j, align 4
  %cmp107 = icmp sle i32 %55, 49
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.117

land.lhs.true.109:                                ; preds = %land.lhs.true.106
  %56 = load i32, i32* %j, align 4
  %cmp110 = icmp ne i32 %56, 48
  br i1 %cmp110, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %land.lhs.true.109
  %57 = load i32, i32* %c, align 4
  %and113 = and i32 %57, 15
  %58 = load i32, i32* %j, align 4
  %sub114 = sub nsw i32 %58, 40
  %xor115 = xor i32 %sub114, 9
  %shl = shl i32 %xor115, 4
  %or116 = or i32 %and113, %shl
  store i32 %or116, i32* %c, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.112, %land.lhs.true.109, %land.lhs.true.106, %if.else
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.100
  %59 = load i32, i32* %j, align 4
  %cmp119 = icmp eq i32 %59, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.118
  store i32 0, i32* %c, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.118
  %60 = load i32, i32* %j, align 4
  %cmp123 = icmp slt i32 %60, 0
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.122
  %61 = load i32, i32* %j, align 4
  %cmp126 = icmp sge i32 %61, 28
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.end.122
  br label %do.cond

if.end.129:                                       ; preds = %lor.lhs.false.125
  %62 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %62 to i64
  %arrayidx131 = getelementptr inbounds [28 x i8], [28 x i8]* @rendlist, i32 0, i64 %idxprom130
  %63 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %63 to i32
  store i32 %conv132, i32* %j, align 4
  %64 = load i32, i32* %j, align 4
  %and133 = and i32 %64, 64
  %tobool = icmp ne i32 %and133, 0
  br i1 %tobool, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.end.129
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %a, align 4
  %and135 = and i32 %66, %65
  store i32 %and135, i32* %a, align 4
  br label %if.end.138

if.else.136:                                      ; preds = %if.end.129
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %a, align 4
  %or137 = or i32 %68, %67
  store i32 %or137, i32* %a, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.134
  br label %do.cond

do.cond:                                          ; preds = %if.end.138, %if.then.128, %if.then.24
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  %70 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs139 = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 28
  %71 = load i32, i32* %w_NumArgs139, align 4
  %cmp140 = icmp slt i32 %inc, %71
  br i1 %cmp140, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %72 = load i32, i32* %a, align 4
  %conv142 = trunc i32 %72 to i8
  %73 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend143 = getelementptr inbounds %struct.win, %struct.win* %73, i32 0, i32 37
  %attr144 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend143, i32 0, i32 1
  store i8 %conv142, i8* %attr144, align 1
  %74 = load i32, i32* %c, align 4
  %conv145 = trunc i32 %74 to i8
  %75 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend146 = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 37
  %color147 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend146, i32 0, i32 4
  store i8 %conv145, i8* %color147, align 1
  %76 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 3
  %77 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend148 = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer, %struct.mchar* %w_rend148)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BackwardTab() #0 {
entry:
  %x = alloca i32, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 65
  %4 = load i8*, i8** %w_tabs, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %x, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i32, i32* %x, align 4
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_tabs5 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 65
  %11 = load i8*, i8** %w_tabs5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom4
  %12 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %12, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %x, align 4
  %dec8 = add nsw i32 %14, -1
  store i32 %dec8, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %x, align 4
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer9 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_x10 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer9, i32 0, i32 3
  store i32 %15, i32* %l_x10, align 4
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %l_x13 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer12, i32 0, i32 3
  %19 = load i32, i32* %l_x13, align 4
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer14 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer14, i32 0, i32 4
  %21 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer11, i32 %19, i32 %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InsertLine(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 46
  %3 = load i32, i32* %w_top, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_y2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %5 = load i32, i32* %l_y2, align 4
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 47
  %7 = load i32, i32* %w_bot, align 4
  %cmp3 = icmp sgt i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %n.addr, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 47
  %10 = load i32, i32* %w_bot4, align 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_y6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 4
  %12 = load i32, i32* %l_y6, align 4
  %sub = sub nsw i32 %10, %12
  %add = add nsw i32 %sub, 1
  %cmp7 = icmp sgt i32 %8, %add
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot9 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 47
  %14 = load i32, i32* %w_bot9, align 4
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer10 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 3
  %l_y11 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer10, i32 0, i32 4
  %16 = load i32, i32* %l_y11, align 4
  %sub12 = sub nsw i32 %14, %16
  %add13 = add nsw i32 %sub12, 1
  store i32 %add13, i32* %n.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %18 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 0, %18
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer16 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 3
  %l_y17 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer16, i32 0, i32 4
  %20 = load i32, i32* %l_y17, align 4
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot18 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 47
  %22 = load i32, i32* %w_bot18, align 4
  %23 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 60
  %24 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %26 = load i8, i8* %color, align 1
  %conv = zext i8 %26 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend19 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend19, i32 0, i32 1
  %28 = load i8, i8* %attr, align 1
  %conv20 = zext i8 %28 to i32
  %and21 = and i32 %conv20, 128
  %tobool22 = icmp ne i32 %and21, 0
  %cond = select i1 %tobool22, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollV(%struct.win* %17, i32 %sub15, i32 %20, i32 %22, i32 %cond23)
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 3
  %30 = load i32, i32* %n.addr, align 4
  %sub25 = sub nsw i32 0, %30
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer26 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_y27 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer26, i32 0, i32 4
  %32 = load i32, i32* %l_y27, align 4
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot28 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 47
  %34 = load i32, i32* %w_bot28, align 4
  %35 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce29 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 60
  %36 = load i32, i32* %w_bce29, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.44

cond.true.31:                                     ; preds = %cond.end
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend32 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 37
  %color33 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend32, i32 0, i32 4
  %38 = load i8, i8* %color33, align 1
  %conv34 = zext i8 %38 to i32
  %and35 = and i32 %conv34, 240
  %shr36 = ashr i32 %and35, 4
  %39 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend37 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 37
  %attr38 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend37, i32 0, i32 1
  %40 = load i8, i8* %attr38, align 1
  %conv39 = zext i8 %40 to i32
  %and40 = and i32 %conv39, 128
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 256, i32 0
  %or43 = or i32 %shr36, %cond42
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.31
  %cond46 = phi i32 [ %or43, %cond.true.31 ], [ 0, %cond.false.44 ]
  call void @LScrollV(%struct.layer* %w_layer24, i32 %sub25, i32 %32, i32 %34, i32 %cond46)
  %41 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer47 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 3
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer48 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer48, i32 0, i32 3
  %43 = load i32, i32* %l_x, align 4
  %44 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer49 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 3
  %l_y50 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer49, i32 0, i32 4
  %45 = load i32, i32* %l_y50, align 4
  call void @LGotoPos(%struct.layer* %w_layer47, i32 %43, i32 %45)
  br label %return

return:                                           ; preds = %cond.end.45, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeleteLine(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 46
  %3 = load i32, i32* %w_top, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_y2 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 4
  %5 = load i32, i32* %l_y2, align 4
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 47
  %7 = load i32, i32* %w_bot, align 4
  %cmp3 = icmp sgt i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %n.addr, align 4
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 47
  %10 = load i32, i32* %w_bot4, align 4
  %11 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_y6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 4
  %12 = load i32, i32* %l_y6, align 4
  %sub = sub nsw i32 %10, %12
  %add = add nsw i32 %sub, 1
  %cmp7 = icmp sgt i32 %8, %add
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %13 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot9 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 47
  %14 = load i32, i32* %w_bot9, align 4
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer10 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 3
  %l_y11 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer10, i32 0, i32 4
  %16 = load i32, i32* %l_y11, align 4
  %sub12 = sub nsw i32 %14, %16
  %add13 = add nsw i32 %sub12, 1
  store i32 %add13, i32* %n.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end
  %17 = load %struct.win*, %struct.win** @curr, align 8
  %18 = load i32, i32* %n.addr, align 4
  %19 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 3
  %l_y16 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 4
  %20 = load i32, i32* %l_y16, align 4
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot17 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 47
  %22 = load i32, i32* %w_bot17, align 4
  %23 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 60
  %24 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %26 = load i8, i8* %color, align 1
  %conv = zext i8 %26 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend18 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend18, i32 0, i32 1
  %28 = load i8, i8* %attr, align 1
  %conv19 = zext i8 %28 to i32
  %and20 = and i32 %conv19, 128
  %tobool21 = icmp ne i32 %and20, 0
  %cond = select i1 %tobool21, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollV(%struct.win* %17, i32 %18, i32 %20, i32 %22, i32 %cond22)
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer23 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 3
  %30 = load i32, i32* %n.addr, align 4
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_y25 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer24, i32 0, i32 4
  %32 = load i32, i32* %l_y25, align 4
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot26 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 47
  %34 = load i32, i32* %w_bot26, align 4
  %35 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce27 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 60
  %36 = load i32, i32* %w_bce27, align 4
  %tobool28 = icmp ne i32 %36, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.42

cond.true.29:                                     ; preds = %cond.end
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend30 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 37
  %color31 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend30, i32 0, i32 4
  %38 = load i8, i8* %color31, align 1
  %conv32 = zext i8 %38 to i32
  %and33 = and i32 %conv32, 240
  %shr34 = ashr i32 %and33, 4
  %39 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend35 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 37
  %attr36 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend35, i32 0, i32 1
  %40 = load i8, i8* %attr36, align 1
  %conv37 = zext i8 %40 to i32
  %and38 = and i32 %conv37, 128
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 256, i32 0
  %or41 = or i32 %shr34, %cond40
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.29
  %cond44 = phi i32 [ %or41, %cond.true.29 ], [ 0, %cond.false.42 ]
  call void @LScrollV(%struct.layer* %w_layer23, i32 %30, i32 %32, i32 %34, i32 %cond44)
  %41 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer45 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 3
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer46 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer46, i32 0, i32 3
  %43 = load i32, i32* %l_x, align 4
  %44 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer47 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 3
  %l_y48 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer47, i32 0, i32 4
  %45 = load i32, i32* %l_y48, align 4
  call void @LGotoPos(%struct.layer* %w_layer45, i32 %43, i32 %45)
  br label %return

return:                                           ; preds = %cond.end.43, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeleteChar(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %3 = load i32, i32* %l_x, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* @cols, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %x, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i32, i32* %y, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 36
  %9 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %9, i64 %idxprom
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %image, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %12 = load i32, i32* @cols, align 4
  %conv = sext i32 %12 to i64
  call void @bcopy(i8* %10, i8* %11, i64 %conv) #1
  %13 = load i32, i32* %y, align 4
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines3 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 36
  %15 = load %struct.mline*, %struct.mline** %w_mlines3, align 8
  %arrayidx4 = getelementptr inbounds %struct.mline, %struct.mline* %15, i64 %idxprom2
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx4, i32 0, i32 1
  %16 = load i8*, i8** %attr, align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %18 = load i32, i32* @cols, align 4
  %conv5 = sext i32 %18 to i64
  call void @bcopy(i8* %16, i8* %17, i64 %conv5) #1
  %19 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines7 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 36
  %21 = load %struct.mline*, %struct.mline** %w_mlines7, align 8
  %arrayidx8 = getelementptr inbounds %struct.mline, %struct.mline* %21, i64 %idxprom6
  %font = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx8, i32 0, i32 2
  %22 = load i8*, i8** %font, align 8
  %23 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %24 = load i32, i32* @cols, align 4
  %conv9 = sext i32 %24 to i64
  call void @bcopy(i8* %22, i8* %23, i64 %conv9) #1
  %25 = load i32, i32* %y, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines11 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 36
  %27 = load %struct.mline*, %struct.mline** %w_mlines11, align 8
  %arrayidx12 = getelementptr inbounds %struct.mline, %struct.mline* %27, i64 %idxprom10
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx12, i32 0, i32 3
  %28 = load i8*, i8** %fontx, align 8
  %29 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %30 = load i32, i32* @cols, align 4
  %conv13 = sext i32 %30 to i64
  call void @bcopy(i8* %28, i8* %29, i64 %conv13) #1
  %31 = load i32, i32* %y, align 4
  %idxprom14 = sext i32 %31 to i64
  %32 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines15 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 36
  %33 = load %struct.mline*, %struct.mline** %w_mlines15, align 8
  %arrayidx16 = getelementptr inbounds %struct.mline, %struct.mline* %33, i64 %idxprom14
  %color = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx16, i32 0, i32 4
  %34 = load i8*, i8** %color, align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %36 = load i32, i32* @cols, align 4
  %conv17 = sext i32 %36 to i64
  call void @bcopy(i8* %34, i8* %35, i64 %conv17) #1
  br label %do.end

do.end:                                           ; preds = %do.body
  %37 = load %struct.win*, %struct.win** @curr, align 8
  %38 = load i32, i32* %n.addr, align 4
  %39 = load i32, i32* %y, align 4
  %40 = load i32, i32* %x, align 4
  %41 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer18 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer18, i32 0, i32 1
  %42 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %42, 1
  %43 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 60
  %44 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %45 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 37
  %color19 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %46 = load i8, i8* %color19, align 1
  %conv20 = zext i8 %46 to i32
  %and = and i32 %conv20, 240
  %shr = ashr i32 %and, 4
  %47 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend21 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 37
  %attr22 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend21, i32 0, i32 1
  %48 = load i8, i8* %attr22, align 1
  %conv23 = zext i8 %48 to i32
  %and24 = and i32 %conv23, 128
  %tobool25 = icmp ne i32 %and24, 0
  %cond = select i1 %tobool25, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollH(%struct.win* %37, i32 %38, i32 %39, i32 %40, i32 %sub, i32 %cond26)
  %49 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer27 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 3
  %50 = load i32, i32* %n.addr, align 4
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %x, align 4
  %53 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer28 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 3
  %l_width29 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer28, i32 0, i32 1
  %54 = load i32, i32* %l_width29, align 4
  %sub30 = sub nsw i32 %54, 1
  %55 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce31 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 60
  %56 = load i32, i32* %w_bce31, align 4
  %tobool32 = icmp ne i32 %56, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.46

cond.true.33:                                     ; preds = %cond.end
  %57 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend34 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 37
  %color35 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend34, i32 0, i32 4
  %58 = load i8, i8* %color35, align 1
  %conv36 = zext i8 %58 to i32
  %and37 = and i32 %conv36, 240
  %shr38 = ashr i32 %and37, 4
  %59 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend39 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 37
  %attr40 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend39, i32 0, i32 1
  %60 = load i8, i8* %attr40, align 1
  %conv41 = zext i8 %60 to i32
  %and42 = and i32 %conv41, 128
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 256, i32 0
  %or45 = or i32 %shr38, %cond44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.33
  %cond48 = phi i32 [ %or45, %cond.true.33 ], [ 0, %cond.false.46 ]
  call void @LScrollH(%struct.layer* %w_layer27, i32 %50, i32 %51, i32 %52, i32 %sub30, i32 %cond48, %struct.mline* @mline_old)
  %61 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer49 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 3
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %y, align 4
  call void @LGotoPos(%struct.layer* %w_layer49, i32 %62, i32 %63)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InsertChar(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %1 = load i32, i32* %l_y, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %3 = load i32, i32* %l_x, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* @cols, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %x, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %x, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load i32, i32* %y, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 36
  %10 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %10, i64 %idxprom
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %11 = load i8*, i8** %image, align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %13 = load i32, i32* @cols, align 4
  %conv = sext i32 %13 to i64
  call void @bcopy(i8* %11, i8* %12, i64 %conv) #1
  %14 = load i32, i32* %y, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines6 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines6, align 8
  %arrayidx7 = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom5
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx7, i32 0, i32 1
  %17 = load i8*, i8** %attr, align 8
  %18 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %19 = load i32, i32* @cols, align 4
  %conv8 = sext i32 %19 to i64
  call void @bcopy(i8* %17, i8* %18, i64 %conv8) #1
  %20 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines10 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 36
  %22 = load %struct.mline*, %struct.mline** %w_mlines10, align 8
  %arrayidx11 = getelementptr inbounds %struct.mline, %struct.mline* %22, i64 %idxprom9
  %font = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx11, i32 0, i32 2
  %23 = load i8*, i8** %font, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %25 = load i32, i32* @cols, align 4
  %conv12 = sext i32 %25 to i64
  call void @bcopy(i8* %23, i8* %24, i64 %conv12) #1
  %26 = load i32, i32* %y, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines14 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 36
  %28 = load %struct.mline*, %struct.mline** %w_mlines14, align 8
  %arrayidx15 = getelementptr inbounds %struct.mline, %struct.mline* %28, i64 %idxprom13
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx15, i32 0, i32 3
  %29 = load i8*, i8** %fontx, align 8
  %30 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %31 = load i32, i32* @cols, align 4
  %conv16 = sext i32 %31 to i64
  call void @bcopy(i8* %29, i8* %30, i64 %conv16) #1
  %32 = load i32, i32* %y, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.win*, %struct.win** @curr, align 8
  %w_mlines18 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 36
  %34 = load %struct.mline*, %struct.mline** %w_mlines18, align 8
  %arrayidx19 = getelementptr inbounds %struct.mline, %struct.mline* %34, i64 %idxprom17
  %color = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx19, i32 0, i32 4
  %35 = load i8*, i8** %color, align 8
  %36 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %37 = load i32, i32* @cols, align 4
  %conv20 = sext i32 %37 to i64
  call void @bcopy(i8* %35, i8* %36, i64 %conv20) #1
  br label %do.end

do.end:                                           ; preds = %do.body
  %38 = load %struct.win*, %struct.win** @curr, align 8
  %39 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %39
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %x, align 4
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer21 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer21, i32 0, i32 1
  %43 = load i32, i32* %l_width, align 4
  %sub22 = sub nsw i32 %43, 1
  %44 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 60
  %45 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %46 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 37
  %color23 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %47 = load i8, i8* %color23, align 1
  %conv24 = zext i8 %47 to i32
  %and = and i32 %conv24, 240
  %shr = ashr i32 %and, 4
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend25 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 37
  %attr26 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend25, i32 0, i32 1
  %49 = load i8, i8* %attr26, align 1
  %conv27 = zext i8 %49 to i32
  %and28 = and i32 %conv27, 128
  %tobool29 = icmp ne i32 %and28, 0
  %cond = select i1 %tobool29, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond30 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollH(%struct.win* %38, i32 %sub, i32 %40, i32 %41, i32 %sub22, i32 %cond30)
  %50 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer31 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 3
  %51 = load i32, i32* %n.addr, align 4
  %sub32 = sub nsw i32 0, %51
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %x, align 4
  %54 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer33 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 3
  %l_width34 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer33, i32 0, i32 1
  %55 = load i32, i32* %l_width34, align 4
  %sub35 = sub nsw i32 %55, 1
  %56 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce36 = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 60
  %57 = load i32, i32* %w_bce36, align 4
  %tobool37 = icmp ne i32 %57, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.51

cond.true.38:                                     ; preds = %cond.end
  %58 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend39 = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 37
  %color40 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend39, i32 0, i32 4
  %59 = load i8, i8* %color40, align 1
  %conv41 = zext i8 %59 to i32
  %and42 = and i32 %conv41, 240
  %shr43 = ashr i32 %and42, 4
  %60 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend44 = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 37
  %attr45 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend44, i32 0, i32 1
  %61 = load i8, i8* %attr45, align 1
  %conv46 = zext i8 %61 to i32
  %and47 = and i32 %conv46, 128
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 256, i32 0
  %or50 = or i32 %shr43, %cond49
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.38
  %cond53 = phi i32 [ %or50, %cond.true.38 ], [ 0, %cond.false.51 ]
  call void @LScrollH(%struct.layer* %w_layer31, i32 %sub32, i32 %52, i32 %53, i32 %sub35, i32 %cond53, %struct.mline* @mline_old)
  %62 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer54 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 3
  %63 = load i32, i32* %x, align 4
  %64 = load i32, i32* %y, align 4
  call void @LGotoPos(%struct.layer* %w_layer54, i32 %63, i32 %64)
  br label %return

return:                                           ; preds = %cond.end.52, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ASetMode(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %olddisplay = alloca %struct.display*, align 8
  %cv = alloca %struct.canvas*, align 8
  store i32 %on, i32* %on.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_NumArgs = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 28
  %2 = load i32, i32* %w_NumArgs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_args = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 27
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %w_args, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  switch i32 %5, label %sw.default [
    i32 4, label %sw.bb
    i32 20, label %sw.bb.12
    i32 34, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %for.body
  %6 = load i32, i32* %on.addr, align 4
  %7 = load %struct.win*, %struct.win** @curr, align 8
  %w_insert = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 50
  store i32 %6, i32* %w_insert, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %8 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %8, %struct.display** %olddisplay, align 8
  %9 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %9, %struct.display** @display, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %do.body
  %10 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %10, null
  br i1 %tobool, label %for.body.2, label %for.end.11

for.body.2:                                       ; preds = %for.cond.1
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 3
  %12 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body.2
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool4 = icmp ne %struct.canvas* %13, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 9
  %15 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %cmp6 = icmp eq %struct.layer* %15, %w_layer
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp7 = icmp eq %struct.canvas* %19, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  br label %for.inc.10

if.end.9:                                         ; preds = %for.end
  %20 = load i32, i32* %on.addr, align 4
  call void @InsertMode(i32 %20)
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end.9, %if.then.8
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 0
  %22 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %22, %struct.display** @display, align 8
  br label %for.cond.1

for.end.11:                                       ; preds = %for.cond.1
  %23 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %23, %struct.display** @display, align 8
  br label %do.end

do.end:                                           ; preds = %for.end.11
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %24 = load i32, i32* %on.addr, align 4
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_autolf = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 56
  store i32 %24, i32* %w_autolf, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %26 = load i32, i32* %on.addr, align 4
  %tobool14 = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_curvvis = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 55
  store i32 %lnot.ext, i32* %w_curvvis, align 4
  %28 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 3
  %29 = load %struct.win*, %struct.win** @curr, align 8
  %w_curinv = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 54
  %30 = load i32, i32* %w_curinv, align 4
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.13
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.13
  %31 = load %struct.win*, %struct.win** @curr, align 8
  %w_curvvis17 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 55
  %32 = load i32, i32* %w_curvvis17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %32, %cond.false ]
  call void @LCursorVisibility(%struct.layer* %w_layer15, i32 %cond)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end, %sw.bb.12, %do.end
  br label %for.inc.18

for.inc.18:                                       ; preds = %sw.epilog
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PrintStart() #0 {
entry:
  %cv = alloca %struct.canvas*, align 8
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 7
  store %struct.display* null, %struct.display** %w_pdisplay, align 8
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_lastdisp = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 8
  %2 = load %struct.display*, %struct.display** %w_lastdisp, align 8
  store %struct.display* %2, %struct.display** @display, align 8
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 10
  %6 = load %struct.win*, %struct.win** %d_fore, align 8
  %cmp = icmp eq %struct.win* %4, %6
  br i1 %cmp, label %land.lhs.true.1, label %if.then

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** @printcmd, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %if.end.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.1
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 73
  %str = bitcast %union.tcu* %arrayidx to i8**
  %9 = load i8*, i8** %str, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.end.15, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %10 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %10, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load %struct.display*, %struct.display** @display, align 8
  %tobool4 = icmp ne %struct.display* %11, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_fore5 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 10
  %14 = load %struct.win*, %struct.win** %d_fore5, align 8
  %cmp6 = icmp eq %struct.win* %12, %14
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %for.body
  %15 = load i8*, i8** @printcmd, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs10 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx11 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs10, i32 0, i64 73
  %str12 = bitcast %union.tcu* %arrayidx11 to i8**
  %17 = load i8*, i8** %str12, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false.9, %land.lhs.true.7
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 0
  %19 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %19, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %lor.lhs.false, %land.lhs.true.1
  %20 = load %struct.display*, %struct.display** @display, align 8
  %tobool16 = icmp ne %struct.display* %20, null
  br i1 %tobool16, label %if.end.47, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %22 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %22, %struct.canvas** %cv, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %if.then.17
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool19 = icmp ne %struct.canvas* %23, null
  br i1 %tobool19, label %for.body.20, label %for.end.30

for.body.20:                                      ; preds = %for.cond.18
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 1
  %25 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %25, %struct.display** @display, align 8
  %26 = load i8*, i8** @printcmd, align 8
  %tobool21 = icmp ne i8* %26, null
  br i1 %tobool21, label %if.then.27, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %for.body.20
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 73
  %str25 = bitcast %union.tcu* %arrayidx24 to i8**
  %28 = load i8*, i8** %str25, align 8
  %tobool26 = icmp ne i8* %28, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.22, %for.body.20
  br label %for.end.30

if.end.28:                                        ; preds = %lor.lhs.false.22
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %29 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 10
  %30 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %30, %struct.canvas** %cv, align 8
  br label %for.cond.18

for.end.30:                                       ; preds = %if.then.27, %for.cond.18
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool31 = icmp ne %struct.canvas* %31, null
  br i1 %tobool31, label %if.end.46, label %if.then.32

if.then.32:                                       ; preds = %for.end.30
  %32 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %32, %struct.display** @display, align 8
  %33 = load %struct.display*, %struct.display** @display, align 8
  %tobool33 = icmp ne %struct.display* %33, null
  br i1 %tobool33, label %lor.lhs.false.34, label %if.then.44

lor.lhs.false.34:                                 ; preds = %if.then.32
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_next35 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 0
  %35 = load %struct.display*, %struct.display** %d_next35, align 8
  %tobool36 = icmp ne %struct.display* %35, null
  br i1 %tobool36, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %36 = load i8*, i8** @printcmd, align 8
  %tobool38 = icmp ne i8* %36, null
  br i1 %tobool38, label %if.end.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.37
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs40 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 83
  %arrayidx41 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs40, i32 0, i64 73
  %str42 = bitcast %union.tcu* %arrayidx41 to i8**
  %38 = load i8*, i8** %str42, align 8
  %tobool43 = icmp ne i8* %38, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.34, %if.then.32
  br label %if.end.56

if.end.45:                                        ; preds = %lor.lhs.false.39, %lor.lhs.false.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.end.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.15
  %39 = load %struct.display*, %struct.display** @display, align 8
  %40 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay48 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 7
  store %struct.display* %39, %struct.display** %w_pdisplay48, align 8
  %41 = load %struct.win*, %struct.win** @curr, align 8
  %w_string = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 63
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_string, i32 0, i32 0
  %42 = load %struct.win*, %struct.win** @curr, align 8
  %w_stringp = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 64
  store i8* %arraydecay, i8** %w_stringp, align 8
  %43 = load %struct.win*, %struct.win** @curr, align 8
  %w_state = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 34
  store i32 5, i32* %w_state, align 4
  %44 = load i8*, i8** @printcmd, align 8
  %tobool49 = icmp ne i8* %44, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %if.end.47
  %45 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay51 = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 7
  %46 = load %struct.display*, %struct.display** %w_pdisplay51, align 8
  %d_printfd = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 98
  %47 = load i32, i32* %d_printfd, align 4
  %cmp52 = icmp slt i32 %47, 0
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %land.lhs.true.50
  %48 = load %struct.win*, %struct.win** @curr, align 8
  %49 = load i8*, i8** @printcmd, align 8
  %call = call i32 @printpipe(%struct.win* %48, i8* %49)
  %50 = load %struct.win*, %struct.win** @curr, align 8
  %w_pdisplay54 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 7
  %51 = load %struct.display*, %struct.display** %w_pdisplay54, align 8
  %d_printfd55 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 98
  store i32 %call, i32* %d_printfd55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.44, %if.then.53, %land.lhs.true.50, %if.end.47
  ret void
}

declare void @LCursorVisibility(%struct.layer*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @ScrollRegion(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.win*, %struct.win** @curr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 46
  %3 = load i32, i32* %w_top, align 4
  %4 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 47
  %5 = load i32, i32* %w_bot, align 4
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 60
  %7 = load i32, i32* %w_bce, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 37
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend, i32 0, i32 4
  %9 = load i8, i8* %color, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %10 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend1 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 37
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend1, i32 0, i32 1
  %11 = load i8, i8* %attr, align 1
  %conv2 = zext i8 %11 to i32
  %and3 = and i32 %conv2, 128
  %tobool4 = icmp ne i32 %and3, 0
  %cond = select i1 %tobool4, i32 256, i32 0
  %or = or i32 %shr, %cond
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  call void @MScrollV(%struct.win* %0, i32 %1, i32 %3, i32 %5, i32 %cond5)
  %12 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %13 = load i32, i32* %n.addr, align 4
  %14 = load %struct.win*, %struct.win** @curr, align 8
  %w_top6 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 46
  %15 = load i32, i32* %w_top6, align 4
  %16 = load %struct.win*, %struct.win** @curr, align 8
  %w_bot7 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 47
  %17 = load i32, i32* %w_bot7, align 4
  %18 = load %struct.win*, %struct.win** @curr, align 8
  %w_bce8 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 60
  %19 = load i32, i32* %w_bce8, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.23

cond.true.10:                                     ; preds = %cond.end
  %20 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend11 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 37
  %color12 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend11, i32 0, i32 4
  %21 = load i8, i8* %color12, align 1
  %conv13 = zext i8 %21 to i32
  %and14 = and i32 %conv13, 240
  %shr15 = ashr i32 %and14, 4
  %22 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend16 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 37
  %attr17 = getelementptr inbounds %struct.mchar, %struct.mchar* %w_rend16, i32 0, i32 1
  %23 = load i8, i8* %attr17, align 1
  %conv18 = zext i8 %23 to i32
  %and19 = and i32 %conv18, 128
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 256, i32 0
  %or22 = or i32 %shr15, %cond21
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.10
  %cond25 = phi i32 [ %or22, %cond.true.10 ], [ 0, %cond.false.23 ]
  call void @LScrollV(%struct.layer* %w_layer, i32 %13, i32 %15, i32 %17, i32 %cond25)
  %24 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer26 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 3
  %25 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer27 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer27, i32 0, i32 3
  %26 = load i32, i32* %l_x, align 4
  %27 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer28 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer28, i32 0, i32 4
  %28 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer26, i32 %26, i32 %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WReverseVideo(%struct.win* %p, i32 %on) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %on.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
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
  %8 = load i32, i32* %on.addr, align 4
  call void @ReverseVideo(i32 %8)
  %9 = load i32, i32* %on.addr, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_revvid = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 53
  %11 = load i32, i32* %w_revvid, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.15

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 93
  %str = bitcast %union.tcu* %arrayidx to i8**
  %13 = load i8*, i8** %str, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.end.15, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true.3
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs6 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 83
  %arrayidx7 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs6, i32 0, i64 43
  %str8 = bitcast %union.tcu* %arrayidx7 to i8**
  %15 = load i8*, i8** %str8, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.5
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs11 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx12 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs11, i32 0, i64 43
  %str13 = bitcast %union.tcu* %arrayidx12 to i8**
  %17 = load i8*, i8** %str13, align 8
  call void @AddCStr(i8* %17)
  br label %if.end.14

if.else:                                          ; preds = %if.then.5
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bell = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 66
  store i32 3, i32* %w_bell, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true.3, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 10
  %20 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @LMouseMode(%struct.layer*, i32) #4

declare void @EnterAltScreen(%struct.win*) #4

declare void @LeaveAltScreen(%struct.win*) #4

; Function Attrs: nounwind uwtable
define internal void @RestorePosRendition() #0 {
entry:
  %0 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %1 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 3
  %2 = load i32, i32* %l_x, align 4
  %3 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 4
  %4 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %w_layer, i32 %2, i32 %4)
  %5 = load %struct.win*, %struct.win** @curr, align 8
  %w_layer3 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %6 = load %struct.win*, %struct.win** @curr, align 8
  %w_rend = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 37
  call void @LSetRendition(%struct.layer* %w_layer3, %struct.mchar* %w_rend)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MClearArea(%struct.win* %p, i32 %xs, i32 %ys, i32 %xe, i32 %ye, i32 %bce) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %xxe = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load i32, i32* %ys.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ye.addr, align 4
  %2 = load i32, i32* %ys.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %xs.addr, align 4
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %cmp2 = icmp sge i32 %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_width5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 1
  %7 = load i32, i32* %l_width5, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %xs.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %8 = load i32, i32* %xe.addr, align 4
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_width8 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer7, i32 0, i32 1
  %10 = load i32, i32* %l_width8, align 4
  %cmp9 = icmp sge i32 %8, %10
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.6
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_width12 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer11, i32 0, i32 1
  %12 = load i32, i32* %l_width12, align 4
  %sub13 = sub nsw i32 %12, 1
  store i32 %sub13, i32* %xe.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.6
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer15 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer15, i32 0, i32 5
  %14 = load i32, i32* %l_encoding, align 4
  %cmp16 = icmp eq i32 %14, 8
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %15 = load i32, i32* %xs.addr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 36
  %17 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %18 = load i32, i32* %ys.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %17, i64 %idx.ext
  %font = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr, i32 0, i32 2
  %19 = load i8*, i8** %font, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv, 255
  br i1 %cmp17, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %cond.true
  %21 = load i32, i32* %xs.addr, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines20 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 36
  %23 = load %struct.mline*, %struct.mline** %w_mlines20, align 8
  %24 = load i32, i32* %ys.addr, align 4
  %idx.ext21 = sext i32 %24 to i64
  %add.ptr22 = getelementptr inbounds %struct.mline, %struct.mline* %23, i64 %idx.ext21
  %image = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr22, i32 0, i32 0
  %25 = load i8*, i8** %image, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom19
  %26 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv24, 255
  br i1 %cmp25, label %if.then.36, label %if.end.105

cond.false:                                       ; preds = %if.end.14
  %27 = load i32, i32* %xs.addr, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines28 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 36
  %29 = load %struct.mline*, %struct.mline** %w_mlines28, align 8
  %30 = load i32, i32* %ys.addr, align 4
  %idx.ext29 = sext i32 %30 to i64
  %add.ptr30 = getelementptr inbounds %struct.mline, %struct.mline* %29, i64 %idx.ext29
  %font31 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr30, i32 0, i32 2
  %31 = load i8*, i8** %font31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 %idxprom27
  %32 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %32 to i32
  %and = and i32 %conv33, 224
  %cmp34 = icmp eq i32 %and, 128
  br i1 %cmp34, label %if.then.36, label %if.end.105

if.then.36:                                       ; preds = %cond.false, %land.lhs.true
  %33 = load i32, i32* %xs.addr, align 4
  %cmp37 = icmp sgt i32 %33, 0
  br i1 %cmp37, label %if.then.39, label %if.end.72

if.then.39:                                       ; preds = %if.then.36
  br label %do.body

do.body:                                          ; preds = %if.then.39
  %34 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %35 = load i32, i32* %xs.addr, align 4
  %sub40 = sub nsw i32 %35, 1
  %idxprom41 = sext i32 %sub40 to i64
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines42 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 36
  %37 = load %struct.mline*, %struct.mline** %w_mlines42, align 8
  %38 = load i32, i32* %ys.addr, align 4
  %idx.ext43 = sext i32 %38 to i64
  %add.ptr44 = getelementptr inbounds %struct.mline, %struct.mline* %37, i64 %idx.ext43
  %image45 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr44, i32 0, i32 0
  %39 = load i8*, i8** %image45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  store i8 %34, i8* %arrayidx46, align 1
  %40 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %41 = load i32, i32* %xs.addr, align 4
  %sub47 = sub nsw i32 %41, 1
  %idxprom48 = sext i32 %sub47 to i64
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines49 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 36
  %43 = load %struct.mline*, %struct.mline** %w_mlines49, align 8
  %44 = load i32, i32* %ys.addr, align 4
  %idx.ext50 = sext i32 %44 to i64
  %add.ptr51 = getelementptr inbounds %struct.mline, %struct.mline* %43, i64 %idx.ext50
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr51, i32 0, i32 1
  %45 = load i8*, i8** %attr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %45, i64 %idxprom48
  store i8 %40, i8* %arrayidx52, align 1
  %46 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %47 = load i32, i32* %xs.addr, align 4
  %sub53 = sub nsw i32 %47, 1
  %idxprom54 = sext i32 %sub53 to i64
  %48 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines55 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 36
  %49 = load %struct.mline*, %struct.mline** %w_mlines55, align 8
  %50 = load i32, i32* %ys.addr, align 4
  %idx.ext56 = sext i32 %50 to i64
  %add.ptr57 = getelementptr inbounds %struct.mline, %struct.mline* %49, i64 %idx.ext56
  %font58 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr57, i32 0, i32 2
  %51 = load i8*, i8** %font58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %51, i64 %idxprom54
  store i8 %46, i8* %arrayidx59, align 1
  %52 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %53 = load i32, i32* %xs.addr, align 4
  %sub60 = sub nsw i32 %53, 1
  %idxprom61 = sext i32 %sub60 to i64
  %54 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines62 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 36
  %55 = load %struct.mline*, %struct.mline** %w_mlines62, align 8
  %56 = load i32, i32* %ys.addr, align 4
  %idx.ext63 = sext i32 %56 to i64
  %add.ptr64 = getelementptr inbounds %struct.mline, %struct.mline* %55, i64 %idx.ext63
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr64, i32 0, i32 3
  %57 = load i8*, i8** %fontx, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %57, i64 %idxprom61
  store i8 %52, i8* %arrayidx65, align 1
  %58 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %59 = load i32, i32* %xs.addr, align 4
  %sub66 = sub nsw i32 %59, 1
  %idxprom67 = sext i32 %sub66 to i64
  %60 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines68 = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 36
  %61 = load %struct.mline*, %struct.mline** %w_mlines68, align 8
  %62 = load i32, i32* %ys.addr, align 4
  %idx.ext69 = sext i32 %62 to i64
  %add.ptr70 = getelementptr inbounds %struct.mline, %struct.mline* %61, i64 %idx.ext69
  %color = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr70, i32 0, i32 4
  %63 = load i8*, i8** %color, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %63, i64 %idxprom67
  store i8 %58, i8* %arrayidx71, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.72

if.end.72:                                        ; preds = %do.end, %if.then.36
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  %64 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %65 = load i32, i32* %xs.addr, align 4
  %idxprom74 = sext i32 %65 to i64
  %66 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines75 = getelementptr inbounds %struct.win, %struct.win* %66, i32 0, i32 36
  %67 = load %struct.mline*, %struct.mline** %w_mlines75, align 8
  %68 = load i32, i32* %ys.addr, align 4
  %idx.ext76 = sext i32 %68 to i64
  %add.ptr77 = getelementptr inbounds %struct.mline, %struct.mline* %67, i64 %idx.ext76
  %image78 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr77, i32 0, i32 0
  %69 = load i8*, i8** %image78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %69, i64 %idxprom74
  store i8 %64, i8* %arrayidx79, align 1
  %70 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %71 = load i32, i32* %xs.addr, align 4
  %idxprom80 = sext i32 %71 to i64
  %72 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines81 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 36
  %73 = load %struct.mline*, %struct.mline** %w_mlines81, align 8
  %74 = load i32, i32* %ys.addr, align 4
  %idx.ext82 = sext i32 %74 to i64
  %add.ptr83 = getelementptr inbounds %struct.mline, %struct.mline* %73, i64 %idx.ext82
  %attr84 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr83, i32 0, i32 1
  %75 = load i8*, i8** %attr84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %75, i64 %idxprom80
  store i8 %70, i8* %arrayidx85, align 1
  %76 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %77 = load i32, i32* %xs.addr, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines87 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 36
  %79 = load %struct.mline*, %struct.mline** %w_mlines87, align 8
  %80 = load i32, i32* %ys.addr, align 4
  %idx.ext88 = sext i32 %80 to i64
  %add.ptr89 = getelementptr inbounds %struct.mline, %struct.mline* %79, i64 %idx.ext88
  %font90 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr89, i32 0, i32 2
  %81 = load i8*, i8** %font90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %81, i64 %idxprom86
  store i8 %76, i8* %arrayidx91, align 1
  %82 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %83 = load i32, i32* %xs.addr, align 4
  %idxprom92 = sext i32 %83 to i64
  %84 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines93 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 36
  %85 = load %struct.mline*, %struct.mline** %w_mlines93, align 8
  %86 = load i32, i32* %ys.addr, align 4
  %idx.ext94 = sext i32 %86 to i64
  %add.ptr95 = getelementptr inbounds %struct.mline, %struct.mline* %85, i64 %idx.ext94
  %fontx96 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr95, i32 0, i32 3
  %87 = load i8*, i8** %fontx96, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %87, i64 %idxprom92
  store i8 %82, i8* %arrayidx97, align 1
  %88 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %89 = load i32, i32* %xs.addr, align 4
  %idxprom98 = sext i32 %89 to i64
  %90 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines99 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 36
  %91 = load %struct.mline*, %struct.mline** %w_mlines99, align 8
  %92 = load i32, i32* %ys.addr, align 4
  %idx.ext100 = sext i32 %92 to i64
  %add.ptr101 = getelementptr inbounds %struct.mline, %struct.mline* %91, i64 %idx.ext100
  %color102 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr101, i32 0, i32 4
  %93 = load i8*, i8** %color102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %93, i64 %idxprom98
  store i8 %88, i8* %arrayidx103, align 1
  br label %do.end.104

do.end.104:                                       ; preds = %do.body.73
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %cond.false, %land.lhs.true, %cond.true
  %94 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer106 = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 3
  %l_encoding107 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer106, i32 0, i32 5
  %95 = load i32, i32* %l_encoding107, align 4
  %cmp108 = icmp eq i32 %95, 8
  br i1 %cmp108, label %cond.true.110, label %cond.false.131

cond.true.110:                                    ; preds = %if.end.105
  %96 = load i32, i32* %xe.addr, align 4
  %add = add nsw i32 %96, 1
  %idxprom111 = sext i32 %add to i64
  %97 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines112 = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 36
  %98 = load %struct.mline*, %struct.mline** %w_mlines112, align 8
  %99 = load i32, i32* %ye.addr, align 4
  %idx.ext113 = sext i32 %99 to i64
  %add.ptr114 = getelementptr inbounds %struct.mline, %struct.mline* %98, i64 %idx.ext113
  %font115 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr114, i32 0, i32 2
  %100 = load i8*, i8** %font115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %100, i64 %idxprom111
  %101 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %101 to i32
  %cmp118 = icmp eq i32 %conv117, 255
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.223

land.lhs.true.120:                                ; preds = %cond.true.110
  %102 = load i32, i32* %xe.addr, align 4
  %add121 = add nsw i32 %102, 1
  %idxprom122 = sext i32 %add121 to i64
  %103 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines123 = getelementptr inbounds %struct.win, %struct.win* %103, i32 0, i32 36
  %104 = load %struct.mline*, %struct.mline** %w_mlines123, align 8
  %105 = load i32, i32* %ye.addr, align 4
  %idx.ext124 = sext i32 %105 to i64
  %add.ptr125 = getelementptr inbounds %struct.mline, %struct.mline* %104, i64 %idx.ext124
  %image126 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr125, i32 0, i32 0
  %106 = load i8*, i8** %image126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %106, i64 %idxprom122
  %107 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %107 to i32
  %cmp129 = icmp eq i32 %conv128, 255
  br i1 %cmp129, label %if.then.153, label %if.end.223

cond.false.131:                                   ; preds = %if.end.105
  %108 = load i32, i32* %xe.addr, align 4
  %idxprom132 = sext i32 %108 to i64
  %109 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines133 = getelementptr inbounds %struct.win, %struct.win* %109, i32 0, i32 36
  %110 = load %struct.mline*, %struct.mline** %w_mlines133, align 8
  %111 = load i32, i32* %ye.addr, align 4
  %idx.ext134 = sext i32 %111 to i64
  %add.ptr135 = getelementptr inbounds %struct.mline, %struct.mline* %110, i64 %idx.ext134
  %font136 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr135, i32 0, i32 2
  %112 = load i8*, i8** %font136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %112, i64 %idxprom132
  %113 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %113 to i32
  %and139 = and i32 %conv138, 31
  %cmp140 = icmp ne i32 %and139, 0
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.223

land.lhs.true.142:                                ; preds = %cond.false.131
  %114 = load i32, i32* %xe.addr, align 4
  %idxprom143 = sext i32 %114 to i64
  %115 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines144 = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 36
  %116 = load %struct.mline*, %struct.mline** %w_mlines144, align 8
  %117 = load i32, i32* %ye.addr, align 4
  %idx.ext145 = sext i32 %117 to i64
  %add.ptr146 = getelementptr inbounds %struct.mline, %struct.mline* %116, i64 %idx.ext145
  %font147 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr146, i32 0, i32 2
  %118 = load i8*, i8** %font147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %118, i64 %idxprom143
  %119 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %119 to i32
  %and150 = and i32 %conv149, 224
  %cmp151 = icmp eq i32 %and150, 0
  br i1 %cmp151, label %if.then.153, label %if.end.223

if.then.153:                                      ; preds = %land.lhs.true.142, %land.lhs.true.120
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  %120 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %121 = load i32, i32* %xe.addr, align 4
  %idxprom155 = sext i32 %121 to i64
  %122 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines156 = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 36
  %123 = load %struct.mline*, %struct.mline** %w_mlines156, align 8
  %124 = load i32, i32* %ye.addr, align 4
  %idx.ext157 = sext i32 %124 to i64
  %add.ptr158 = getelementptr inbounds %struct.mline, %struct.mline* %123, i64 %idx.ext157
  %image159 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr158, i32 0, i32 0
  %125 = load i8*, i8** %image159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %125, i64 %idxprom155
  store i8 %120, i8* %arrayidx160, align 1
  %126 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %127 = load i32, i32* %xe.addr, align 4
  %idxprom161 = sext i32 %127 to i64
  %128 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines162 = getelementptr inbounds %struct.win, %struct.win* %128, i32 0, i32 36
  %129 = load %struct.mline*, %struct.mline** %w_mlines162, align 8
  %130 = load i32, i32* %ye.addr, align 4
  %idx.ext163 = sext i32 %130 to i64
  %add.ptr164 = getelementptr inbounds %struct.mline, %struct.mline* %129, i64 %idx.ext163
  %attr165 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr164, i32 0, i32 1
  %131 = load i8*, i8** %attr165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %131, i64 %idxprom161
  store i8 %126, i8* %arrayidx166, align 1
  %132 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %133 = load i32, i32* %xe.addr, align 4
  %idxprom167 = sext i32 %133 to i64
  %134 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines168 = getelementptr inbounds %struct.win, %struct.win* %134, i32 0, i32 36
  %135 = load %struct.mline*, %struct.mline** %w_mlines168, align 8
  %136 = load i32, i32* %ye.addr, align 4
  %idx.ext169 = sext i32 %136 to i64
  %add.ptr170 = getelementptr inbounds %struct.mline, %struct.mline* %135, i64 %idx.ext169
  %font171 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr170, i32 0, i32 2
  %137 = load i8*, i8** %font171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %137, i64 %idxprom167
  store i8 %132, i8* %arrayidx172, align 1
  %138 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %139 = load i32, i32* %xe.addr, align 4
  %idxprom173 = sext i32 %139 to i64
  %140 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines174 = getelementptr inbounds %struct.win, %struct.win* %140, i32 0, i32 36
  %141 = load %struct.mline*, %struct.mline** %w_mlines174, align 8
  %142 = load i32, i32* %ye.addr, align 4
  %idx.ext175 = sext i32 %142 to i64
  %add.ptr176 = getelementptr inbounds %struct.mline, %struct.mline* %141, i64 %idx.ext175
  %fontx177 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr176, i32 0, i32 3
  %143 = load i8*, i8** %fontx177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %143, i64 %idxprom173
  store i8 %138, i8* %arrayidx178, align 1
  %144 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %145 = load i32, i32* %xe.addr, align 4
  %idxprom179 = sext i32 %145 to i64
  %146 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines180 = getelementptr inbounds %struct.win, %struct.win* %146, i32 0, i32 36
  %147 = load %struct.mline*, %struct.mline** %w_mlines180, align 8
  %148 = load i32, i32* %ye.addr, align 4
  %idx.ext181 = sext i32 %148 to i64
  %add.ptr182 = getelementptr inbounds %struct.mline, %struct.mline* %147, i64 %idx.ext181
  %color183 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr182, i32 0, i32 4
  %149 = load i8*, i8** %color183, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %149, i64 %idxprom179
  store i8 %144, i8* %arrayidx184, align 1
  br label %do.end.185

do.end.185:                                       ; preds = %do.body.154
  br label %do.body.186

do.body.186:                                      ; preds = %do.end.185
  %150 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %151 = load i32, i32* %xe.addr, align 4
  %add187 = add nsw i32 %151, 1
  %idxprom188 = sext i32 %add187 to i64
  %152 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines189 = getelementptr inbounds %struct.win, %struct.win* %152, i32 0, i32 36
  %153 = load %struct.mline*, %struct.mline** %w_mlines189, align 8
  %154 = load i32, i32* %ye.addr, align 4
  %idx.ext190 = sext i32 %154 to i64
  %add.ptr191 = getelementptr inbounds %struct.mline, %struct.mline* %153, i64 %idx.ext190
  %image192 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr191, i32 0, i32 0
  %155 = load i8*, i8** %image192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %155, i64 %idxprom188
  store i8 %150, i8* %arrayidx193, align 1
  %156 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %157 = load i32, i32* %xe.addr, align 4
  %add194 = add nsw i32 %157, 1
  %idxprom195 = sext i32 %add194 to i64
  %158 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines196 = getelementptr inbounds %struct.win, %struct.win* %158, i32 0, i32 36
  %159 = load %struct.mline*, %struct.mline** %w_mlines196, align 8
  %160 = load i32, i32* %ye.addr, align 4
  %idx.ext197 = sext i32 %160 to i64
  %add.ptr198 = getelementptr inbounds %struct.mline, %struct.mline* %159, i64 %idx.ext197
  %attr199 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr198, i32 0, i32 1
  %161 = load i8*, i8** %attr199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %161, i64 %idxprom195
  store i8 %156, i8* %arrayidx200, align 1
  %162 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %163 = load i32, i32* %xe.addr, align 4
  %add201 = add nsw i32 %163, 1
  %idxprom202 = sext i32 %add201 to i64
  %164 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines203 = getelementptr inbounds %struct.win, %struct.win* %164, i32 0, i32 36
  %165 = load %struct.mline*, %struct.mline** %w_mlines203, align 8
  %166 = load i32, i32* %ye.addr, align 4
  %idx.ext204 = sext i32 %166 to i64
  %add.ptr205 = getelementptr inbounds %struct.mline, %struct.mline* %165, i64 %idx.ext204
  %font206 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr205, i32 0, i32 2
  %167 = load i8*, i8** %font206, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %167, i64 %idxprom202
  store i8 %162, i8* %arrayidx207, align 1
  %168 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %169 = load i32, i32* %xe.addr, align 4
  %add208 = add nsw i32 %169, 1
  %idxprom209 = sext i32 %add208 to i64
  %170 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines210 = getelementptr inbounds %struct.win, %struct.win* %170, i32 0, i32 36
  %171 = load %struct.mline*, %struct.mline** %w_mlines210, align 8
  %172 = load i32, i32* %ye.addr, align 4
  %idx.ext211 = sext i32 %172 to i64
  %add.ptr212 = getelementptr inbounds %struct.mline, %struct.mline* %171, i64 %idx.ext211
  %fontx213 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr212, i32 0, i32 3
  %173 = load i8*, i8** %fontx213, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %173, i64 %idxprom209
  store i8 %168, i8* %arrayidx214, align 1
  %174 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %175 = load i32, i32* %xe.addr, align 4
  %add215 = add nsw i32 %175, 1
  %idxprom216 = sext i32 %add215 to i64
  %176 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines217 = getelementptr inbounds %struct.win, %struct.win* %176, i32 0, i32 36
  %177 = load %struct.mline*, %struct.mline** %w_mlines217, align 8
  %178 = load i32, i32* %ye.addr, align 4
  %idx.ext218 = sext i32 %178 to i64
  %add.ptr219 = getelementptr inbounds %struct.mline, %struct.mline* %177, i64 %idx.ext218
  %color220 = getelementptr inbounds %struct.mline, %struct.mline* %add.ptr219, i32 0, i32 4
  %179 = load i8*, i8** %color220, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %179, i64 %idxprom216
  store i8 %174, i8* %arrayidx221, align 1
  br label %do.end.222

do.end.222:                                       ; preds = %do.body.186
  br label %if.end.223

if.end.223:                                       ; preds = %do.end.222, %land.lhs.true.142, %cond.false.131, %land.lhs.true.120, %cond.true.110
  %180 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines224 = getelementptr inbounds %struct.win, %struct.win* %180, i32 0, i32 36
  %181 = load %struct.mline*, %struct.mline** %w_mlines224, align 8
  %182 = load i32, i32* %ys.addr, align 4
  %idx.ext225 = sext i32 %182 to i64
  %add.ptr226 = getelementptr inbounds %struct.mline, %struct.mline* %181, i64 %idx.ext225
  store %struct.mline* %add.ptr226, %struct.mline** %ml, align 8
  %183 = load i32, i32* %ys.addr, align 4
  store i32 %183, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.223
  %184 = load i32, i32* %y, align 4
  %185 = load i32, i32* %ye.addr, align 4
  %cmp227 = icmp sle i32 %184, %185
  br i1 %cmp227, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %186 = load i32, i32* %y, align 4
  %187 = load i32, i32* %ye.addr, align 4
  %cmp229 = icmp eq i32 %186, %187
  br i1 %cmp229, label %cond.true.231, label %cond.false.232

cond.true.231:                                    ; preds = %for.body
  %188 = load i32, i32* %xe.addr, align 4
  br label %cond.end

cond.false.232:                                   ; preds = %for.body
  %189 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer233 = getelementptr inbounds %struct.win, %struct.win* %189, i32 0, i32 3
  %l_width234 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer233, i32 0, i32 1
  %190 = load i32, i32* %l_width234, align 4
  %sub235 = sub nsw i32 %190, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.232, %cond.true.231
  %cond = phi i32 [ %188, %cond.true.231 ], [ %sub235, %cond.false.232 ]
  store i32 %cond, i32* %xxe, align 4
  %191 = load i32, i32* %xxe, align 4
  %192 = load i32, i32* %xs.addr, align 4
  %sub236 = sub nsw i32 %191, %192
  %add237 = add nsw i32 %sub236, 1
  store i32 %add237, i32* %n, align 4
  %193 = load i32, i32* %n, align 4
  %cmp238 = icmp sgt i32 %193, 0
  br i1 %cmp238, label %if.then.240, label %if.end.282

if.then.240:                                      ; preds = %cond.end
  br label %do.body.241

do.body.241:                                      ; preds = %if.then.240
  %194 = load %struct.mline*, %struct.mline** %ml, align 8
  %image242 = getelementptr inbounds %struct.mline, %struct.mline* %194, i32 0, i32 0
  %195 = load i8*, i8** %image242, align 8
  %196 = load i32, i32* %xs.addr, align 4
  %idx.ext243 = sext i32 %196 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %195, i64 %idx.ext243
  %197 = load i32, i32* %n, align 4
  call void @bclear(i8* %add.ptr244, i32 %197)
  %198 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr245 = getelementptr inbounds %struct.mline, %struct.mline* %198, i32 0, i32 1
  %199 = load i8*, i8** %attr245, align 8
  %200 = load i8*, i8** @null, align 8
  %cmp246 = icmp ne i8* %199, %200
  br i1 %cmp246, label %if.then.248, label %if.end.253

if.then.248:                                      ; preds = %do.body.241
  %201 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr249 = getelementptr inbounds %struct.mline, %struct.mline* %201, i32 0, i32 1
  %202 = load i8*, i8** %attr249, align 8
  %203 = load i32, i32* %xs.addr, align 4
  %idx.ext250 = sext i32 %203 to i64
  %add.ptr251 = getelementptr inbounds i8, i8* %202, i64 %idx.ext250
  %204 = load i32, i32* %n, align 4
  %conv252 = sext i32 %204 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr251, i8 0, i64 %conv252, i32 1, i1 false)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.248, %do.body.241
  %205 = load %struct.mline*, %struct.mline** %ml, align 8
  %font254 = getelementptr inbounds %struct.mline, %struct.mline* %205, i32 0, i32 2
  %206 = load i8*, i8** %font254, align 8
  %207 = load i8*, i8** @null, align 8
  %cmp255 = icmp ne i8* %206, %207
  br i1 %cmp255, label %if.then.257, label %if.end.262

if.then.257:                                      ; preds = %if.end.253
  %208 = load %struct.mline*, %struct.mline** %ml, align 8
  %font258 = getelementptr inbounds %struct.mline, %struct.mline* %208, i32 0, i32 2
  %209 = load i8*, i8** %font258, align 8
  %210 = load i32, i32* %xs.addr, align 4
  %idx.ext259 = sext i32 %210 to i64
  %add.ptr260 = getelementptr inbounds i8, i8* %209, i64 %idx.ext259
  %211 = load i32, i32* %n, align 4
  %conv261 = sext i32 %211 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr260, i8 0, i64 %conv261, i32 1, i1 false)
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.257, %if.end.253
  %212 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx263 = getelementptr inbounds %struct.mline, %struct.mline* %212, i32 0, i32 3
  %213 = load i8*, i8** %fontx263, align 8
  %214 = load i8*, i8** @null, align 8
  %cmp264 = icmp ne i8* %213, %214
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.262
  %215 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx267 = getelementptr inbounds %struct.mline, %struct.mline* %215, i32 0, i32 3
  %216 = load i8*, i8** %fontx267, align 8
  %217 = load i32, i32* %xs.addr, align 4
  %idx.ext268 = sext i32 %217 to i64
  %add.ptr269 = getelementptr inbounds i8, i8* %216, i64 %idx.ext268
  %218 = load i32, i32* %n, align 4
  %conv270 = sext i32 %218 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr269, i8 0, i64 %conv270, i32 1, i1 false)
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.end.262
  %219 = load %struct.mline*, %struct.mline** %ml, align 8
  %color272 = getelementptr inbounds %struct.mline, %struct.mline* %219, i32 0, i32 4
  %220 = load i8*, i8** %color272, align 8
  %221 = load i8*, i8** @null, align 8
  %cmp273 = icmp ne i8* %220, %221
  br i1 %cmp273, label %if.then.275, label %if.end.280

if.then.275:                                      ; preds = %if.end.271
  %222 = load %struct.mline*, %struct.mline** %ml, align 8
  %color276 = getelementptr inbounds %struct.mline, %struct.mline* %222, i32 0, i32 4
  %223 = load i8*, i8** %color276, align 8
  %224 = load i32, i32* %xs.addr, align 4
  %idx.ext277 = sext i32 %224 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %223, i64 %idx.ext277
  %225 = load i32, i32* %n, align 4
  %conv279 = sext i32 %225 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr278, i8 0, i64 %conv279, i32 1, i1 false)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.275, %if.end.271
  br label %do.end.281

do.end.281:                                       ; preds = %if.end.280
  br label %if.end.282

if.end.282:                                       ; preds = %do.end.281, %cond.end
  %226 = load i32, i32* %n, align 4
  %cmp283 = icmp sgt i32 %226, 0
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.289

land.lhs.true.285:                                ; preds = %if.end.282
  %227 = load i32, i32* %bce.addr, align 4
  %tobool = icmp ne i32 %227, 0
  br i1 %tobool, label %if.then.286, label %if.end.289

if.then.286:                                      ; preds = %land.lhs.true.285
  %228 = load %struct.win*, %struct.win** %p.addr, align 8
  %229 = load i32, i32* %y, align 4
  %230 = load i32, i32* %xs.addr, align 4
  %231 = load i32, i32* %xs.addr, align 4
  %232 = load i32, i32* %n, align 4
  %add287 = add nsw i32 %231, %232
  %sub288 = sub nsw i32 %add287, 1
  %233 = load i32, i32* %bce.addr, align 4
  call void @MBceLine(%struct.win* %228, i32 %229, i32 %230, i32 %sub288, i32 %233)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.286, %land.lhs.true.285, %if.end.282
  store i32 0, i32* %xs.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.289
  %234 = load i32, i32* %y, align 4
  %inc = add nsw i32 %234, 1
  store i32 %inc, i32* %y, align 4
  %235 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr = getelementptr inbounds %struct.mline, %struct.mline* %235, i32 1
  store %struct.mline* %incdec.ptr, %struct.mline** %ml, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @color256to16(i32) #4

; Function Attrs: nounwind uwtable
define internal void @MScrollH(%struct.win* %p, i32 %n, i32 %y, i32 %xs, i32 %xe, i32 %bce) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %n.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.541

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 36
  %3 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %3, i64 %idxprom
  store %struct.mline* %arrayidx, %struct.mline** %ml, align 8
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %5 = load i32, i32* %l_encoding, align 4
  %cmp1 = icmp eq i32 %5, 8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %xs.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %7, i32 0, i32 2
  %8 = load i8*, i8** %font, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 255
  br i1 %cmp4, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %cond.true
  %10 = load i32, i32* %xs.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %11, i32 0, i32 0
  %12 = load i8*, i8** %image, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %if.then.17, label %if.end.55

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %xs.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.mline*, %struct.mline** %ml, align 8
  %font12 = getelementptr inbounds %struct.mline, %struct.mline* %15, i32 0, i32 2
  %16 = load i8*, i8** %font12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %and = and i32 %conv14, 224
  %cmp15 = icmp eq i32 %and, 128
  br i1 %cmp15, label %if.then.17, label %if.end.55

if.then.17:                                       ; preds = %cond.false, %land.lhs.true
  %18 = load i32, i32* %xs.addr, align 4
  %cmp18 = icmp sgt i32 %18, 0
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %19 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %20 = load i32, i32* %xs.addr, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom21 = sext i32 %sub to i64
  %21 = load %struct.mline*, %struct.mline** %ml, align 8
  %image22 = getelementptr inbounds %struct.mline, %struct.mline* %21, i32 0, i32 0
  %22 = load i8*, i8** %image22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  store i8 %19, i8* %arrayidx23, align 1
  %23 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %24 = load i32, i32* %xs.addr, align 4
  %sub24 = sub nsw i32 %24, 1
  %idxprom25 = sext i32 %sub24 to i64
  %25 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %25, i32 0, i32 1
  %26 = load i8*, i8** %attr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 %idxprom25
  store i8 %23, i8* %arrayidx26, align 1
  %27 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %28 = load i32, i32* %xs.addr, align 4
  %sub27 = sub nsw i32 %28, 1
  %idxprom28 = sext i32 %sub27 to i64
  %29 = load %struct.mline*, %struct.mline** %ml, align 8
  %font29 = getelementptr inbounds %struct.mline, %struct.mline* %29, i32 0, i32 2
  %30 = load i8*, i8** %font29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 %idxprom28
  store i8 %27, i8* %arrayidx30, align 1
  %31 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %32 = load i32, i32* %xs.addr, align 4
  %sub31 = sub nsw i32 %32, 1
  %idxprom32 = sext i32 %sub31 to i64
  %33 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %33, i32 0, i32 3
  %34 = load i8*, i8** %fontx, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %34, i64 %idxprom32
  store i8 %31, i8* %arrayidx33, align 1
  %35 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %36 = load i32, i32* %xs.addr, align 4
  %sub34 = sub nsw i32 %36, 1
  %idxprom35 = sext i32 %sub34 to i64
  %37 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %37, i32 0, i32 4
  %38 = load i8*, i8** %color, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 %idxprom35
  store i8 %35, i8* %arrayidx36, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %if.then.17
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %39 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %40 = load i32, i32* %xs.addr, align 4
  %idxprom39 = sext i32 %40 to i64
  %41 = load %struct.mline*, %struct.mline** %ml, align 8
  %image40 = getelementptr inbounds %struct.mline, %struct.mline* %41, i32 0, i32 0
  %42 = load i8*, i8** %image40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %42, i64 %idxprom39
  store i8 %39, i8* %arrayidx41, align 1
  %43 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %44 = load i32, i32* %xs.addr, align 4
  %idxprom42 = sext i32 %44 to i64
  %45 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr43 = getelementptr inbounds %struct.mline, %struct.mline* %45, i32 0, i32 1
  %46 = load i8*, i8** %attr43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %46, i64 %idxprom42
  store i8 %43, i8* %arrayidx44, align 1
  %47 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %48 = load i32, i32* %xs.addr, align 4
  %idxprom45 = sext i32 %48 to i64
  %49 = load %struct.mline*, %struct.mline** %ml, align 8
  %font46 = getelementptr inbounds %struct.mline, %struct.mline* %49, i32 0, i32 2
  %50 = load i8*, i8** %font46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %50, i64 %idxprom45
  store i8 %47, i8* %arrayidx47, align 1
  %51 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %52 = load i32, i32* %xs.addr, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx49 = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 3
  %54 = load i8*, i8** %fontx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %54, i64 %idxprom48
  store i8 %51, i8* %arrayidx50, align 1
  %55 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %56 = load i32, i32* %xs.addr, align 4
  %idxprom51 = sext i32 %56 to i64
  %57 = load %struct.mline*, %struct.mline** %ml, align 8
  %color52 = getelementptr inbounds %struct.mline, %struct.mline* %57, i32 0, i32 4
  %58 = load i8*, i8** %color52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %58, i64 %idxprom51
  store i8 %55, i8* %arrayidx53, align 1
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.38
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %cond.false, %land.lhs.true, %cond.true
  %59 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer56 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 3
  %l_encoding57 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer56, i32 0, i32 5
  %60 = load i32, i32* %l_encoding57, align 4
  %cmp58 = icmp eq i32 %60, 8
  br i1 %cmp58, label %cond.true.60, label %cond.false.75

cond.true.60:                                     ; preds = %if.end.55
  %61 = load i32, i32* %xe.addr, align 4
  %add = add nsw i32 %61, 1
  %idxprom61 = sext i32 %add to i64
  %62 = load %struct.mline*, %struct.mline** %ml, align 8
  %font62 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 2
  %63 = load i8*, i8** %font62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %63, i64 %idxprom61
  %64 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %64 to i32
  %cmp65 = icmp eq i32 %conv64, 255
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.131

land.lhs.true.67:                                 ; preds = %cond.true.60
  %65 = load i32, i32* %xe.addr, align 4
  %add68 = add nsw i32 %65, 1
  %idxprom69 = sext i32 %add68 to i64
  %66 = load %struct.mline*, %struct.mline** %ml, align 8
  %image70 = getelementptr inbounds %struct.mline, %struct.mline* %66, i32 0, i32 0
  %67 = load i8*, i8** %image70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %67, i64 %idxprom69
  %68 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %68 to i32
  %cmp73 = icmp eq i32 %conv72, 255
  br i1 %cmp73, label %if.then.91, label %if.end.131

cond.false.75:                                    ; preds = %if.end.55
  %69 = load i32, i32* %xe.addr, align 4
  %idxprom76 = sext i32 %69 to i64
  %70 = load %struct.mline*, %struct.mline** %ml, align 8
  %font77 = getelementptr inbounds %struct.mline, %struct.mline* %70, i32 0, i32 2
  %71 = load i8*, i8** %font77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %71, i64 %idxprom76
  %72 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %72 to i32
  %and80 = and i32 %conv79, 31
  %cmp81 = icmp ne i32 %and80, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.131

land.lhs.true.83:                                 ; preds = %cond.false.75
  %73 = load i32, i32* %xe.addr, align 4
  %idxprom84 = sext i32 %73 to i64
  %74 = load %struct.mline*, %struct.mline** %ml, align 8
  %font85 = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 0, i32 2
  %75 = load i8*, i8** %font85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %75, i64 %idxprom84
  %76 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %76 to i32
  %and88 = and i32 %conv87, 224
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.131

if.then.91:                                       ; preds = %land.lhs.true.83, %land.lhs.true.67
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  %77 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %78 = load i32, i32* %xe.addr, align 4
  %idxprom93 = sext i32 %78 to i64
  %79 = load %struct.mline*, %struct.mline** %ml, align 8
  %image94 = getelementptr inbounds %struct.mline, %struct.mline* %79, i32 0, i32 0
  %80 = load i8*, i8** %image94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %80, i64 %idxprom93
  store i8 %77, i8* %arrayidx95, align 1
  %81 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %82 = load i32, i32* %xe.addr, align 4
  %idxprom96 = sext i32 %82 to i64
  %83 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr97 = getelementptr inbounds %struct.mline, %struct.mline* %83, i32 0, i32 1
  %84 = load i8*, i8** %attr97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %84, i64 %idxprom96
  store i8 %81, i8* %arrayidx98, align 1
  %85 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %86 = load i32, i32* %xe.addr, align 4
  %idxprom99 = sext i32 %86 to i64
  %87 = load %struct.mline*, %struct.mline** %ml, align 8
  %font100 = getelementptr inbounds %struct.mline, %struct.mline* %87, i32 0, i32 2
  %88 = load i8*, i8** %font100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %88, i64 %idxprom99
  store i8 %85, i8* %arrayidx101, align 1
  %89 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %90 = load i32, i32* %xe.addr, align 4
  %idxprom102 = sext i32 %90 to i64
  %91 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx103 = getelementptr inbounds %struct.mline, %struct.mline* %91, i32 0, i32 3
  %92 = load i8*, i8** %fontx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %92, i64 %idxprom102
  store i8 %89, i8* %arrayidx104, align 1
  %93 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %94 = load i32, i32* %xe.addr, align 4
  %idxprom105 = sext i32 %94 to i64
  %95 = load %struct.mline*, %struct.mline** %ml, align 8
  %color106 = getelementptr inbounds %struct.mline, %struct.mline* %95, i32 0, i32 4
  %96 = load i8*, i8** %color106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %96, i64 %idxprom105
  store i8 %93, i8* %arrayidx107, align 1
  br label %do.end.108

do.end.108:                                       ; preds = %do.body.92
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %97 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %98 = load i32, i32* %xe.addr, align 4
  %add110 = add nsw i32 %98, 1
  %idxprom111 = sext i32 %add110 to i64
  %99 = load %struct.mline*, %struct.mline** %ml, align 8
  %image112 = getelementptr inbounds %struct.mline, %struct.mline* %99, i32 0, i32 0
  %100 = load i8*, i8** %image112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %100, i64 %idxprom111
  store i8 %97, i8* %arrayidx113, align 1
  %101 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %102 = load i32, i32* %xe.addr, align 4
  %add114 = add nsw i32 %102, 1
  %idxprom115 = sext i32 %add114 to i64
  %103 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr116 = getelementptr inbounds %struct.mline, %struct.mline* %103, i32 0, i32 1
  %104 = load i8*, i8** %attr116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %104, i64 %idxprom115
  store i8 %101, i8* %arrayidx117, align 1
  %105 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %106 = load i32, i32* %xe.addr, align 4
  %add118 = add nsw i32 %106, 1
  %idxprom119 = sext i32 %add118 to i64
  %107 = load %struct.mline*, %struct.mline** %ml, align 8
  %font120 = getelementptr inbounds %struct.mline, %struct.mline* %107, i32 0, i32 2
  %108 = load i8*, i8** %font120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %108, i64 %idxprom119
  store i8 %105, i8* %arrayidx121, align 1
  %109 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %110 = load i32, i32* %xe.addr, align 4
  %add122 = add nsw i32 %110, 1
  %idxprom123 = sext i32 %add122 to i64
  %111 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx124 = getelementptr inbounds %struct.mline, %struct.mline* %111, i32 0, i32 3
  %112 = load i8*, i8** %fontx124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %112, i64 %idxprom123
  store i8 %109, i8* %arrayidx125, align 1
  %113 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %114 = load i32, i32* %xe.addr, align 4
  %add126 = add nsw i32 %114, 1
  %idxprom127 = sext i32 %add126 to i64
  %115 = load %struct.mline*, %struct.mline** %ml, align 8
  %color128 = getelementptr inbounds %struct.mline, %struct.mline* %115, i32 0, i32 4
  %116 = load i8*, i8** %color128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %116, i64 %idxprom127
  store i8 %113, i8* %arrayidx129, align 1
  br label %do.end.130

do.end.130:                                       ; preds = %do.body.109
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %land.lhs.true.83, %cond.false.75, %land.lhs.true.67, %cond.true.60
  %117 = load i32, i32* %n.addr, align 4
  %cmp132 = icmp sgt i32 %117, 0
  br i1 %cmp132, label %if.then.134, label %if.else.338

if.then.134:                                      ; preds = %if.end.131
  %118 = load i32, i32* %xe.addr, align 4
  %119 = load i32, i32* %xs.addr, align 4
  %sub135 = sub nsw i32 %118, %119
  %add136 = add nsw i32 %sub135, 1
  %120 = load i32, i32* %n.addr, align 4
  %cmp137 = icmp sgt i32 %add136, %120
  br i1 %cmp137, label %if.then.139, label %if.else

if.then.139:                                      ; preds = %if.then.134
  %121 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer140 = getelementptr inbounds %struct.win, %struct.win* %121, i32 0, i32 3
  %l_encoding141 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer140, i32 0, i32 5
  %122 = load i32, i32* %l_encoding141, align 4
  %cmp142 = icmp eq i32 %122, 8
  br i1 %cmp142, label %cond.true.144, label %cond.false.160

cond.true.144:                                    ; preds = %if.then.139
  %123 = load i32, i32* %xs.addr, align 4
  %124 = load i32, i32* %n.addr, align 4
  %add145 = add nsw i32 %123, %124
  %idxprom146 = sext i32 %add145 to i64
  %125 = load %struct.mline*, %struct.mline** %ml, align 8
  %font147 = getelementptr inbounds %struct.mline, %struct.mline* %125, i32 0, i32 2
  %126 = load i8*, i8** %font147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %126, i64 %idxprom146
  %127 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %127 to i32
  %cmp150 = icmp eq i32 %conv149, 255
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.224

land.lhs.true.152:                                ; preds = %cond.true.144
  %128 = load i32, i32* %xs.addr, align 4
  %129 = load i32, i32* %n.addr, align 4
  %add153 = add nsw i32 %128, %129
  %idxprom154 = sext i32 %add153 to i64
  %130 = load %struct.mline*, %struct.mline** %ml, align 8
  %image155 = getelementptr inbounds %struct.mline, %struct.mline* %130, i32 0, i32 0
  %131 = load i8*, i8** %image155, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %131, i64 %idxprom154
  %132 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %132 to i32
  %cmp158 = icmp eq i32 %conv157, 255
  br i1 %cmp158, label %if.then.169, label %if.end.224

cond.false.160:                                   ; preds = %if.then.139
  %133 = load i32, i32* %xs.addr, align 4
  %134 = load i32, i32* %n.addr, align 4
  %add161 = add nsw i32 %133, %134
  %idxprom162 = sext i32 %add161 to i64
  %135 = load %struct.mline*, %struct.mline** %ml, align 8
  %font163 = getelementptr inbounds %struct.mline, %struct.mline* %135, i32 0, i32 2
  %136 = load i8*, i8** %font163, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %136, i64 %idxprom162
  %137 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %137 to i32
  %and166 = and i32 %conv165, 224
  %cmp167 = icmp eq i32 %and166, 128
  br i1 %cmp167, label %if.then.169, label %if.end.224

if.then.169:                                      ; preds = %cond.false.160, %land.lhs.true.152
  %138 = load i32, i32* %xs.addr, align 4
  %139 = load i32, i32* %n.addr, align 4
  %add170 = add nsw i32 %138, %139
  %cmp171 = icmp sgt i32 %add170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.201

if.then.173:                                      ; preds = %if.then.169
  br label %do.body.174

do.body.174:                                      ; preds = %if.then.173
  %140 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %141 = load i32, i32* %xs.addr, align 4
  %142 = load i32, i32* %n.addr, align 4
  %add175 = add nsw i32 %141, %142
  %sub176 = sub nsw i32 %add175, 1
  %idxprom177 = sext i32 %sub176 to i64
  %143 = load %struct.mline*, %struct.mline** %ml, align 8
  %image178 = getelementptr inbounds %struct.mline, %struct.mline* %143, i32 0, i32 0
  %144 = load i8*, i8** %image178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %144, i64 %idxprom177
  store i8 %140, i8* %arrayidx179, align 1
  %145 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %146 = load i32, i32* %xs.addr, align 4
  %147 = load i32, i32* %n.addr, align 4
  %add180 = add nsw i32 %146, %147
  %sub181 = sub nsw i32 %add180, 1
  %idxprom182 = sext i32 %sub181 to i64
  %148 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr183 = getelementptr inbounds %struct.mline, %struct.mline* %148, i32 0, i32 1
  %149 = load i8*, i8** %attr183, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %149, i64 %idxprom182
  store i8 %145, i8* %arrayidx184, align 1
  %150 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %151 = load i32, i32* %xs.addr, align 4
  %152 = load i32, i32* %n.addr, align 4
  %add185 = add nsw i32 %151, %152
  %sub186 = sub nsw i32 %add185, 1
  %idxprom187 = sext i32 %sub186 to i64
  %153 = load %struct.mline*, %struct.mline** %ml, align 8
  %font188 = getelementptr inbounds %struct.mline, %struct.mline* %153, i32 0, i32 2
  %154 = load i8*, i8** %font188, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %154, i64 %idxprom187
  store i8 %150, i8* %arrayidx189, align 1
  %155 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %156 = load i32, i32* %xs.addr, align 4
  %157 = load i32, i32* %n.addr, align 4
  %add190 = add nsw i32 %156, %157
  %sub191 = sub nsw i32 %add190, 1
  %idxprom192 = sext i32 %sub191 to i64
  %158 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx193 = getelementptr inbounds %struct.mline, %struct.mline* %158, i32 0, i32 3
  %159 = load i8*, i8** %fontx193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %159, i64 %idxprom192
  store i8 %155, i8* %arrayidx194, align 1
  %160 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %161 = load i32, i32* %xs.addr, align 4
  %162 = load i32, i32* %n.addr, align 4
  %add195 = add nsw i32 %161, %162
  %sub196 = sub nsw i32 %add195, 1
  %idxprom197 = sext i32 %sub196 to i64
  %163 = load %struct.mline*, %struct.mline** %ml, align 8
  %color198 = getelementptr inbounds %struct.mline, %struct.mline* %163, i32 0, i32 4
  %164 = load i8*, i8** %color198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %164, i64 %idxprom197
  store i8 %160, i8* %arrayidx199, align 1
  br label %do.end.200

do.end.200:                                       ; preds = %do.body.174
  br label %if.end.201

if.end.201:                                       ; preds = %do.end.200, %if.then.169
  br label %do.body.202

do.body.202:                                      ; preds = %if.end.201
  %165 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %166 = load i32, i32* %xs.addr, align 4
  %167 = load i32, i32* %n.addr, align 4
  %add203 = add nsw i32 %166, %167
  %idxprom204 = sext i32 %add203 to i64
  %168 = load %struct.mline*, %struct.mline** %ml, align 8
  %image205 = getelementptr inbounds %struct.mline, %struct.mline* %168, i32 0, i32 0
  %169 = load i8*, i8** %image205, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %169, i64 %idxprom204
  store i8 %165, i8* %arrayidx206, align 1
  %170 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %171 = load i32, i32* %xs.addr, align 4
  %172 = load i32, i32* %n.addr, align 4
  %add207 = add nsw i32 %171, %172
  %idxprom208 = sext i32 %add207 to i64
  %173 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr209 = getelementptr inbounds %struct.mline, %struct.mline* %173, i32 0, i32 1
  %174 = load i8*, i8** %attr209, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %174, i64 %idxprom208
  store i8 %170, i8* %arrayidx210, align 1
  %175 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %176 = load i32, i32* %xs.addr, align 4
  %177 = load i32, i32* %n.addr, align 4
  %add211 = add nsw i32 %176, %177
  %idxprom212 = sext i32 %add211 to i64
  %178 = load %struct.mline*, %struct.mline** %ml, align 8
  %font213 = getelementptr inbounds %struct.mline, %struct.mline* %178, i32 0, i32 2
  %179 = load i8*, i8** %font213, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %179, i64 %idxprom212
  store i8 %175, i8* %arrayidx214, align 1
  %180 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %181 = load i32, i32* %xs.addr, align 4
  %182 = load i32, i32* %n.addr, align 4
  %add215 = add nsw i32 %181, %182
  %idxprom216 = sext i32 %add215 to i64
  %183 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx217 = getelementptr inbounds %struct.mline, %struct.mline* %183, i32 0, i32 3
  %184 = load i8*, i8** %fontx217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %184, i64 %idxprom216
  store i8 %180, i8* %arrayidx218, align 1
  %185 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %186 = load i32, i32* %xs.addr, align 4
  %187 = load i32, i32* %n.addr, align 4
  %add219 = add nsw i32 %186, %187
  %idxprom220 = sext i32 %add219 to i64
  %188 = load %struct.mline*, %struct.mline** %ml, align 8
  %color221 = getelementptr inbounds %struct.mline, %struct.mline* %188, i32 0, i32 4
  %189 = load i8*, i8** %color221, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %189, i64 %idxprom220
  store i8 %185, i8* %arrayidx222, align 1
  br label %do.end.223

do.end.223:                                       ; preds = %do.body.202
  br label %if.end.224

if.end.224:                                       ; preds = %do.end.223, %cond.false.160, %land.lhs.true.152, %cond.true.144
  br label %do.body.225

do.body.225:                                      ; preds = %if.end.224
  %190 = load %struct.mline*, %struct.mline** %ml, align 8
  %image226 = getelementptr inbounds %struct.mline, %struct.mline* %190, i32 0, i32 0
  %191 = load i8*, i8** %image226, align 8
  %192 = load i32, i32* %xs.addr, align 4
  %193 = load i32, i32* %n.addr, align 4
  %add227 = add nsw i32 %192, %193
  %idx.ext = sext i32 %add227 to i64
  %add.ptr = getelementptr inbounds i8, i8* %191, i64 %idx.ext
  %194 = load %struct.mline*, %struct.mline** %ml, align 8
  %image228 = getelementptr inbounds %struct.mline, %struct.mline* %194, i32 0, i32 0
  %195 = load i8*, i8** %image228, align 8
  %196 = load i32, i32* %xs.addr, align 4
  %idx.ext229 = sext i32 %196 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %195, i64 %idx.ext229
  %197 = load i32, i32* %xe.addr, align 4
  %add231 = add nsw i32 %197, 1
  %198 = load i32, i32* %xs.addr, align 4
  %sub232 = sub nsw i32 %add231, %198
  %199 = load i32, i32* %n.addr, align 4
  %sub233 = sub nsw i32 %sub232, %199
  %conv234 = sext i32 %sub233 to i64
  call void @bcopy(i8* %add.ptr, i8* %add.ptr230, i64 %conv234) #1
  %200 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr235 = getelementptr inbounds %struct.mline, %struct.mline* %200, i32 0, i32 1
  %201 = load i8*, i8** %attr235, align 8
  %202 = load i32, i32* %xs.addr, align 4
  %203 = load i32, i32* %n.addr, align 4
  %add236 = add nsw i32 %202, %203
  %idx.ext237 = sext i32 %add236 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %201, i64 %idx.ext237
  %204 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr239 = getelementptr inbounds %struct.mline, %struct.mline* %204, i32 0, i32 1
  %205 = load i8*, i8** %attr239, align 8
  %206 = load i32, i32* %xs.addr, align 4
  %idx.ext240 = sext i32 %206 to i64
  %add.ptr241 = getelementptr inbounds i8, i8* %205, i64 %idx.ext240
  %207 = load i32, i32* %xe.addr, align 4
  %add242 = add nsw i32 %207, 1
  %208 = load i32, i32* %xs.addr, align 4
  %sub243 = sub nsw i32 %add242, %208
  %209 = load i32, i32* %n.addr, align 4
  %sub244 = sub nsw i32 %sub243, %209
  %conv245 = sext i32 %sub244 to i64
  call void @bcopy(i8* %add.ptr238, i8* %add.ptr241, i64 %conv245) #1
  %210 = load %struct.mline*, %struct.mline** %ml, align 8
  %font246 = getelementptr inbounds %struct.mline, %struct.mline* %210, i32 0, i32 2
  %211 = load i8*, i8** %font246, align 8
  %212 = load i32, i32* %xs.addr, align 4
  %213 = load i32, i32* %n.addr, align 4
  %add247 = add nsw i32 %212, %213
  %idx.ext248 = sext i32 %add247 to i64
  %add.ptr249 = getelementptr inbounds i8, i8* %211, i64 %idx.ext248
  %214 = load %struct.mline*, %struct.mline** %ml, align 8
  %font250 = getelementptr inbounds %struct.mline, %struct.mline* %214, i32 0, i32 2
  %215 = load i8*, i8** %font250, align 8
  %216 = load i32, i32* %xs.addr, align 4
  %idx.ext251 = sext i32 %216 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %215, i64 %idx.ext251
  %217 = load i32, i32* %xe.addr, align 4
  %add253 = add nsw i32 %217, 1
  %218 = load i32, i32* %xs.addr, align 4
  %sub254 = sub nsw i32 %add253, %218
  %219 = load i32, i32* %n.addr, align 4
  %sub255 = sub nsw i32 %sub254, %219
  %conv256 = sext i32 %sub255 to i64
  call void @bcopy(i8* %add.ptr249, i8* %add.ptr252, i64 %conv256) #1
  %220 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx257 = getelementptr inbounds %struct.mline, %struct.mline* %220, i32 0, i32 3
  %221 = load i8*, i8** %fontx257, align 8
  %222 = load i32, i32* %xs.addr, align 4
  %223 = load i32, i32* %n.addr, align 4
  %add258 = add nsw i32 %222, %223
  %idx.ext259 = sext i32 %add258 to i64
  %add.ptr260 = getelementptr inbounds i8, i8* %221, i64 %idx.ext259
  %224 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx261 = getelementptr inbounds %struct.mline, %struct.mline* %224, i32 0, i32 3
  %225 = load i8*, i8** %fontx261, align 8
  %226 = load i32, i32* %xs.addr, align 4
  %idx.ext262 = sext i32 %226 to i64
  %add.ptr263 = getelementptr inbounds i8, i8* %225, i64 %idx.ext262
  %227 = load i32, i32* %xe.addr, align 4
  %add264 = add nsw i32 %227, 1
  %228 = load i32, i32* %xs.addr, align 4
  %sub265 = sub nsw i32 %add264, %228
  %229 = load i32, i32* %n.addr, align 4
  %sub266 = sub nsw i32 %sub265, %229
  %conv267 = sext i32 %sub266 to i64
  call void @bcopy(i8* %add.ptr260, i8* %add.ptr263, i64 %conv267) #1
  %230 = load %struct.mline*, %struct.mline** %ml, align 8
  %color268 = getelementptr inbounds %struct.mline, %struct.mline* %230, i32 0, i32 4
  %231 = load i8*, i8** %color268, align 8
  %232 = load i32, i32* %xs.addr, align 4
  %233 = load i32, i32* %n.addr, align 4
  %add269 = add nsw i32 %232, %233
  %idx.ext270 = sext i32 %add269 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %231, i64 %idx.ext270
  %234 = load %struct.mline*, %struct.mline** %ml, align 8
  %color272 = getelementptr inbounds %struct.mline, %struct.mline* %234, i32 0, i32 4
  %235 = load i8*, i8** %color272, align 8
  %236 = load i32, i32* %xs.addr, align 4
  %idx.ext273 = sext i32 %236 to i64
  %add.ptr274 = getelementptr inbounds i8, i8* %235, i64 %idx.ext273
  %237 = load i32, i32* %xe.addr, align 4
  %add275 = add nsw i32 %237, 1
  %238 = load i32, i32* %xs.addr, align 4
  %sub276 = sub nsw i32 %add275, %238
  %239 = load i32, i32* %n.addr, align 4
  %sub277 = sub nsw i32 %sub276, %239
  %conv278 = sext i32 %sub277 to i64
  call void @bcopy(i8* %add.ptr271, i8* %add.ptr274, i64 %conv278) #1
  br label %do.end.279

do.end.279:                                       ; preds = %do.body.225
  br label %if.end.282

if.else:                                          ; preds = %if.then.134
  %240 = load i32, i32* %xe.addr, align 4
  %241 = load i32, i32* %xs.addr, align 4
  %sub280 = sub nsw i32 %240, %241
  %add281 = add nsw i32 %sub280, 1
  store i32 %add281, i32* %n.addr, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.else, %do.end.279
  br label %do.body.283

do.body.283:                                      ; preds = %if.end.282
  %242 = load %struct.mline*, %struct.mline** %ml, align 8
  %image284 = getelementptr inbounds %struct.mline, %struct.mline* %242, i32 0, i32 0
  %243 = load i8*, i8** %image284, align 8
  %244 = load i32, i32* %xe.addr, align 4
  %add285 = add nsw i32 %244, 1
  %245 = load i32, i32* %n.addr, align 4
  %sub286 = sub nsw i32 %add285, %245
  %idx.ext287 = sext i32 %sub286 to i64
  %add.ptr288 = getelementptr inbounds i8, i8* %243, i64 %idx.ext287
  %246 = load i32, i32* %n.addr, align 4
  call void @bclear(i8* %add.ptr288, i32 %246)
  %247 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr289 = getelementptr inbounds %struct.mline, %struct.mline* %247, i32 0, i32 1
  %248 = load i8*, i8** %attr289, align 8
  %249 = load i8*, i8** @null, align 8
  %cmp290 = icmp ne i8* %248, %249
  br i1 %cmp290, label %if.then.292, label %if.end.299

if.then.292:                                      ; preds = %do.body.283
  %250 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr293 = getelementptr inbounds %struct.mline, %struct.mline* %250, i32 0, i32 1
  %251 = load i8*, i8** %attr293, align 8
  %252 = load i32, i32* %xe.addr, align 4
  %add294 = add nsw i32 %252, 1
  %253 = load i32, i32* %n.addr, align 4
  %sub295 = sub nsw i32 %add294, %253
  %idx.ext296 = sext i32 %sub295 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %251, i64 %idx.ext296
  %254 = load i32, i32* %n.addr, align 4
  %conv298 = sext i32 %254 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr297, i8 0, i64 %conv298, i32 1, i1 false)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.292, %do.body.283
  %255 = load %struct.mline*, %struct.mline** %ml, align 8
  %font300 = getelementptr inbounds %struct.mline, %struct.mline* %255, i32 0, i32 2
  %256 = load i8*, i8** %font300, align 8
  %257 = load i8*, i8** @null, align 8
  %cmp301 = icmp ne i8* %256, %257
  br i1 %cmp301, label %if.then.303, label %if.end.310

if.then.303:                                      ; preds = %if.end.299
  %258 = load %struct.mline*, %struct.mline** %ml, align 8
  %font304 = getelementptr inbounds %struct.mline, %struct.mline* %258, i32 0, i32 2
  %259 = load i8*, i8** %font304, align 8
  %260 = load i32, i32* %xe.addr, align 4
  %add305 = add nsw i32 %260, 1
  %261 = load i32, i32* %n.addr, align 4
  %sub306 = sub nsw i32 %add305, %261
  %idx.ext307 = sext i32 %sub306 to i64
  %add.ptr308 = getelementptr inbounds i8, i8* %259, i64 %idx.ext307
  %262 = load i32, i32* %n.addr, align 4
  %conv309 = sext i32 %262 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr308, i8 0, i64 %conv309, i32 1, i1 false)
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.303, %if.end.299
  %263 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx311 = getelementptr inbounds %struct.mline, %struct.mline* %263, i32 0, i32 3
  %264 = load i8*, i8** %fontx311, align 8
  %265 = load i8*, i8** @null, align 8
  %cmp312 = icmp ne i8* %264, %265
  br i1 %cmp312, label %if.then.314, label %if.end.321

if.then.314:                                      ; preds = %if.end.310
  %266 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx315 = getelementptr inbounds %struct.mline, %struct.mline* %266, i32 0, i32 3
  %267 = load i8*, i8** %fontx315, align 8
  %268 = load i32, i32* %xe.addr, align 4
  %add316 = add nsw i32 %268, 1
  %269 = load i32, i32* %n.addr, align 4
  %sub317 = sub nsw i32 %add316, %269
  %idx.ext318 = sext i32 %sub317 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %267, i64 %idx.ext318
  %270 = load i32, i32* %n.addr, align 4
  %conv320 = sext i32 %270 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr319, i8 0, i64 %conv320, i32 1, i1 false)
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.314, %if.end.310
  %271 = load %struct.mline*, %struct.mline** %ml, align 8
  %color322 = getelementptr inbounds %struct.mline, %struct.mline* %271, i32 0, i32 4
  %272 = load i8*, i8** %color322, align 8
  %273 = load i8*, i8** @null, align 8
  %cmp323 = icmp ne i8* %272, %273
  br i1 %cmp323, label %if.then.325, label %if.end.332

if.then.325:                                      ; preds = %if.end.321
  %274 = load %struct.mline*, %struct.mline** %ml, align 8
  %color326 = getelementptr inbounds %struct.mline, %struct.mline* %274, i32 0, i32 4
  %275 = load i8*, i8** %color326, align 8
  %276 = load i32, i32* %xe.addr, align 4
  %add327 = add nsw i32 %276, 1
  %277 = load i32, i32* %n.addr, align 4
  %sub328 = sub nsw i32 %add327, %277
  %idx.ext329 = sext i32 %sub328 to i64
  %add.ptr330 = getelementptr inbounds i8, i8* %275, i64 %idx.ext329
  %278 = load i32, i32* %n.addr, align 4
  %conv331 = sext i32 %278 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr330, i8 0, i64 %conv331, i32 1, i1 false)
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.325, %if.end.321
  br label %do.end.333

do.end.333:                                       ; preds = %if.end.332
  %279 = load i32, i32* %bce.addr, align 4
  %tobool = icmp ne i32 %279, 0
  br i1 %tobool, label %if.then.334, label %if.end.337

if.then.334:                                      ; preds = %do.end.333
  %280 = load %struct.win*, %struct.win** %p.addr, align 8
  %281 = load i32, i32* %y.addr, align 4
  %282 = load i32, i32* %xe.addr, align 4
  %add335 = add nsw i32 %282, 1
  %283 = load i32, i32* %n.addr, align 4
  %sub336 = sub nsw i32 %add335, %283
  %284 = load i32, i32* %n.addr, align 4
  %285 = load i32, i32* %bce.addr, align 4
  call void @MBceLine(%struct.win* %280, i32 %281, i32 %sub336, i32 %284, i32 %285)
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.334, %do.end.333
  br label %if.end.541

if.else.338:                                      ; preds = %if.end.131
  %286 = load i32, i32* %n.addr, align 4
  %sub339 = sub nsw i32 0, %286
  store i32 %sub339, i32* %n.addr, align 4
  %287 = load i32, i32* %xe.addr, align 4
  %288 = load i32, i32* %xs.addr, align 4
  %sub340 = sub nsw i32 %287, %288
  %add341 = add nsw i32 %sub340, 1
  %289 = load i32, i32* %n.addr, align 4
  %cmp342 = icmp sgt i32 %add341, %289
  br i1 %cmp342, label %if.then.344, label %if.else.493

if.then.344:                                      ; preds = %if.else.338
  %290 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer345 = getelementptr inbounds %struct.win, %struct.win* %290, i32 0, i32 3
  %l_encoding346 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer345, i32 0, i32 5
  %291 = load i32, i32* %l_encoding346, align 4
  %cmp347 = icmp eq i32 %291, 8
  br i1 %cmp347, label %cond.true.349, label %cond.false.367

cond.true.349:                                    ; preds = %if.then.344
  %292 = load i32, i32* %xe.addr, align 4
  %293 = load i32, i32* %n.addr, align 4
  %sub350 = sub nsw i32 %292, %293
  %add351 = add nsw i32 %sub350, 1
  %idxprom352 = sext i32 %add351 to i64
  %294 = load %struct.mline*, %struct.mline** %ml, align 8
  %font353 = getelementptr inbounds %struct.mline, %struct.mline* %294, i32 0, i32 2
  %295 = load i8*, i8** %font353, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %295, i64 %idxprom352
  %296 = load i8, i8* %arrayidx354, align 1
  %conv355 = zext i8 %296 to i32
  %cmp356 = icmp eq i32 %conv355, 255
  br i1 %cmp356, label %land.lhs.true.358, label %if.end.435

land.lhs.true.358:                                ; preds = %cond.true.349
  %297 = load i32, i32* %xe.addr, align 4
  %298 = load i32, i32* %n.addr, align 4
  %sub359 = sub nsw i32 %297, %298
  %add360 = add nsw i32 %sub359, 1
  %idxprom361 = sext i32 %add360 to i64
  %299 = load %struct.mline*, %struct.mline** %ml, align 8
  %image362 = getelementptr inbounds %struct.mline, %struct.mline* %299, i32 0, i32 0
  %300 = load i8*, i8** %image362, align 8
  %arrayidx363 = getelementptr inbounds i8, i8* %300, i64 %idxprom361
  %301 = load i8, i8* %arrayidx363, align 1
  %conv364 = zext i8 %301 to i32
  %cmp365 = icmp eq i32 %conv364, 255
  br i1 %cmp365, label %if.then.385, label %if.end.435

cond.false.367:                                   ; preds = %if.then.344
  %302 = load i32, i32* %xe.addr, align 4
  %303 = load i32, i32* %n.addr, align 4
  %sub368 = sub nsw i32 %302, %303
  %idxprom369 = sext i32 %sub368 to i64
  %304 = load %struct.mline*, %struct.mline** %ml, align 8
  %font370 = getelementptr inbounds %struct.mline, %struct.mline* %304, i32 0, i32 2
  %305 = load i8*, i8** %font370, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %305, i64 %idxprom369
  %306 = load i8, i8* %arrayidx371, align 1
  %conv372 = zext i8 %306 to i32
  %and373 = and i32 %conv372, 31
  %cmp374 = icmp ne i32 %and373, 0
  br i1 %cmp374, label %land.lhs.true.376, label %if.end.435

land.lhs.true.376:                                ; preds = %cond.false.367
  %307 = load i32, i32* %xe.addr, align 4
  %308 = load i32, i32* %n.addr, align 4
  %sub377 = sub nsw i32 %307, %308
  %idxprom378 = sext i32 %sub377 to i64
  %309 = load %struct.mline*, %struct.mline** %ml, align 8
  %font379 = getelementptr inbounds %struct.mline, %struct.mline* %309, i32 0, i32 2
  %310 = load i8*, i8** %font379, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %310, i64 %idxprom378
  %311 = load i8, i8* %arrayidx380, align 1
  %conv381 = zext i8 %311 to i32
  %and382 = and i32 %conv381, 224
  %cmp383 = icmp eq i32 %and382, 0
  br i1 %cmp383, label %if.then.385, label %if.end.435

if.then.385:                                      ; preds = %land.lhs.true.376, %land.lhs.true.358
  br label %do.body.386

do.body.386:                                      ; preds = %if.then.385
  %312 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %313 = load i32, i32* %xe.addr, align 4
  %314 = load i32, i32* %n.addr, align 4
  %sub387 = sub nsw i32 %313, %314
  %idxprom388 = sext i32 %sub387 to i64
  %315 = load %struct.mline*, %struct.mline** %ml, align 8
  %image389 = getelementptr inbounds %struct.mline, %struct.mline* %315, i32 0, i32 0
  %316 = load i8*, i8** %image389, align 8
  %arrayidx390 = getelementptr inbounds i8, i8* %316, i64 %idxprom388
  store i8 %312, i8* %arrayidx390, align 1
  %317 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %318 = load i32, i32* %xe.addr, align 4
  %319 = load i32, i32* %n.addr, align 4
  %sub391 = sub nsw i32 %318, %319
  %idxprom392 = sext i32 %sub391 to i64
  %320 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr393 = getelementptr inbounds %struct.mline, %struct.mline* %320, i32 0, i32 1
  %321 = load i8*, i8** %attr393, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %321, i64 %idxprom392
  store i8 %317, i8* %arrayidx394, align 1
  %322 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %323 = load i32, i32* %xe.addr, align 4
  %324 = load i32, i32* %n.addr, align 4
  %sub395 = sub nsw i32 %323, %324
  %idxprom396 = sext i32 %sub395 to i64
  %325 = load %struct.mline*, %struct.mline** %ml, align 8
  %font397 = getelementptr inbounds %struct.mline, %struct.mline* %325, i32 0, i32 2
  %326 = load i8*, i8** %font397, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %326, i64 %idxprom396
  store i8 %322, i8* %arrayidx398, align 1
  %327 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %328 = load i32, i32* %xe.addr, align 4
  %329 = load i32, i32* %n.addr, align 4
  %sub399 = sub nsw i32 %328, %329
  %idxprom400 = sext i32 %sub399 to i64
  %330 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx401 = getelementptr inbounds %struct.mline, %struct.mline* %330, i32 0, i32 3
  %331 = load i8*, i8** %fontx401, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %331, i64 %idxprom400
  store i8 %327, i8* %arrayidx402, align 1
  %332 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %333 = load i32, i32* %xe.addr, align 4
  %334 = load i32, i32* %n.addr, align 4
  %sub403 = sub nsw i32 %333, %334
  %idxprom404 = sext i32 %sub403 to i64
  %335 = load %struct.mline*, %struct.mline** %ml, align 8
  %color405 = getelementptr inbounds %struct.mline, %struct.mline* %335, i32 0, i32 4
  %336 = load i8*, i8** %color405, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %336, i64 %idxprom404
  store i8 %332, i8* %arrayidx406, align 1
  br label %do.end.407

do.end.407:                                       ; preds = %do.body.386
  br label %do.body.408

do.body.408:                                      ; preds = %do.end.407
  %337 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %338 = load i32, i32* %xe.addr, align 4
  %339 = load i32, i32* %n.addr, align 4
  %sub409 = sub nsw i32 %338, %339
  %add410 = add nsw i32 %sub409, 1
  %idxprom411 = sext i32 %add410 to i64
  %340 = load %struct.mline*, %struct.mline** %ml, align 8
  %image412 = getelementptr inbounds %struct.mline, %struct.mline* %340, i32 0, i32 0
  %341 = load i8*, i8** %image412, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %341, i64 %idxprom411
  store i8 %337, i8* %arrayidx413, align 1
  %342 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %343 = load i32, i32* %xe.addr, align 4
  %344 = load i32, i32* %n.addr, align 4
  %sub414 = sub nsw i32 %343, %344
  %add415 = add nsw i32 %sub414, 1
  %idxprom416 = sext i32 %add415 to i64
  %345 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr417 = getelementptr inbounds %struct.mline, %struct.mline* %345, i32 0, i32 1
  %346 = load i8*, i8** %attr417, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %346, i64 %idxprom416
  store i8 %342, i8* %arrayidx418, align 1
  %347 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %348 = load i32, i32* %xe.addr, align 4
  %349 = load i32, i32* %n.addr, align 4
  %sub419 = sub nsw i32 %348, %349
  %add420 = add nsw i32 %sub419, 1
  %idxprom421 = sext i32 %add420 to i64
  %350 = load %struct.mline*, %struct.mline** %ml, align 8
  %font422 = getelementptr inbounds %struct.mline, %struct.mline* %350, i32 0, i32 2
  %351 = load i8*, i8** %font422, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %351, i64 %idxprom421
  store i8 %347, i8* %arrayidx423, align 1
  %352 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %353 = load i32, i32* %xe.addr, align 4
  %354 = load i32, i32* %n.addr, align 4
  %sub424 = sub nsw i32 %353, %354
  %add425 = add nsw i32 %sub424, 1
  %idxprom426 = sext i32 %add425 to i64
  %355 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx427 = getelementptr inbounds %struct.mline, %struct.mline* %355, i32 0, i32 3
  %356 = load i8*, i8** %fontx427, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %356, i64 %idxprom426
  store i8 %352, i8* %arrayidx428, align 1
  %357 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %358 = load i32, i32* %xe.addr, align 4
  %359 = load i32, i32* %n.addr, align 4
  %sub429 = sub nsw i32 %358, %359
  %add430 = add nsw i32 %sub429, 1
  %idxprom431 = sext i32 %add430 to i64
  %360 = load %struct.mline*, %struct.mline** %ml, align 8
  %color432 = getelementptr inbounds %struct.mline, %struct.mline* %360, i32 0, i32 4
  %361 = load i8*, i8** %color432, align 8
  %arrayidx433 = getelementptr inbounds i8, i8* %361, i64 %idxprom431
  store i8 %357, i8* %arrayidx433, align 1
  br label %do.end.434

do.end.434:                                       ; preds = %do.body.408
  br label %if.end.435

if.end.435:                                       ; preds = %do.end.434, %land.lhs.true.376, %cond.false.367, %land.lhs.true.358, %cond.true.349
  br label %do.body.436

do.body.436:                                      ; preds = %if.end.435
  %362 = load %struct.mline*, %struct.mline** %ml, align 8
  %image437 = getelementptr inbounds %struct.mline, %struct.mline* %362, i32 0, i32 0
  %363 = load i8*, i8** %image437, align 8
  %364 = load i32, i32* %xs.addr, align 4
  %idx.ext438 = sext i32 %364 to i64
  %add.ptr439 = getelementptr inbounds i8, i8* %363, i64 %idx.ext438
  %365 = load %struct.mline*, %struct.mline** %ml, align 8
  %image440 = getelementptr inbounds %struct.mline, %struct.mline* %365, i32 0, i32 0
  %366 = load i8*, i8** %image440, align 8
  %367 = load i32, i32* %xs.addr, align 4
  %368 = load i32, i32* %n.addr, align 4
  %add441 = add nsw i32 %367, %368
  %idx.ext442 = sext i32 %add441 to i64
  %add.ptr443 = getelementptr inbounds i8, i8* %366, i64 %idx.ext442
  %369 = load i32, i32* %xe.addr, align 4
  %add444 = add nsw i32 %369, 1
  %370 = load i32, i32* %xs.addr, align 4
  %sub445 = sub nsw i32 %add444, %370
  %371 = load i32, i32* %n.addr, align 4
  %sub446 = sub nsw i32 %sub445, %371
  %conv447 = sext i32 %sub446 to i64
  call void @bcopy(i8* %add.ptr439, i8* %add.ptr443, i64 %conv447) #1
  %372 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr448 = getelementptr inbounds %struct.mline, %struct.mline* %372, i32 0, i32 1
  %373 = load i8*, i8** %attr448, align 8
  %374 = load i32, i32* %xs.addr, align 4
  %idx.ext449 = sext i32 %374 to i64
  %add.ptr450 = getelementptr inbounds i8, i8* %373, i64 %idx.ext449
  %375 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr451 = getelementptr inbounds %struct.mline, %struct.mline* %375, i32 0, i32 1
  %376 = load i8*, i8** %attr451, align 8
  %377 = load i32, i32* %xs.addr, align 4
  %378 = load i32, i32* %n.addr, align 4
  %add452 = add nsw i32 %377, %378
  %idx.ext453 = sext i32 %add452 to i64
  %add.ptr454 = getelementptr inbounds i8, i8* %376, i64 %idx.ext453
  %379 = load i32, i32* %xe.addr, align 4
  %add455 = add nsw i32 %379, 1
  %380 = load i32, i32* %xs.addr, align 4
  %sub456 = sub nsw i32 %add455, %380
  %381 = load i32, i32* %n.addr, align 4
  %sub457 = sub nsw i32 %sub456, %381
  %conv458 = sext i32 %sub457 to i64
  call void @bcopy(i8* %add.ptr450, i8* %add.ptr454, i64 %conv458) #1
  %382 = load %struct.mline*, %struct.mline** %ml, align 8
  %font459 = getelementptr inbounds %struct.mline, %struct.mline* %382, i32 0, i32 2
  %383 = load i8*, i8** %font459, align 8
  %384 = load i32, i32* %xs.addr, align 4
  %idx.ext460 = sext i32 %384 to i64
  %add.ptr461 = getelementptr inbounds i8, i8* %383, i64 %idx.ext460
  %385 = load %struct.mline*, %struct.mline** %ml, align 8
  %font462 = getelementptr inbounds %struct.mline, %struct.mline* %385, i32 0, i32 2
  %386 = load i8*, i8** %font462, align 8
  %387 = load i32, i32* %xs.addr, align 4
  %388 = load i32, i32* %n.addr, align 4
  %add463 = add nsw i32 %387, %388
  %idx.ext464 = sext i32 %add463 to i64
  %add.ptr465 = getelementptr inbounds i8, i8* %386, i64 %idx.ext464
  %389 = load i32, i32* %xe.addr, align 4
  %add466 = add nsw i32 %389, 1
  %390 = load i32, i32* %xs.addr, align 4
  %sub467 = sub nsw i32 %add466, %390
  %391 = load i32, i32* %n.addr, align 4
  %sub468 = sub nsw i32 %sub467, %391
  %conv469 = sext i32 %sub468 to i64
  call void @bcopy(i8* %add.ptr461, i8* %add.ptr465, i64 %conv469) #1
  %392 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx470 = getelementptr inbounds %struct.mline, %struct.mline* %392, i32 0, i32 3
  %393 = load i8*, i8** %fontx470, align 8
  %394 = load i32, i32* %xs.addr, align 4
  %idx.ext471 = sext i32 %394 to i64
  %add.ptr472 = getelementptr inbounds i8, i8* %393, i64 %idx.ext471
  %395 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx473 = getelementptr inbounds %struct.mline, %struct.mline* %395, i32 0, i32 3
  %396 = load i8*, i8** %fontx473, align 8
  %397 = load i32, i32* %xs.addr, align 4
  %398 = load i32, i32* %n.addr, align 4
  %add474 = add nsw i32 %397, %398
  %idx.ext475 = sext i32 %add474 to i64
  %add.ptr476 = getelementptr inbounds i8, i8* %396, i64 %idx.ext475
  %399 = load i32, i32* %xe.addr, align 4
  %add477 = add nsw i32 %399, 1
  %400 = load i32, i32* %xs.addr, align 4
  %sub478 = sub nsw i32 %add477, %400
  %401 = load i32, i32* %n.addr, align 4
  %sub479 = sub nsw i32 %sub478, %401
  %conv480 = sext i32 %sub479 to i64
  call void @bcopy(i8* %add.ptr472, i8* %add.ptr476, i64 %conv480) #1
  %402 = load %struct.mline*, %struct.mline** %ml, align 8
  %color481 = getelementptr inbounds %struct.mline, %struct.mline* %402, i32 0, i32 4
  %403 = load i8*, i8** %color481, align 8
  %404 = load i32, i32* %xs.addr, align 4
  %idx.ext482 = sext i32 %404 to i64
  %add.ptr483 = getelementptr inbounds i8, i8* %403, i64 %idx.ext482
  %405 = load %struct.mline*, %struct.mline** %ml, align 8
  %color484 = getelementptr inbounds %struct.mline, %struct.mline* %405, i32 0, i32 4
  %406 = load i8*, i8** %color484, align 8
  %407 = load i32, i32* %xs.addr, align 4
  %408 = load i32, i32* %n.addr, align 4
  %add485 = add nsw i32 %407, %408
  %idx.ext486 = sext i32 %add485 to i64
  %add.ptr487 = getelementptr inbounds i8, i8* %406, i64 %idx.ext486
  %409 = load i32, i32* %xe.addr, align 4
  %add488 = add nsw i32 %409, 1
  %410 = load i32, i32* %xs.addr, align 4
  %sub489 = sub nsw i32 %add488, %410
  %411 = load i32, i32* %n.addr, align 4
  %sub490 = sub nsw i32 %sub489, %411
  %conv491 = sext i32 %sub490 to i64
  call void @bcopy(i8* %add.ptr483, i8* %add.ptr487, i64 %conv491) #1
  br label %do.end.492

do.end.492:                                       ; preds = %do.body.436
  br label %if.end.496

if.else.493:                                      ; preds = %if.else.338
  %412 = load i32, i32* %xe.addr, align 4
  %413 = load i32, i32* %xs.addr, align 4
  %sub494 = sub nsw i32 %412, %413
  %add495 = add nsw i32 %sub494, 1
  store i32 %add495, i32* %n.addr, align 4
  br label %if.end.496

if.end.496:                                       ; preds = %if.else.493, %do.end.492
  br label %do.body.497

do.body.497:                                      ; preds = %if.end.496
  %414 = load %struct.mline*, %struct.mline** %ml, align 8
  %image498 = getelementptr inbounds %struct.mline, %struct.mline* %414, i32 0, i32 0
  %415 = load i8*, i8** %image498, align 8
  %416 = load i32, i32* %xs.addr, align 4
  %idx.ext499 = sext i32 %416 to i64
  %add.ptr500 = getelementptr inbounds i8, i8* %415, i64 %idx.ext499
  %417 = load i32, i32* %n.addr, align 4
  call void @bclear(i8* %add.ptr500, i32 %417)
  %418 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr501 = getelementptr inbounds %struct.mline, %struct.mline* %418, i32 0, i32 1
  %419 = load i8*, i8** %attr501, align 8
  %420 = load i8*, i8** @null, align 8
  %cmp502 = icmp ne i8* %419, %420
  br i1 %cmp502, label %if.then.504, label %if.end.509

if.then.504:                                      ; preds = %do.body.497
  %421 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr505 = getelementptr inbounds %struct.mline, %struct.mline* %421, i32 0, i32 1
  %422 = load i8*, i8** %attr505, align 8
  %423 = load i32, i32* %xs.addr, align 4
  %idx.ext506 = sext i32 %423 to i64
  %add.ptr507 = getelementptr inbounds i8, i8* %422, i64 %idx.ext506
  %424 = load i32, i32* %n.addr, align 4
  %conv508 = sext i32 %424 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr507, i8 0, i64 %conv508, i32 1, i1 false)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.504, %do.body.497
  %425 = load %struct.mline*, %struct.mline** %ml, align 8
  %font510 = getelementptr inbounds %struct.mline, %struct.mline* %425, i32 0, i32 2
  %426 = load i8*, i8** %font510, align 8
  %427 = load i8*, i8** @null, align 8
  %cmp511 = icmp ne i8* %426, %427
  br i1 %cmp511, label %if.then.513, label %if.end.518

if.then.513:                                      ; preds = %if.end.509
  %428 = load %struct.mline*, %struct.mline** %ml, align 8
  %font514 = getelementptr inbounds %struct.mline, %struct.mline* %428, i32 0, i32 2
  %429 = load i8*, i8** %font514, align 8
  %430 = load i32, i32* %xs.addr, align 4
  %idx.ext515 = sext i32 %430 to i64
  %add.ptr516 = getelementptr inbounds i8, i8* %429, i64 %idx.ext515
  %431 = load i32, i32* %n.addr, align 4
  %conv517 = sext i32 %431 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr516, i8 0, i64 %conv517, i32 1, i1 false)
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.513, %if.end.509
  %432 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx519 = getelementptr inbounds %struct.mline, %struct.mline* %432, i32 0, i32 3
  %433 = load i8*, i8** %fontx519, align 8
  %434 = load i8*, i8** @null, align 8
  %cmp520 = icmp ne i8* %433, %434
  br i1 %cmp520, label %if.then.522, label %if.end.527

if.then.522:                                      ; preds = %if.end.518
  %435 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx523 = getelementptr inbounds %struct.mline, %struct.mline* %435, i32 0, i32 3
  %436 = load i8*, i8** %fontx523, align 8
  %437 = load i32, i32* %xs.addr, align 4
  %idx.ext524 = sext i32 %437 to i64
  %add.ptr525 = getelementptr inbounds i8, i8* %436, i64 %idx.ext524
  %438 = load i32, i32* %n.addr, align 4
  %conv526 = sext i32 %438 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr525, i8 0, i64 %conv526, i32 1, i1 false)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.522, %if.end.518
  %439 = load %struct.mline*, %struct.mline** %ml, align 8
  %color528 = getelementptr inbounds %struct.mline, %struct.mline* %439, i32 0, i32 4
  %440 = load i8*, i8** %color528, align 8
  %441 = load i8*, i8** @null, align 8
  %cmp529 = icmp ne i8* %440, %441
  br i1 %cmp529, label %if.then.531, label %if.end.536

if.then.531:                                      ; preds = %if.end.527
  %442 = load %struct.mline*, %struct.mline** %ml, align 8
  %color532 = getelementptr inbounds %struct.mline, %struct.mline* %442, i32 0, i32 4
  %443 = load i8*, i8** %color532, align 8
  %444 = load i32, i32* %xs.addr, align 4
  %idx.ext533 = sext i32 %444 to i64
  %add.ptr534 = getelementptr inbounds i8, i8* %443, i64 %idx.ext533
  %445 = load i32, i32* %n.addr, align 4
  %conv535 = sext i32 %445 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr534, i8 0, i64 %conv535, i32 1, i1 false)
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.531, %if.end.527
  br label %do.end.537

do.end.537:                                       ; preds = %if.end.536
  %446 = load i32, i32* %bce.addr, align 4
  %tobool538 = icmp ne i32 %446, 0
  br i1 %tobool538, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %do.end.537
  %447 = load %struct.win*, %struct.win** %p.addr, align 8
  %448 = load i32, i32* %y.addr, align 4
  %449 = load i32, i32* %xs.addr, align 4
  %450 = load i32, i32* %n.addr, align 4
  %451 = load i32, i32* %bce.addr, align 4
  call void @MBceLine(%struct.win* %447, i32 %448, i32 %449, i32 %450, i32 %451)
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.539, %do.end.537
  br label %if.end.541

if.end.541:                                       ; preds = %if.then, %if.end.540, %if.end.337
  ret void
}

declare void @LScrollH(%struct.layer*, i32, i32, i32, i32, i32, %struct.mline*) #4

declare void @InsertMode(i32) #4

declare i32 @printpipe(%struct.win*, i8*) #4

declare void @ReverseVideo(i32) #4

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct.acluser** @FindUserPtr(i8*) #4

declare i32 @Parse(i8*, i32, i8**, i32*) #4

declare void @DoCommand(i8**, i32*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @SaveStr(i8*) #4

declare void @MakeStatus(i8*) #4

declare void @AddStr(i8*) #4

declare i64 @write(i32, i8*, i64) #4

declare void @AddStrn(i8*, i32) #4

declare void @Flush(i32) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
