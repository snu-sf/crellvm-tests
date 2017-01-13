; ModuleID = 'utmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@fore = external global %struct.win*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Can only work with normal windows.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"This window is now logged in.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"This window should now be logged in.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"This window is already logged in.\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"This window is already logged out\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"This window is not logged in.\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"What? Cannot remove Utmp slot?\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"This window is no longer logged in.\00", align 1
@UtmpName = internal global [14 x i8] c"/var/run/utmp\00", align 1
@utmpfd = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@utmpok = internal global i32 0, align 4
@display = external global %struct.display*, align 8
@real_uid = external global i32, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Could not write %s\00", align 1
@LoginName = external global i8*, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c":S.%d\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Utmp slot not found -> not removed\00", align 1

; Function Attrs: nounwind uwtable
define void @SlotToggle(i32 %how) #0 {
entry:
  %how.addr = alloca i32, align 4
  store i32 %how, i32* %how.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** @fore, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 1
  %1 = load i32, i32* %w_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  br label %if.end.35

if.end:                                           ; preds = %do.end
  %2 = load i32, i32* %how.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else.13

if.then.1:                                        ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %3 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 87
  %4 = load i8*, i8** %w_slot, align 8
  %cmp4 = icmp eq i8* %4, inttoptr (i64 -1 to i8*)
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.3
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot5 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 87
  %6 = load i8*, i8** %w_slot5, align 8
  %cmp6 = icmp eq i8* %6, null
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %lor.lhs.false, %do.end.3
  %7 = load %struct.win*, %struct.win** @fore, align 8
  %call = call i32 @SetUtmp(%struct.win* %7)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.10

if.else:                                          ; preds = %if.then.7
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %8 = load %struct.win*, %struct.win** @fore, align 8
  call void @WindowChanged(%struct.win* %8, i32 102)
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end.10
  br label %if.end.35

if.else.13:                                       ; preds = %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %if.else.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %9 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot16 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 87
  %10 = load i8*, i8** %w_slot16, align 8
  %cmp17 = icmp eq i8* %10, inttoptr (i64 -1 to i8*)
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.end.15
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.34

if.else.19:                                       ; preds = %do.end.15
  %11 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot20 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 87
  %12 = load i8*, i8** %w_slot20, align 8
  %cmp21 = icmp eq i8* %12, null
  br i1 %cmp21, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %if.else.19
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot25 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 87
  store i8* inttoptr (i64 -1 to i8*), i8** %w_slot25, align 8
  br label %if.end.33

if.else.26:                                       ; preds = %if.else.19
  %14 = load %struct.win*, %struct.win** @fore, align 8
  %call27 = call i32 @RemoveUtmp(%struct.win* %14)
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_slot28 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 87
  %16 = load i8*, i8** %w_slot28, align 8
  %cmp29 = icmp ne i8* %16, inttoptr (i64 -1 to i8*)
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.32

if.else.31:                                       ; preds = %if.else.26
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %17 = load %struct.win*, %struct.win** @fore, align 8
  call void @WindowChanged(%struct.win* %17, i32 102)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.end.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.end.34, %if.end.12
  ret void
}

declare void @Msg(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @SetUtmp(%struct.win* %wi) #0 {
entry:
  %retval = alloca i32, align 4
  %wi.addr = alloca %struct.win*, align 8
  %slot = alloca i8*, align 8
  %u = alloca %struct.utmp, align 4
  %saved_ut = alloca i32, align 4
  %p = alloca i8*, align 8
  %host = alloca [271 x i8], align 16
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  %0 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 87
  store i8* null, i8** %w_slot, align 8
  %1 = load i32, i32* @utmpok, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 1
  %3 = load i32, i32* %w_type, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 89
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %call = call i8* @TtyNameSlot(i8* %arraydecay)
  store i8* %call, i8** %slot, align 8
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %5 = bitcast %struct.utmp* %u to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 384, i32 1, i1 false)
  %6 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savut = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 88
  %7 = bitcast %struct.utmp* %w_savut to i8*
  %8 = bitcast %struct.utmp* %u to i8*
  %call6 = call i32 @bcmp(i8* %7, i8* %8, i64 384) #6
  store i32 %call6, i32* %saved_ut, align 4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end.5
  %9 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savut9 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 88
  %10 = bitcast %struct.utmp* %w_savut9 to i8*
  %11 = bitcast %struct.utmp* %u to i8*
  call void @bcopy(i8* %10, i8* %11, i64 384) #3
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %do.end.5
  %12 = load i32, i32* %saved_ut, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_tty13 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 89
  %arraydecay14 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty13, i32 0, i32 0
  %call15 = call i8* @stripdev(i8* %arraydecay14)
  %14 = load i8*, i8** @LoginName, align 8
  %15 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 81
  %16 = load i32, i32* %w_pid, align 4
  call void @makeuser(%struct.utmp* %u, i8* %call15, i8* %14, i32 %16)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.10
  %arrayidx = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i64 256
  store i8 0, i8* %arrayidx, align 1
  %17 = load %struct.display*, %struct.display** @display, align 8
  %tobool17 = icmp ne %struct.display* %17, null
  br i1 %tobool17, label %if.then.18, label %if.else.74

if.then.18:                                       ; preds = %if.end.16
  %arraydecay19 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_utmp_logintty = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 100
  %ut_host = getelementptr inbounds %struct.utmp, %struct.utmp* %d_utmp_logintty, i32 0, i32 5
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i32 0, i32 0
  %call21 = call i8* @strncpy(i8* %arraydecay19, i8* %arraydecay20, i64 256) #3
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 99
  %20 = load i8*, i8** %d_loginslot, align 8
  %cmp22 = icmp ne i8* %20, null
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.18
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot23 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 99
  %22 = load i8*, i8** %d_loginslot23, align 8
  %cmp24 = icmp ne i8* %22, inttoptr (i64 -1 to i8*)
  br i1 %cmp24, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %arrayidx26 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i64 0
  %23 = load i8, i8* %arrayidx26, align 1
  %conv = sext i8 %23 to i32
  %cmp27 = icmp ne i32 %conv, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.25
  %arraydecay30 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  store i8* %arraydecay30, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.29
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %tobool31 = icmp ne i8 %25, 0
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv32 = sext i8 %27 to i32
  %cmp33 = icmp slt i32 %conv32, 48
  br i1 %cmp33, label %land.lhs.true.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %for.body
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp sgt i32 %conv36, 57
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35, %for.body
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp ne i32 %conv40, 46
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.39
  br label %for.end

if.end.44:                                        ; preds = %land.lhs.true.39, %lor.lhs.false.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %for.cond
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %tobool45 = icmp ne i8 %34, 0
  br i1 %tobool45, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %for.end
  %arraydecay47 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  store i8* %arraydecay47, i8** %p, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.64, %if.then.46
  %35 = load i8*, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %tobool49 = icmp ne i8 %36, 0
  br i1 %tobool49, label %for.body.50, label %for.end.66

for.body.50:                                      ; preds = %for.cond.48
  %37 = load i8*, i8** %p, align 8
  %38 = load i8, i8* %37, align 1
  %conv51 = sext i8 %38 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.then.62, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %for.body.50
  %39 = load i8*, i8** %p, align 8
  %40 = load i8, i8* %39, align 1
  %conv55 = sext i8 %40 to i32
  %cmp56 = icmp eq i32 %conv55, 58
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %lor.lhs.false.54
  %41 = load i8*, i8** %p, align 8
  %arraydecay59 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %cmp60 = icmp ne i8* %41, %arraydecay59
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.58, %for.body.50
  %42 = load i8*, i8** %p, align 8
  store i8 0, i8* %42, align 1
  br label %for.end.66

if.end.63:                                        ; preds = %land.lhs.true.58, %lor.lhs.false.54
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr65, i8** %p, align 8
  br label %for.cond.48

for.end.66:                                       ; preds = %if.then.62, %for.cond.48
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %for.end
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true.25, %land.lhs.true, %if.then.18
  %arraydecay68 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay68, i64 1
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 58
  %arraydecay69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %call70 = call i8* @stripdev(i8* %arraydecay69)
  %call71 = call i8* @strncpy(i8* %add.ptr, i8* %call70, i64 255) #3
  %arrayidx72 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i64 0
  store i8 58, i8* %arrayidx72, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.end.67
  br label %if.end.77

if.else.74:                                       ; preds = %if.end.16
  %arraydecay75 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %call76 = call i8* @strncpy(i8* %arraydecay75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 256) #3
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.end.73
  %arraydecay78 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %arraydecay79 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %call80 = call i64 @strlen(i8* %arraydecay79) #6
  %add.ptr81 = getelementptr inbounds i8, i8* %arraydecay78, i64 %call80
  %45 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 9
  %46 = load i32, i32* %w_number, align 4
  %call82 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %46) #3
  br label %do.body.83

do.body.83:                                       ; preds = %if.end.77
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.83
  %ut_host85 = getelementptr inbounds %struct.utmp, %struct.utmp* %u, i32 0, i32 5
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host85, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %call88 = call i8* @strncpy(i8* %arraydecay86, i8* %arraydecay87, i64 256) #3
  %47 = load i8*, i8** %slot, align 8
  %arraydecay89 = getelementptr inbounds [271 x i8], [271 x i8]* %host, i32 0, i32 0
  %48 = load %struct.win*, %struct.win** %wi.addr, align 8
  %call90 = call i32 @pututslot(i8* %47, %struct.utmp* %u, i8* %arraydecay89, %struct.win* %48)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %do.end.84
  %call94 = call i32* @__errno_location() #7
  %49 = load i32, i32* %call94, align 4
  call void (i32, i8*, ...) @Msg(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @UtmpName, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.95:                                        ; preds = %do.end.84
  br label %do.body.96

do.body.96:                                       ; preds = %if.end.95
  br label %do.end.97

do.end.97:                                        ; preds = %do.body.96
  %50 = load i8*, i8** %slot, align 8
  %51 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_slot98 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 87
  store i8* %50, i8** %w_slot98, align 8
  %52 = bitcast %struct.utmp* %u to i8*
  %53 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savut99 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 88
  %54 = bitcast %struct.utmp* %w_savut99 to i8*
  call void @bcopy(i8* %52, i8* %54, i64 384) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.97, %if.then.93, %do.end, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare void @WindowChanged(%struct.win*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @RemoveUtmp(%struct.win* %wi) #0 {
entry:
  %retval = alloca i32, align 4
  %wi.addr = alloca %struct.win*, align 8
  %u = alloca %struct.utmp, align 4
  %uu = alloca %struct.utmp*, align 8
  %slot = alloca i8*, align 8
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  %0 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 87
  %1 = load i8*, i8** %w_slot, align 8
  store i8* %1, i8** %slot, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* @utmpok, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load i8*, i8** %slot, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %slot, align 8
  %cmp1 = icmp eq i8* %4, inttoptr (i64 -1 to i8*)
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_slot3 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 87
  store i8* inttoptr (i64 -1 to i8*), i8** %w_slot3, align 8
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = bitcast %struct.utmp* %u to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 384, i32 1, i1 false)
  %7 = load i8*, i8** %slot, align 8
  %call = call %struct.utmp* @getutslot(i8* %7)
  store %struct.utmp* %call, %struct.utmp** %uu, align 8
  %cmp5 = icmp eq %struct.utmp* %call, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %8 = load %struct.utmp*, %struct.utmp** %uu, align 8
  %9 = bitcast %struct.utmp* %8 to i8*
  %10 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savut = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 88
  %11 = bitcast %struct.utmp* %w_savut to i8*
  call void @bcopy(i8* %9, i8* %11, i64 384) #3
  %12 = load %struct.utmp*, %struct.utmp** %uu, align 8
  %13 = bitcast %struct.utmp* %u to i8*
  %14 = bitcast %struct.utmp* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 384, i32 4, i1 false)
  call void @makedead(%struct.utmp* %u)
  %15 = load i8*, i8** %slot, align 8
  %16 = load %struct.win*, %struct.win** %wi.addr, align 8
  %call8 = call i32 @pututslot(i8* %15, %struct.utmp* %u, i8* null, %struct.win* %16)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %call11 = call i32* @__errno_location() #7
  %17 = load i32, i32* %call11, align 4
  call void (i32, i8*, ...) @Msg(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @UtmpName, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %18 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_slot15 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 87
  store i8* inttoptr (i64 -1 to i8*), i8** %w_slot15, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.14, %if.then.10, %if.then.6, %if.then.2, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @InitUtmp() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @UtmpName, i32 0, i32 0), i32 2)
  store i32 %call, i32* @utmpfd, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.end
  %call1 = call i32* @__errno_location() #7
  %0 = load i32, i32* %call1, align 4
  %cmp2 = icmp ne i32 %0, 13
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32* @__errno_location() #7
  %1 = load i32, i32* %call4, align 4
  call void (i32, i8*, ...) @Msg(i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @UtmpName, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  store i32 0, i32* @utmpok, align 4
  br label %return

if.end.7:                                         ; preds = %do.end
  %2 = load i32, i32* @utmpfd, align 4
  %call8 = call i32 @close(i32 %2)
  store i32 -1, i32* @utmpfd, align 4
  store i32 1, i32* @utmpok, align 4
  br label %return

return:                                           ; preds = %if.end.7, %do.end.6
  ret void
}

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define void @RemoveLoginSlot() #0 {
entry:
  %u = alloca %struct.utmp, align 4
  %uu = alloca %struct.utmp*, align 8
  %stb = alloca %struct.stat, align 8
  %tty = alloca i8*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 58
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %call = call i8* @TtyNameSlot(i8* %arraydecay)
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 99
  store i8* %call, i8** %d_loginslot, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot3 = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 99
  %3 = load i8*, i8** %d_loginslot3, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.2
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot4 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 99
  %5 = load i8*, i8** %d_loginslot4, align 8
  %cmp5 = icmp eq i8* %5, inttoptr (i64 -1 to i8*)
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end.2
  br label %if.end.54

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* @utmpok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot7 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 99
  store i8* null, i8** %d_loginslot7, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot10 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 99
  %9 = load i8*, i8** %d_loginslot10, align 8
  %call11 = call %struct.utmp* @getutslot(i8* %9)
  store %struct.utmp* %call11, %struct.utmp** %uu, align 8
  %cmp12 = icmp eq %struct.utmp* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.else
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot16 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 99
  store i8* null, i8** %d_loginslot16, align 8
  br label %if.end.24

if.else.17:                                       ; preds = %if.else
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_utmp_logintty = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 100
  %12 = load %struct.utmp*, %struct.utmp** %uu, align 8
  %13 = bitcast %struct.utmp* %d_utmp_logintty to i8*
  %14 = bitcast %struct.utmp* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 384, i32 4, i1 false)
  %15 = load %struct.utmp*, %struct.utmp** %uu, align 8
  %16 = bitcast %struct.utmp* %u to i8*
  %17 = bitcast %struct.utmp* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 384, i32 4, i1 false)
  call void @makedead(%struct.utmp* %u)
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot18 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 99
  %19 = load i8*, i8** %d_loginslot18, align 8
  %call19 = call i32 @pututslot(i8* %19, %struct.utmp* %u, i8* null, %struct.win* null)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.17
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot22 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 99
  store i8* null, i8** %d_loginslot22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.end.9
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot28 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 99
  %22 = load i8*, i8** %d_loginslot28, align 8
  %cmp29 = icmp eq i8* %22, null
  br i1 %cmp29, label %if.then.30, label %if.end.54

if.then.30:                                       ; preds = %do.end.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_loginttymode = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 101
  store i32 0, i32* %d_loginttymode, align 4
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 59
  %25 = load i32, i32* %d_userfd, align 4
  %call33 = call i8* @ttyname(i32 %25) #3
  store i8* %call33, i8** %tty, align 8
  %tobool34 = icmp ne i8* %call33, null
  br i1 %tobool34, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %do.end.32
  %26 = load i8*, i8** %tty, align 8
  %call35 = call i32 @stat(i8* %26, %struct.stat* %stb) #3
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.53

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 4
  %27 = load i32, i32* %st_uid, align 4
  %28 = load i32, i32* @real_uid, align 4
  %cmp38 = icmp eq i32 %27, %28
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.53

land.lhs.true.39:                                 ; preds = %land.lhs.true.37
  %29 = load i8*, i8** %tty, align 8
  %call40 = call i32 @CheckTtyname(i8* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.53, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 3
  %30 = load i32, i32* %st_mode, align 4
  %and = and i32 %30, 511
  %cmp43 = icmp ne i32 %and, 438
  br i1 %cmp43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %land.lhs.true.42
  %st_mode45 = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 3
  %31 = load i32, i32* %st_mode45, align 4
  %and46 = and i32 %31, 511
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_loginttymode47 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 101
  store i32 %and46, i32* %d_loginttymode47, align 4
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty48 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 58
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty48, i32 0, i32 0
  %st_mode50 = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 3
  %34 = load i32, i32* %st_mode50, align 4
  %and51 = and i32 %34, 384
  %call52 = call i32 @chmod(i8* %arraydecay49, i32 %and51) #3
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.44, %land.lhs.true.42, %land.lhs.true.39, %land.lhs.true.37, %land.lhs.true, %do.end.32
  br label %if.end.54

if.end.54:                                        ; preds = %if.then, %if.end.53, %do.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @TtyNameSlot(i8* %nam) #0 {
entry:
  %nam.addr = alloca i8*, align 8
  store i8* %nam, i8** %nam.addr, align 8
  %0 = load i8*, i8** %nam.addr, align 8
  %call = call i8* @stripdev(i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.utmp* @getutslot(i8* %slot) #0 {
entry:
  %slot.addr = alloca i8*, align 8
  %u = alloca %struct.utmp, align 4
  store i8* %slot, i8** %slot.addr, align 8
  %0 = bitcast %struct.utmp* %u to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 384, i32 1, i1 false)
  %ut_line = getelementptr inbounds %struct.utmp, %struct.utmp* %u, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %1 = load i8*, i8** %slot.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %1, i64 32) #3
  call void @setutent() #3
  %call1 = call %struct.utmp* @getutline(%struct.utmp* %u) #3
  ret %struct.utmp* %call1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @makedead(%struct.utmp* %u) #0 {
entry:
  %u.addr = alloca %struct.utmp*, align 8
  store %struct.utmp* %u, %struct.utmp** %u.addr, align 8
  %0 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_type = getelementptr inbounds %struct.utmp, %struct.utmp* %0, i32 0, i32 0
  store i16 8, i16* %ut_type, align 2
  %1 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_exit = getelementptr inbounds %struct.utmp, %struct.utmp* %1, i32 0, i32 6
  %e_termination = getelementptr inbounds %struct.exit_status, %struct.exit_status* %ut_exit, i32 0, i32 0
  store i16 0, i16* %e_termination, align 2
  %2 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_exit1 = getelementptr inbounds %struct.utmp, %struct.utmp* %2, i32 0, i32 6
  %e_exit = getelementptr inbounds %struct.exit_status, %struct.exit_status* %ut_exit1, i32 0, i32 1
  store i16 0, i16* %e_exit, align 2
  %3 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_user = getelementptr inbounds %struct.utmp, %struct.utmp* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pututslot(i8* %slot, %struct.utmp* %u, i8* %host, %struct.win* %wi) #0 {
entry:
  %slot.addr = alloca i8*, align 8
  %u.addr = alloca %struct.utmp*, align 8
  %host.addr = alloca i8*, align 8
  %wi.addr = alloca %struct.win*, align 8
  store i8* %slot, i8** %slot.addr, align 8
  store %struct.utmp* %u, %struct.utmp** %u.addr, align 8
  store i8* %host, i8** %host.addr, align 8
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  call void @setutent() #3
  %0 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %call = call %struct.utmp* @xpututline(%struct.utmp* %0)
  %cmp = icmp ne %struct.utmp* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare i32 @CheckTtyname(i8*) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #4

; Function Attrs: nounwind uwtable
define void @RestoreLoginSlot() #0 {
entry:
  %tty = alloca i8*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load i32, i32* @utmpok, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %do.end.2
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 99
  %2 = load i8*, i8** %d_loginslot, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true.3, label %if.end.13

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot4 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 99
  %4 = load i8*, i8** %d_loginslot4, align 8
  %cmp5 = icmp ne i8* %4, inttoptr (i64 -1 to i8*)
  br i1 %cmp5, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.3
  br label %do.body.6

do.body.6:                                        ; preds = %if.then
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot8 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 99
  %6 = load i8*, i8** %d_loginslot8, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_utmp_logintty = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 100
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_utmp_logintty9 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 100
  %ut_host = getelementptr inbounds %struct.utmp, %struct.utmp* %d_utmp_logintty9, i32 0, i32 5
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i32 0, i32 0
  %call = call i32 @pututslot(i8* %6, %struct.utmp* %d_utmp_logintty, i8* %arraydecay, %struct.win* null)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %do.end.7
  %call12 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call12, align 4
  call void (i32, i8*, ...) @Msg(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @UtmpName, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %do.end.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %do.end.2
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_loginslot14 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 99
  store i8* null, i8** %d_loginslot14, align 8
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_loginttymode = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 101
  %12 = load i32, i32* %d_loginttymode, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.25

land.lhs.true.16:                                 ; preds = %if.end.13
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 59
  %14 = load i32, i32* %d_userfd, align 4
  %call17 = call i8* @ttyname(i32 %14) #3
  store i8* %call17, i8** %tty, align 8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.25

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %15 = load i8*, i8** %tty, align 8
  %call20 = call i32 @CheckTtyname(i8* %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.19
  %16 = load i8*, i8** %tty, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_loginttymode23 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 101
  %18 = load i32, i32* %d_loginttymode23, align 4
  %call24 = call i32 @chmod(i8* %16, i32 %18) #3
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true.19, %land.lhs.true.16, %if.end.13
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @bcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @makeuser(%struct.utmp* %u, i8* %line, i8* %user, i32 %pid) #0 {
entry:
  %u.addr = alloca %struct.utmp*, align 8
  %line.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %pid.addr = alloca i32, align 4
  %now = alloca i64, align 8
  store %struct.utmp* %u, %struct.utmp** %u.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  store i32 %pid, i32* %pid.addr, align 4
  %0 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_type = getelementptr inbounds %struct.utmp, %struct.utmp* %0, i32 0, i32 0
  store i16 7, i16* %ut_type, align 2
  %1 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_user = getelementptr inbounds %struct.utmp, %struct.utmp* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i32 0, i32 0
  %2 = load i8*, i8** %user.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %2, i64 32) #3
  %3 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_id = getelementptr inbounds %struct.utmp, %struct.utmp* %3, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %ut_id, i32 0, i32 0
  %4 = load i8*, i8** %line.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 3
  %call2 = call i8* @strncpy(i8* %arraydecay1, i8* %add.ptr, i64 4) #3
  %5 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_line = getelementptr inbounds %struct.utmp, %struct.utmp* %5, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %6 = load i8*, i8** %line.addr, align 8
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %6, i64 32) #3
  %7 = load i32, i32* %pid.addr, align 4
  %8 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_pid = getelementptr inbounds %struct.utmp, %struct.utmp* %8, i32 0, i32 1
  store i32 %7, i32* %ut_pid, align 4
  %call5 = call i64 @time(i64* %now) #3
  %9 = load i64, i64* %now, align 8
  %conv = trunc i64 %9 to i32
  %10 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_tv = getelementptr inbounds %struct.utmp, %struct.utmp* %10, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.anon.1, %struct.anon.1* %ut_tv, i32 0, i32 0
  store i32 %conv, i32* %tv_sec, align 4
  ret void
}

declare i8* @stripdev(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @setutent() #4

; Function Attrs: nounwind
declare %struct.utmp* @getutline(%struct.utmp*) #4

; Function Attrs: nounwind uwtable
define internal %struct.utmp* @xpututline(%struct.utmp* %u) #0 {
entry:
  %retval = alloca %struct.utmp*, align 8
  %u.addr = alloca %struct.utmp*, align 8
  %u2 = alloca %struct.utmp*, align 8
  store %struct.utmp* %u, %struct.utmp** %u.addr, align 8
  %0 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %call = call %struct.utmp* @pututline(%struct.utmp* %0) #3
  call void @setutent() #3
  %1 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %call1 = call %struct.utmp* @getutline(%struct.utmp* %1) #3
  store %struct.utmp* %call1, %struct.utmp** %u2, align 8
  %2 = load %struct.utmp*, %struct.utmp** %u2, align 8
  %cmp = icmp eq %struct.utmp* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_type = getelementptr inbounds %struct.utmp, %struct.utmp* %3, i32 0, i32 0
  %4 = load i16, i16* %ut_type, align 2
  %conv = sext i16 %4 to i32
  %cmp2 = icmp eq i32 %conv, 8
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.utmp* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct.utmp* %cond, %struct.utmp** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  %ut_type4 = getelementptr inbounds %struct.utmp, %struct.utmp* %6, i32 0, i32 0
  %7 = load i16, i16* %ut_type4, align 2
  %conv5 = sext i16 %7 to i32
  %8 = load %struct.utmp*, %struct.utmp** %u2, align 8
  %ut_type6 = getelementptr inbounds %struct.utmp, %struct.utmp* %8, i32 0, i32 0
  %9 = load i16, i16* %ut_type6, align 2
  %conv7 = sext i16 %9 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.end
  %10 = load %struct.utmp*, %struct.utmp** %u.addr, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi %struct.utmp* [ %10, %cond.true.10 ], [ null, %cond.false.11 ]
  store %struct.utmp* %cond13, %struct.utmp** %retval
  br label %return

return:                                           ; preds = %cond.end.12, %cond.end
  %11 = load %struct.utmp*, %struct.utmp** %retval
  ret %struct.utmp* %11
}

; Function Attrs: nounwind
declare %struct.utmp* @pututline(%struct.utmp*) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
