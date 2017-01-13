; ModuleID = './acls.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.comm = type { i8*, i32, [1 x i8*] }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.spwd = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64 }

@maxusercount = global i32 0, align 4
@users = common global %struct.acluser* null, align 8
@DefaultEsc = global i32 -1, align 4
@DefaultMetaEsc = global i32 -1, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@NullStr = external global [0 x i8], align 1
@userbits = internal global i8* null, align 8
@comms = external global [0 x %struct.comm], align 8
@default_c_bit = internal global [1 x i8] zeroinitializer, align 1
@default_w_bit = internal global [3 x i8] c"\01\01\01", align 1
@windows = external global %struct.win*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"+a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#?\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-rwx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"+x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"displays\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@display = external global %struct.display*, align 8
@displays = external global %struct.display*, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"+r\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"+w\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%s: \22su %s\22 %s for \22%s\22\00", align 1
@SockPath = external global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"succeded\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Sorry.\00", align 1
@wtab = external global %struct.win**, align 8
@.str.23 = private unnamed_addr constant [54 x i8] c"Bad argument. Should be ``[user[,user...]{+|-}rwxn''.\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"UsersAcl failed. Hmmm.\00", align 1
@EffectiveAclUser = global %struct.acluser* null, align 8

; Function Attrs: nounwind uwtable
define %struct.acluser** @FindUserPtr(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %u = alloca %struct.acluser**, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.acluser** @users, %struct.acluser*** %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %1 = load %struct.acluser*, %struct.acluser** %0, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %3 = load %struct.acluser*, %struct.acluser** %2, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay, i8* %4) #4
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %6 = load %struct.acluser*, %struct.acluser** %5, align 8
  %u_next = getelementptr inbounds %struct.acluser, %struct.acluser* %6, i32 0, i32 0
  store %struct.acluser** %u_next, %struct.acluser*** %u, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct.acluser**, %struct.acluser*** %u, align 8
  ret %struct.acluser** %7
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @UserAdd(i8* %name, i8* %pass, %struct.acluser** %up) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %pass.addr = alloca i8*, align 8
  %up.addr = alloca %struct.acluser**, align 8
  %j = alloca i32, align 4
  %j43 = alloca i32, align 4
  %w = alloca %struct.win*, align 8
  %u = alloca %struct.acluser*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %pass, i8** %pass.addr, align 8
  store %struct.acluser** %up, %struct.acluser*** %up.addr, align 8
  %0 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %tobool = icmp ne %struct.acluser** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %1)
  store %struct.acluser** %call, %struct.acluser*** %up.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %3 = load %struct.acluser*, %struct.acluser** %2, align 8
  %tobool1 = icmp ne %struct.acluser* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %pass.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %5 = load i8*, i8** %pass.addr, align 8
  %call5 = call i8* @SaveStr(i8* %5)
  %6 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %7 = load %struct.acluser*, %struct.acluser** %6, align 8
  %u_password = getelementptr inbounds %struct.acluser, %struct.acluser* %7, i32 0, i32 2
  store i8* %call5, i8** %u_password, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %8) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %call11 = call noalias i8* @calloc(i64 1, i64 360) #5
  %9 = bitcast i8* %call11 to %struct.acluser*
  %10 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* %9, %struct.acluser** %10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %11 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %12 = load %struct.acluser*, %struct.acluser** %11, align 8
  %tobool13 = icmp ne %struct.acluser* %12, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %13 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %14 = load %struct.acluser*, %struct.acluser** %13, align 8
  %u_plop = getelementptr inbounds %struct.acluser, %struct.acluser* %14, i32 0, i32 8
  %buf = getelementptr inbounds %struct.plop, %struct.plop* %u_plop, i32 0, i32 0
  store i8* null, i8** %buf, align 8
  %15 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %16 = load %struct.acluser*, %struct.acluser** %15, align 8
  %u_plop16 = getelementptr inbounds %struct.acluser, %struct.acluser* %16, i32 0, i32 8
  %len = getelementptr inbounds %struct.plop, %struct.plop* %u_plop16, i32 0, i32 1
  store i32 0, i32* %len, align 4
  %17 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %18 = load %struct.acluser*, %struct.acluser** %17, align 8
  %u_plop17 = getelementptr inbounds %struct.acluser, %struct.acluser* %18, i32 0, i32 8
  %enc = getelementptr inbounds %struct.plop, %struct.plop* %u_plop17, i32 0, i32 2
  store i32 0, i32* %enc, align 4
  %19 = load i32, i32* @DefaultEsc, align 4
  %20 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %21 = load %struct.acluser*, %struct.acluser** %20, align 8
  %u_Esc = getelementptr inbounds %struct.acluser, %struct.acluser* %21, i32 0, i32 6
  store i32 %19, i32* %u_Esc, align 4
  %22 = load i32, i32* @DefaultMetaEsc, align 4
  %23 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %24 = load %struct.acluser*, %struct.acluser** %23, align 8
  %u_MetaEsc = getelementptr inbounds %struct.acluser, %struct.acluser* %24, i32 0, i32 7
  store i32 %22, i32* %u_MetaEsc, align 4
  %25 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %26 = load %struct.acluser*, %struct.acluser** %25, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %26, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  %27 = load i8*, i8** %name.addr, align 8
  %call18 = call i8* @strncpy(i8* %arraydecay, i8* %27, i64 256) #5
  %28 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %29 = load %struct.acluser*, %struct.acluser** %28, align 8
  %u_password19 = getelementptr inbounds %struct.acluser, %struct.acluser* %29, i32 0, i32 2
  store i8* null, i8** %u_password19, align 8
  %30 = load i8*, i8** %pass.addr, align 8
  %tobool20 = icmp ne i8* %30, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.15
  %31 = load i8*, i8** %pass.addr, align 8
  %call22 = call i8* @SaveStr(i8* %31)
  %32 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %33 = load %struct.acluser*, %struct.acluser** %32, align 8
  %u_password23 = getelementptr inbounds %struct.acluser, %struct.acluser* %33, i32 0, i32 2
  store i8* %call22, i8** %u_password23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.15
  %34 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %35 = load %struct.acluser*, %struct.acluser** %34, align 8
  %u_password25 = getelementptr inbounds %struct.acluser, %struct.acluser* %35, i32 0, i32 2
  %36 = load i8*, i8** %u_password25, align 8
  %tobool26 = icmp ne i8* %36, null
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %37 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %38 = load %struct.acluser*, %struct.acluser** %37, align 8
  %u_password28 = getelementptr inbounds %struct.acluser, %struct.acluser* %38, i32 0, i32 2
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @NullStr, i32 0, i32 0), i8** %u_password28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %39 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %40 = load %struct.acluser*, %struct.acluser** %39, align 8
  %u_detachwin = getelementptr inbounds %struct.acluser, %struct.acluser* %40, i32 0, i32 4
  store i32 -1, i32* %u_detachwin, align 4
  %41 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %42 = load %struct.acluser*, %struct.acluser** %41, align 8
  %u_detachotherwin = getelementptr inbounds %struct.acluser, %struct.acluser* %42, i32 0, i32 5
  store i32 -1, i32* %u_detachotherwin, align 4
  %43 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %44 = load %struct.acluser*, %struct.acluser** %43, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %44, i32 0, i32 11
  store %struct.aclusergroup* null, %struct.aclusergroup** %u_group, align 8
  %45 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %46 = load %struct.acluser*, %struct.acluser** %45, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %46, i32 0, i32 9
  store i32 0, i32* %u_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %47 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %48 = load %struct.acluser*, %struct.acluser** %47, align 8
  %u_id30 = getelementptr inbounds %struct.acluser, %struct.acluser* %48, i32 0, i32 9
  %49 = load i32, i32* %u_id30, align 4
  %50 = load i32, i32* @maxusercount, align 4
  %cmp = icmp slt i32 %49, %50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %52 = load %struct.acluser*, %struct.acluser** %51, align 8
  %u_id31 = getelementptr inbounds %struct.acluser, %struct.acluser* %52, i32 0, i32 9
  %53 = load i32, i32* %u_id31, align 4
  %and = and i32 %53, 7
  %shr = ashr i32 128, %and
  %54 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %55 = load %struct.acluser*, %struct.acluser** %54, align 8
  %u_id32 = getelementptr inbounds %struct.acluser, %struct.acluser* %55, i32 0, i32 9
  %56 = load i32, i32* %u_id32, align 4
  %shr33 = ashr i32 %56, 3
  %idxprom = sext i32 %shr33 to i64
  %57 = load i8*, i8** @userbits, align 8
  %arrayidx = getelementptr inbounds i8, i8* %57, i64 %idxprom
  %58 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %58 to i32
  %and34 = and i32 %shr, %conv
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %for.body
  br label %for.end

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %59 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %60 = load %struct.acluser*, %struct.acluser** %59, align 8
  %u_id38 = getelementptr inbounds %struct.acluser, %struct.acluser* %60, i32 0, i32 9
  %61 = load i32, i32* %u_id38, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %u_id38, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.36, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %62 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %63 = load %struct.acluser*, %struct.acluser** %62, align 8
  %u_id39 = getelementptr inbounds %struct.acluser, %struct.acluser* %63, i32 0, i32 9
  %64 = load i32, i32* %u_id39, align 4
  %65 = load i32, i32* @maxusercount, align 4
  %cmp40 = icmp eq i32 %64, %65
  br i1 %cmp40, label %if.then.42, label %if.end.124

if.then.42:                                       ; preds = %do.end
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.44
  %66 = load i32, i32* @maxusercount, align 4
  %call46 = call i32 @GrowBitfield(i8** @userbits, i32 %66, i32 8, i32 0)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.45
  %67 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %68 = load %struct.acluser*, %struct.acluser** %67, align 8
  %69 = bitcast %struct.acluser* %68 to i8*
  call void @free(i8* %69) #5
  %70 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %70, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %do.end.45
  store i32 0, i32* %j43, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.72, %if.end.49
  %71 = load i32, i32* %j43, align 4
  %cmp51 = icmp sle i32 %71, 187
  br i1 %cmp51, label %for.body.53, label %for.end.74

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.69, %for.body.53
  %72 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %72, 1
  br i1 %cmp55, label %for.body.57, label %for.end.71

for.body.57:                                      ; preds = %for.cond.54
  %73 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %73 to i64
  %74 = load i32, i32* %j43, align 4
  %idxprom59 = sext i32 %74 to i64
  %arrayidx60 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom59
  %userbits = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx60, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits, i32 0, i64 %idxprom58
  %75 = load i32, i32* @maxusercount, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %76 to i64
  %arrayidx63 = getelementptr inbounds [1 x i8], [1 x i8]* @default_c_bit, i32 0, i64 %idxprom62
  %77 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %77 to i32
  %call65 = call i32 @GrowBitfield(i8** %arrayidx61, i32 %75, i32 8, i32 %conv64)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.body.57
  %78 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %79 = load %struct.acluser*, %struct.acluser** %78, align 8
  %80 = bitcast %struct.acluser* %79 to i8*
  call void @free(i8* %80) #5
  %81 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %81, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %for.body.57
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %82 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %82, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.54

for.end.71:                                       ; preds = %for.cond.54
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %83 = load i32, i32* %j43, align 4
  %inc73 = add nsw i32 %83, 1
  store i32 %inc73, i32* %j43, align 4
  br label %for.cond.50

for.end.74:                                       ; preds = %for.cond.50
  %84 = load %struct.acluser*, %struct.acluser** @users, align 8
  store %struct.acluser* %84, %struct.acluser** %u, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.95, %for.end.74
  %85 = load %struct.acluser*, %struct.acluser** %u, align 8
  %86 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %87 = load %struct.acluser*, %struct.acluser** %86, align 8
  %cmp76 = icmp ne %struct.acluser* %85, %87
  br i1 %cmp76, label %for.body.78, label %for.end.96

for.body.78:                                      ; preds = %for.cond.75
  store i32 0, i32* %j43, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.92, %for.body.78
  %88 = load i32, i32* %j43, align 4
  %cmp80 = icmp slt i32 %88, 3
  br i1 %cmp80, label %for.body.82, label %for.end.94

for.body.82:                                      ; preds = %for.cond.79
  %89 = load i32, i32* %j43, align 4
  %idxprom83 = sext i32 %89 to i64
  %90 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_umask_w_bits = getelementptr inbounds %struct.acluser, %struct.acluser* %90, i32 0, i32 10
  %arrayidx84 = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits, i32 0, i64 %idxprom83
  %91 = load i32, i32* @maxusercount, align 4
  %92 = load i32, i32* %j43, align 4
  %idxprom85 = sext i32 %92 to i64
  %arrayidx86 = getelementptr inbounds [3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 %idxprom85
  %93 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %93 to i32
  %call88 = call i32 @GrowBitfield(i8** %arrayidx84, i32 %91, i32 8, i32 %conv87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.82
  %94 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %95 = load %struct.acluser*, %struct.acluser** %94, align 8
  %96 = bitcast %struct.acluser* %95 to i8*
  call void @free(i8* %96) #5
  %97 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %97, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %for.body.82
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %98 = load i32, i32* %j43, align 4
  %inc93 = add nsw i32 %98, 1
  store i32 %inc93, i32* %j43, align 4
  br label %for.cond.79

for.end.94:                                       ; preds = %for.cond.79
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %99 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_next = getelementptr inbounds %struct.acluser, %struct.acluser* %99, i32 0, i32 0
  %100 = load %struct.acluser*, %struct.acluser** %u_next, align 8
  store %struct.acluser* %100, %struct.acluser** %u, align 8
  br label %for.cond.75

for.end.96:                                       ; preds = %for.cond.75
  %101 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %101, %struct.win** %w, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.122, %for.end.96
  %102 = load %struct.win*, %struct.win** %w, align 8
  %tobool98 = icmp ne %struct.win* %102, null
  br i1 %tobool98, label %for.body.99, label %for.end.123

for.body.99:                                      ; preds = %for.cond.97
  store i32 0, i32* %j43, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.113, %for.body.99
  %103 = load i32, i32* %j43, align 4
  %cmp101 = icmp slt i32 %103, 3
  br i1 %cmp101, label %for.body.103, label %for.end.115

for.body.103:                                     ; preds = %for.cond.100
  %104 = load i32, i32* %j43, align 4
  %idxprom104 = sext i32 %104 to i64
  %105 = load %struct.win*, %struct.win** %w, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 31
  %arrayidx105 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i64 %idxprom104
  %106 = load i32, i32* @maxusercount, align 4
  %107 = load i32, i32* %j43, align 4
  %idxprom106 = sext i32 %107 to i64
  %arrayidx107 = getelementptr inbounds [3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 %idxprom106
  %108 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %108 to i32
  %call109 = call i32 @GrowBitfield(i8** %arrayidx105, i32 %106, i32 8, i32 %conv108)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.body.103
  %109 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %110 = load %struct.acluser*, %struct.acluser** %109, align 8
  %111 = bitcast %struct.acluser* %110 to i8*
  call void @free(i8* %111) #5
  %112 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %112, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.112:                                       ; preds = %for.body.103
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %113 = load i32, i32* %j43, align 4
  %inc114 = add nsw i32 %113, 1
  store i32 %inc114, i32* %j43, align 4
  br label %for.cond.100

for.end.115:                                      ; preds = %for.cond.100
  %114 = load %struct.win*, %struct.win** %w, align 8
  %w_mon_notify = getelementptr inbounds %struct.win, %struct.win* %114, i32 0, i32 33
  %115 = load i32, i32* @maxusercount, align 4
  %call116 = call i32 @GrowBitfield(i8** %w_mon_notify, i32 %115, i32 8, i32 0)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.115
  %116 = load %struct.win*, %struct.win** %w, align 8
  %w_lio_notify = getelementptr inbounds %struct.win, %struct.win* %116, i32 0, i32 32
  %117 = load i32, i32* @maxusercount, align 4
  %call118 = call i32 @GrowBitfield(i8** %w_lio_notify, i32 %117, i32 8, i32 0)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %lor.lhs.false, %for.end.115
  %118 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %119 = load %struct.acluser*, %struct.acluser** %118, align 8
  %120 = bitcast %struct.acluser* %119 to i8*
  call void @free(i8* %120) #5
  %121 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %121, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.121:                                       ; preds = %lor.lhs.false
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %122 = load %struct.win*, %struct.win** %w, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 0
  %123 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %123, %struct.win** %w, align 8
  br label %for.cond.97

for.end.123:                                      ; preds = %for.cond.97
  %124 = load i32, i32* @maxusercount, align 4
  %add = add nsw i32 %124, 8
  store i32 %add, i32* @maxusercount, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %do.end
  %125 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %126 = load %struct.acluser*, %struct.acluser** %125, align 8
  %u_id125 = getelementptr inbounds %struct.acluser, %struct.acluser* %126, i32 0, i32 9
  %127 = load i32, i32* %u_id125, align 4
  %and126 = and i32 %127, 7
  %shr127 = ashr i32 128, %and126
  %128 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %129 = load %struct.acluser*, %struct.acluser** %128, align 8
  %u_id128 = getelementptr inbounds %struct.acluser, %struct.acluser* %129, i32 0, i32 9
  %130 = load i32, i32* %u_id128, align 4
  %shr129 = ashr i32 %130, 3
  %idxprom130 = sext i32 %shr129 to i64
  %131 = load i8*, i8** @userbits, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %131, i64 %idxprom130
  %132 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %132 to i32
  %or = or i32 %conv132, %shr127
  %conv133 = trunc i32 %or to i8
  store i8 %conv133, i8* %arrayidx131, align 1
  %133 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %134 = load %struct.acluser*, %struct.acluser** %133, align 8
  %u_id134 = getelementptr inbounds %struct.acluser, %struct.acluser* %134, i32 0, i32 9
  %135 = load i32, i32* %u_id134, align 4
  %cmp135 = icmp eq i32 %135, 0
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.124
  %136 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %137 = load %struct.acluser*, %struct.acluser** %136, align 8
  %call138 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.124
  %138 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %139 = load %struct.acluser*, %struct.acluser** %138, align 8
  %u_name140 = getelementptr inbounds %struct.acluser, %struct.acluser* %139, i32 0, i32 1
  %arraydecay141 = getelementptr inbounds [257 x i8], [257 x i8]* %u_name140, i32 0, i32 0
  %call142 = call i32 @strcmp(i8* %arraydecay141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #4
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.150, label %if.then.144

if.then.144:                                      ; preds = %if.end.139
  %140 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %141 = load %struct.acluser*, %struct.acluser** %140, align 8
  %call145 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %142 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %143 = load %struct.acluser*, %struct.acluser** %142, align 8
  %call146 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %144 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %145 = load %struct.acluser*, %struct.acluser** %144, align 8
  %call147 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %146 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %147 = load %struct.acluser*, %struct.acluser** %146, align 8
  %call148 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %148 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %149 = load %struct.acluser*, %struct.acluser** %148, align 8
  %call149 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.144, %if.end.139
  store i32 0, i32* %j, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.178, %if.end.150
  %150 = load i32, i32* %j, align 4
  %cmp152 = icmp slt i32 %150, 3
  br i1 %cmp152, label %for.body.154, label %for.end.180

for.body.154:                                     ; preds = %for.cond.151
  %151 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %151 to i64
  %152 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %153 = load %struct.acluser*, %struct.acluser** %152, align 8
  %u_umask_w_bits156 = getelementptr inbounds %struct.acluser, %struct.acluser* %153, i32 0, i32 10
  %arrayidx157 = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits156, i32 0, i64 %idxprom155
  %154 = load i32, i32* @maxusercount, align 4
  %155 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %155 to i64
  %arrayidx159 = getelementptr inbounds [3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 %idxprom158
  %156 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %156 to i32
  %call161 = call i32 @GrowBitfield(i8** %arrayidx157, i32 0, i32 %154, i32 %conv160)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.body.154
  %157 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %158 = load %struct.acluser*, %struct.acluser** %157, align 8
  %159 = bitcast %struct.acluser* %158 to i8*
  call void @free(i8* %159) #5
  %160 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* null, %struct.acluser** %160, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %for.body.154
  %161 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %162 = load %struct.acluser*, %struct.acluser** %161, align 8
  %u_id165 = getelementptr inbounds %struct.acluser, %struct.acluser* %162, i32 0, i32 9
  %163 = load i32, i32* %u_id165, align 4
  %and166 = and i32 %163, 7
  %shr167 = ashr i32 128, %and166
  %164 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %165 = load %struct.acluser*, %struct.acluser** %164, align 8
  %u_id168 = getelementptr inbounds %struct.acluser, %struct.acluser* %165, i32 0, i32 9
  %166 = load i32, i32* %u_id168, align 4
  %shr169 = ashr i32 %166, 3
  %idxprom170 = sext i32 %shr169 to i64
  %167 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %167 to i64
  %168 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %169 = load %struct.acluser*, %struct.acluser** %168, align 8
  %u_umask_w_bits172 = getelementptr inbounds %struct.acluser, %struct.acluser* %169, i32 0, i32 10
  %arrayidx173 = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits172, i32 0, i64 %idxprom171
  %170 = load i8*, i8** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %170, i64 %idxprom170
  %171 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %171 to i32
  %or176 = or i32 %conv175, %shr167
  %conv177 = trunc i32 %or176 to i8
  store i8 %conv177, i8* %arrayidx174, align 1
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.164
  %172 = load i32, i32* %j, align 4
  %inc179 = add nsw i32 %172, 1
  store i32 %inc179, i32* %j, align 4
  br label %for.cond.151

for.end.180:                                      ; preds = %for.cond.151
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.180, %if.then.163, %if.then.120, %if.then.111, %if.then.90, %if.then.67, %if.then.48, %if.then.14, %if.end.6
  %173 = load i32, i32* %retval
  ret i32 %173
}

declare i8* @SaveStr(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @GrowBitfield(i8** %bfp, i32 %len, i32 %delta, i32 %defaultbit) #0 {
entry:
  %retval = alloca i32, align 4
  %bfp.addr = alloca i8**, align 8
  %len.addr = alloca i32, align 4
  %delta.addr = alloca i32, align 4
  %defaultbit.addr = alloca i32, align 4
  %n = alloca i8*, align 8
  %o = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8** %bfp, i8*** %bfp.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %delta, i32* %delta.addr, align 4
  store i32 %defaultbit, i32* %defaultbit.addr, align 4
  %0 = load i8**, i8*** %bfp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %o, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %delta.addr, align 4
  %add = add nsw i32 %2, %3
  %add1 = add nsw i32 %add, 1
  %shr = ashr i32 %add1, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, i8* null, i64 %idxprom
  %4 = ptrtoint i8* %arrayidx to i64
  %call = call noalias i8* @calloc(i64 1, i64 %4) #5
  store i8* %call, i8** %n, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i32, i32* %delta.addr, align 4
  %add2 = add nsw i32 %6, %7
  %cmp = icmp slt i32 %5, %add2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %and = and i32 %10, 7
  %shr4 = ashr i32 128, %and
  %11 = load i32, i32* %i, align 4
  %shr5 = ashr i32 %11, 3
  %idxprom6 = sext i32 %shr5 to i64
  %12 = load i8*, i8** %o, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %13 to i32
  %and8 = and i32 %shr4, %conv
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %len.addr, align 4
  %cmp10 = icmp sge i32 %14, %15
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %defaultbit.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true.12, %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %and15 = and i32 %17, 7
  %shr16 = ashr i32 128, %and15
  %18 = load i32, i32* %i, align 4
  %shr17 = ashr i32 %18, 3
  %idxprom18 = sext i32 %shr17 to i64
  %19 = load i8*, i8** %n, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  %or = or i32 %conv20, %shr16
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %land.lhs.true.12, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %len.addr, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  %23 = load i8*, i8** %o, align 8
  call void @free(i8* %23) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.end
  %24 = load i8*, i8** %n, align 8
  %25 = load i8**, i8*** %bfp.addr, align 8
  store i8* %24, i8** %25, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @AclSetPerm(%struct.acluser* %uu, %struct.acluser* %u, i8* %mode, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %uu.addr = alloca %struct.acluser*, align 8
  %u.addr = alloca %struct.acluser*, align 8
  %mode.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %w = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.acluser* %uu, %struct.acluser** %uu.addr, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 42, label %sw.bb
    i32 35, label %sw.bb.1
    i32 63, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %5 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %6 = load i8*, i8** %mode.addr, align 8
  %call = call i32 @AclSetPerm(%struct.acluser* %4, %struct.acluser* %5, i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %while.body
  %7 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %tobool2 = icmp ne %struct.acluser* %7, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %9 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %10 = load i8*, i8** %mode.addr, align 8
  %call3 = call i32 @AclSetPermWin(%struct.acluser* %8, %struct.acluser* %9, i8* %10, %struct.win* inttoptr (i64 1 to %struct.win*))
  br label %if.end

if.else:                                          ; preds = %sw.bb.1
  %11 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %11, %struct.win** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load %struct.win*, %struct.win** %w, align 8
  %tobool4 = icmp ne %struct.win* %12, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %14 = load i8*, i8** %mode.addr, align 8
  %15 = load %struct.win*, %struct.win** %w, align 8
  %call5 = call i32 @AclSetPermWin(%struct.acluser* null, %struct.acluser* %13, i8* %14, %struct.win* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.win*, %struct.win** %w, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 0
  %17 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %17, %struct.win** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %18 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %19 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %tobool7 = icmp ne %struct.acluser* %19, null
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %sw.bb.6
  %20 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %21 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %22 = load i8*, i8** %mode.addr, align 8
  %call9 = call i32 @AclSetPermWin(%struct.acluser* %20, %struct.acluser* %21, i8* %22, %struct.win* null)
  br label %if.end.17

if.else.10:                                       ; preds = %sw.bb.6
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.15, %if.else.10
  %23 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %23, 187
  br i1 %cmp, label %for.body.13, label %for.end.16

for.body.13:                                      ; preds = %for.cond.11
  %24 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %25 = load i8*, i8** %mode.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom
  %call14 = call i32 @AclSetPermCmd(%struct.acluser* %24, i8* %25, %struct.comm* %arrayidx)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.13
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end.16:                                       ; preds = %for.cond.11
  br label %if.end.17

if.end.17:                                        ; preds = %for.end.16, %if.then.8
  %28 = load i8*, i8** %s.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr18, i8** %s.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %29 = load i8*, i8** %s.addr, align 8
  store i8* %29, i8** %p, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.33, %sw.default
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv20 = sext i8 %31 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.19
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv22 = sext i8 %33 to i32
  %cmp23 = icmp ne i32 %conv22, 32
  br i1 %cmp23, label %land.lhs.true.25, label %land.end

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv26 = sext i8 %35 to i32
  %cmp27 = icmp ne i32 %conv26, 9
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.25
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv29 = sext i8 %37 to i32
  %cmp30 = icmp ne i32 %conv29, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.25, %land.lhs.true, %for.cond.19
  %38 = phi i1 [ false, %land.lhs.true.25 ], [ false, %land.lhs.true ], [ false, %for.cond.19 ], [ %cmp30, %land.rhs ]
  br i1 %38, label %for.body.32, label %for.end.35

for.body.32:                                      ; preds = %land.end
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.32
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  br label %for.cond.19

for.end.35:                                       ; preds = %land.end
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %ch, align 1
  %tobool36 = icmp ne i8 %41, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %for.end.35
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8
  store i8 0, i8* %42, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %for.end.35
  %43 = load i8*, i8** %s.addr, align 8
  %call40 = call i32 @FindCommnr(i8* %43)
  store i32 %call40, i32* %i, align 4
  %cmp41 = icmp ne i32 %call40, -1
  br i1 %cmp41, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.end.39
  %44 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %45 = load i8*, i8** %mode.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %46 to i64
  %arrayidx45 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom44
  %call46 = call i32 @AclSetPermCmd(%struct.acluser* %44, i8* %45, %struct.comm* %arrayidx45)
  br label %if.end.61

if.else.47:                                       ; preds = %if.end.39
  %47 = load i8*, i8** %s.addr, align 8
  %call48 = call i32 @WindowByNoN(i8* %47)
  store i32 %call48, i32* %i, align 4
  %cmp49 = icmp sge i32 %call48, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.59

land.lhs.true.51:                                 ; preds = %if.else.47
  %48 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx53 = getelementptr inbounds %struct.win*, %struct.win** %49, i64 %idxprom52
  %50 = load %struct.win*, %struct.win** %arrayidx53, align 8
  %tobool54 = icmp ne %struct.win* %50, null
  br i1 %tobool54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %land.lhs.true.51
  %51 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %52 = load i8*, i8** %mode.addr, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx57 = getelementptr inbounds %struct.win*, %struct.win** %54, i64 %idxprom56
  %55 = load %struct.win*, %struct.win** %arrayidx57, align 8
  %call58 = call i32 @AclSetPermWin(%struct.acluser* null, %struct.acluser* %51, i8* %52, %struct.win* %55)
  br label %if.end.60

if.else.59:                                       ; preds = %land.lhs.true.51, %if.else.47
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.43
  %56 = load i8, i8* %ch, align 1
  %tobool62 = icmp ne i8 %56, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %57 = load i8, i8* %ch, align 1
  %58 = load i8*, i8** %p, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8 %57, i8* %arrayidx64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  %59 = load i8*, i8** %p, align 8
  store i8* %59, i8** %s.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.65, %if.end.17, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.59, %sw.bb
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @UserDel(i8* %name, %struct.acluser** %up) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %up.addr = alloca %struct.acluser**, align 8
  %u = alloca %struct.acluser*, align 8
  %i = alloca i32, align 4
  %old = alloca %struct.display*, align 8
  %next = alloca %struct.display*, align 8
  %g = alloca %struct.aclusergroup**, align 8
  %next17 = alloca %struct.aclusergroup*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.acluser** %up, %struct.acluser*** %up.addr, align 8
  %0 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %tobool = icmp ne %struct.acluser** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %1)
  store %struct.acluser** %call, %struct.acluser*** %up.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %3 = load %struct.acluser*, %struct.acluser** %2, align 8
  store %struct.acluser* %3, %struct.acluser** %u, align 8
  %tobool1 = icmp ne %struct.acluser* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %4, %struct.display** %old, align 8
  %5 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %5, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load %struct.display*, %struct.display** @display, align 8
  %tobool4 = icmp ne %struct.display* %6, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 0
  %8 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %8, %struct.display** %next, align 8
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 1
  %10 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %11 = load %struct.acluser*, %struct.acluser** %u, align 8
  %cmp = icmp ne %struct.acluser* %10, %11
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end.6:                                         ; preds = %for.body
  %12 = load %struct.display*, %struct.display** @display, align 8
  %13 = load %struct.display*, %struct.display** %old, align 8
  %cmp7 = icmp eq %struct.display* %12, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store %struct.display* null, %struct.display** %old, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  call void @Detach(i32 2)
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then.5
  %14 = load %struct.display*, %struct.display** %next, align 8
  store %struct.display* %14, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.display*, %struct.display** %old, align 8
  store %struct.display* %15, %struct.display** @display, align 8
  %16 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_next = getelementptr inbounds %struct.acluser, %struct.acluser* %16, i32 0, i32 0
  %17 = load %struct.acluser*, %struct.acluser** %u_next, align 8
  %18 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* %17, %struct.acluser** %18, align 8
  store %struct.acluser** @users, %struct.acluser*** %up.addr, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.end
  %19 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %20 = load %struct.acluser*, %struct.acluser** %19, align 8
  %tobool11 = icmp ne %struct.acluser* %20, null
  br i1 %tobool11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %21 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %22 = load %struct.acluser*, %struct.acluser** %21, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %22, i32 0, i32 11
  store %struct.aclusergroup** %u_group, %struct.aclusergroup*** %g, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %for.body.12
  %23 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %24 = load %struct.aclusergroup*, %struct.aclusergroup** %23, align 8
  %tobool13 = icmp ne %struct.aclusergroup* %24, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %26 = load %struct.aclusergroup*, %struct.aclusergroup** %25, align 8
  %u14 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %26, i32 0, i32 0
  %27 = load %struct.acluser*, %struct.acluser** %u14, align 8
  %28 = load %struct.acluser*, %struct.acluser** %u, align 8
  %cmp15 = icmp eq %struct.acluser* %27, %28
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body
  %29 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %30 = load %struct.aclusergroup*, %struct.aclusergroup** %29, align 8
  %next18 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %30, i32 0, i32 1
  %31 = load %struct.aclusergroup*, %struct.aclusergroup** %next18, align 8
  store %struct.aclusergroup* %31, %struct.aclusergroup** %next17, align 8
  %32 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %33 = load %struct.aclusergroup*, %struct.aclusergroup** %32, align 8
  %34 = bitcast %struct.aclusergroup* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load %struct.aclusergroup*, %struct.aclusergroup** %next17, align 8
  %36 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  store %struct.aclusergroup* %35, %struct.aclusergroup** %36, align 8
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %37 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %38 = load %struct.aclusergroup*, %struct.aclusergroup** %37, align 8
  %next19 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %38, i32 0, i32 1
  store %struct.aclusergroup** %next19, %struct.aclusergroup*** %g, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.21

for.inc.21:                                       ; preds = %while.end
  %39 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %40 = load %struct.acluser*, %struct.acluser** %39, align 8
  %u_next22 = getelementptr inbounds %struct.acluser, %struct.acluser* %40, i32 0, i32 0
  store %struct.acluser** %u_next22, %struct.acluser*** %up.addr, align 8
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %41 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %41, i32 0, i32 9
  %42 = load i32, i32* %u_id, align 4
  %and = and i32 %42, 7
  %shr = ashr i32 128, %and
  %neg = xor i32 %shr, -1
  %43 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_id24 = getelementptr inbounds %struct.acluser, %struct.acluser* %43, i32 0, i32 9
  %44 = load i32, i32* %u_id24, align 4
  %shr25 = ashr i32 %44, 3
  %idxprom = sext i32 %shr25 to i64
  %45 = load i8*, i8** @userbits, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 %idxprom
  %46 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %46 to i32
  %and26 = and i32 %conv, %neg
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, i8* %arrayidx, align 1
  %47 = load %struct.acluser*, %struct.acluser** %u, align 8
  %48 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 2), align 1
  %conv28 = sext i8 %48 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  %cond = select i1 %tobool29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)
  %call30 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %47, i8* %cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %49 = load %struct.acluser*, %struct.acluser** %u, align 8
  %50 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 1), align 1
  %conv31 = sext i8 %50 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)
  %call34 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %49, i8* %cond33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %51 = load %struct.acluser*, %struct.acluser** %u, align 8
  %52 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 0), align 1
  %conv35 = sext i8 %52 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  %cond37 = select i1 %tobool36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %call38 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %51, i8* %cond37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %53 = load %struct.acluser*, %struct.acluser** %u, align 8
  %54 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @default_c_bit, i32 0, i64 0), align 1
  %conv39 = sext i8 %54 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  %cond41 = select i1 %tobool40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)
  %call42 = call i32 @AclSetPerm(%struct.acluser* null, %struct.acluser* %53, i8* %cond41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.49, %for.end.23
  %55 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %55, 3
  br i1 %cmp44, label %for.body.46, label %for.end.50

for.body.46:                                      ; preds = %for.cond.43
  %56 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %56 to i64
  %57 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_umask_w_bits = getelementptr inbounds %struct.acluser, %struct.acluser* %57, i32 0, i32 10
  %arrayidx48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits, i32 0, i64 %idxprom47
  %58 = load i8*, i8** %arrayidx48, align 8
  call void @free(i8* %58) #5
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.46
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.43

for.end.50:                                       ; preds = %for.cond.43
  br label %do.body

do.body:                                          ; preds = %for.end.50
  br label %do.end

do.end:                                           ; preds = %do.body
  %60 = load %struct.acluser*, %struct.acluser** %u, align 8
  %call51 = call i32 @UserFreeCopyBuffer(%struct.acluser* %60)
  %61 = load %struct.acluser*, %struct.acluser** %u, align 8
  %62 = bitcast %struct.acluser* %61 to i8*
  call void @free(i8* %62) #5
  %63 = load %struct.acluser*, %struct.acluser** @users, align 8
  %tobool52 = icmp ne %struct.acluser* %63, null
  br i1 %tobool52, label %if.end.56, label %if.then.53

if.then.53:                                       ; preds = %do.end
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.54
  call void @Finit(i32 0)
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.2
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare void @Detach(i32) #2

; Function Attrs: nounwind uwtable
define i32 @UserFreeCopyBuffer(%struct.acluser* %u) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.acluser*, align 8
  %w = alloca %struct.win*, align 8
  %pa = alloca %struct.paster*, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  %0 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop = getelementptr inbounds %struct.acluser, %struct.acluser* %0, i32 0, i32 8
  %buf = getelementptr inbounds %struct.plop, %struct.plop* %u_plop, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %2, %struct.win** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.win*, %struct.win** %w, align 8
  %tobool1 = icmp ne %struct.win* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.win*, %struct.win** %w, align 8
  %w_paster = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 80
  store %struct.paster* %w_paster, %struct.paster** %pa, align 8
  %5 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pasteptr = getelementptr inbounds %struct.paster, %struct.paster* %5, i32 0, i32 1
  %6 = load i8*, i8** %pa_pasteptr, align 8
  %7 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop2 = getelementptr inbounds %struct.acluser, %struct.acluser* %7, i32 0, i32 8
  %buf3 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop2, i32 0, i32 0
  %8 = load i8*, i8** %buf3, align 8
  %cmp = icmp uge i8* %6, %8
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pasteptr4 = getelementptr inbounds %struct.paster, %struct.paster* %9, i32 0, i32 1
  %10 = load i8*, i8** %pa_pasteptr4, align 8
  %11 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop5 = getelementptr inbounds %struct.acluser, %struct.acluser* %11, i32 0, i32 8
  %buf6 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop5, i32 0, i32 0
  %12 = load i8*, i8** %buf6, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop7 = getelementptr inbounds %struct.acluser, %struct.acluser* %13, i32 0, i32 8
  %len = getelementptr inbounds %struct.plop, %struct.plop* %u_plop7, i32 0, i32 1
  %14 = load i32, i32* %len, align 4
  %conv = sext i32 %14 to i64
  %cmp8 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct.paster*, %struct.paster** %pa, align 8
  call void @FreePaster(%struct.paster* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load %struct.win*, %struct.win** %w, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 0
  %17 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %17, %struct.win** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop12 = getelementptr inbounds %struct.acluser, %struct.acluser* %18, i32 0, i32 8
  %buf13 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop12, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  call void @free(i8* %19) #5
  %20 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop14 = getelementptr inbounds %struct.acluser, %struct.acluser* %20, i32 0, i32 8
  %len15 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop14, i32 0, i32 1
  store i32 0, i32* %len15, align 4
  %21 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_plop16 = getelementptr inbounds %struct.acluser, %struct.acluser* %21, i32 0, i32 8
  %buf17 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop16, i32 0, i32 0
  store i8* null, i8** %buf17, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @Finit(i32) #2

declare void @FreePaster(%struct.paster*) #2

; Function Attrs: nounwind uwtable
define i32 @AclLinkUser(i8* %from, i8* %to) #0 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %u1 = alloca %struct.acluser**, align 8
  %u2 = alloca %struct.acluser**, align 8
  %g = alloca %struct.aclusergroup**, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %0)
  store %struct.acluser** %call, %struct.acluser*** %u1, align 8
  %1 = load %struct.acluser*, %struct.acluser** %call, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load %struct.acluser**, %struct.acluser*** %u1, align 8
  %call1 = call i32 @UserAdd(i8* %2, i8* null, %struct.acluser** %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %to.addr, align 8
  %call3 = call %struct.acluser** @FindUserPtr(i8* %4)
  store %struct.acluser** %call3, %struct.acluser*** %u2, align 8
  %5 = load %struct.acluser*, %struct.acluser** %call3, align 8
  %tobool4 = icmp ne %struct.acluser* %5, null
  br i1 %tobool4, label %if.end.9, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %if.end
  %6 = load i8*, i8** %to.addr, align 8
  %7 = load %struct.acluser**, %struct.acluser*** %u2, align 8
  %call6 = call i32 @UserAdd(i8* %6, i8* null, %struct.acluser** %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.5, %if.end
  %8 = load %struct.acluser**, %struct.acluser*** %u2, align 8
  %9 = load %struct.acluser*, %struct.acluser** %8, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %9, i32 0, i32 11
  %10 = load %struct.acluser**, %struct.acluser*** %u1, align 8
  %11 = load %struct.acluser*, %struct.acluser** %10, align 8
  %call10 = call %struct.aclusergroup** @FindGroupPtr(%struct.aclusergroup** %u_group, %struct.acluser* %11, i32 1)
  %12 = load %struct.aclusergroup*, %struct.aclusergroup** %call10, align 8
  %tobool11 = icmp ne %struct.aclusergroup* %12, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %13 = load %struct.acluser**, %struct.acluser*** %u1, align 8
  %14 = load %struct.acluser*, %struct.acluser** %13, align 8
  %u_group14 = getelementptr inbounds %struct.acluser, %struct.acluser* %14, i32 0, i32 11
  %15 = load %struct.acluser**, %struct.acluser*** %u2, align 8
  %16 = load %struct.acluser*, %struct.acluser** %15, align 8
  %call15 = call %struct.aclusergroup** @FindGroupPtr(%struct.aclusergroup** %u_group14, %struct.acluser* %16, i32 0)
  store %struct.aclusergroup** %call15, %struct.aclusergroup*** %g, align 8
  %17 = load %struct.aclusergroup*, %struct.aclusergroup** %call15, align 8
  %tobool16 = icmp ne %struct.aclusergroup* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 2, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %call19 = call noalias i8* @malloc(i64 16) #5
  %18 = bitcast i8* %call19 to %struct.aclusergroup*
  %19 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  store %struct.aclusergroup* %18, %struct.aclusergroup** %19, align 8
  %tobool20 = icmp ne %struct.aclusergroup* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %20 = load %struct.acluser**, %struct.acluser*** %u2, align 8
  %21 = load %struct.acluser*, %struct.acluser** %20, align 8
  %22 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %23 = load %struct.aclusergroup*, %struct.aclusergroup** %22, align 8
  %u = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %23, i32 0, i32 0
  store %struct.acluser* %21, %struct.acluser** %u, align 8
  %24 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %25 = load %struct.aclusergroup*, %struct.aclusergroup** %24, align 8
  %next = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %25, i32 0, i32 1
  store %struct.aclusergroup* null, %struct.aclusergroup** %next, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.17, %if.then.12, %if.then.8, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal %struct.aclusergroup** @FindGroupPtr(%struct.aclusergroup** %gp, %struct.acluser* %u, i32 %recursive) #0 {
entry:
  %retval = alloca %struct.aclusergroup**, align 8
  %gp.addr = alloca %struct.aclusergroup**, align 8
  %u.addr = alloca %struct.acluser*, align 8
  %recursive.addr = alloca i32, align 4
  %g = alloca %struct.aclusergroup**, align 8
  store %struct.aclusergroup** %gp, %struct.aclusergroup*** %gp.addr, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i32 %recursive, i32* %recursive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %do.end
  %0 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  %1 = load %struct.aclusergroup*, %struct.aclusergroup** %0, align 8
  %tobool = icmp ne %struct.aclusergroup* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  %3 = load %struct.aclusergroup*, %struct.aclusergroup** %2, align 8
  %u1 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %3, i32 0, i32 0
  %4 = load %struct.acluser*, %struct.acluser** %u1, align 8
  %5 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %cmp = icmp eq %struct.acluser* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  store %struct.aclusergroup** %6, %struct.aclusergroup*** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load i32, i32* %recursive.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  %9 = load %struct.aclusergroup*, %struct.aclusergroup** %8, align 8
  %u3 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %9, i32 0, i32 0
  %10 = load %struct.acluser*, %struct.acluser** %u3, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %10, i32 0, i32 11
  %11 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %12 = load i32, i32* %recursive.addr, align 4
  %add = add nsw i32 %12, 1
  %call = call %struct.aclusergroup** @FindGroupPtr(%struct.aclusergroup** %u_group, %struct.acluser* %11, i32 %add)
  store %struct.aclusergroup** %call, %struct.aclusergroup*** %g, align 8
  %13 = load %struct.aclusergroup*, %struct.aclusergroup** %call, align 8
  %tobool4 = icmp ne %struct.aclusergroup* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %14 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  store %struct.aclusergroup** %14, %struct.aclusergroup*** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %15 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  %16 = load %struct.aclusergroup*, %struct.aclusergroup** %15, align 8
  %next = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %16, i32 0, i32 1
  store %struct.aclusergroup** %next, %struct.aclusergroup*** %gp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.aclusergroup**, %struct.aclusergroup*** %gp.addr, align 8
  store %struct.aclusergroup** %17, %struct.aclusergroup*** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %18 = load %struct.aclusergroup**, %struct.aclusergroup*** %retval
  ret %struct.aclusergroup** %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @DoSu(%struct.acluser** %up, i8* %name, i8* %pw1, i8* %pw2) #0 {
entry:
  %retval = alloca i8*, align 8
  %up.addr = alloca %struct.acluser**, align 8
  %name.addr = alloca i8*, align 8
  %pw1.addr = alloca i8*, align 8
  %pw2.addr = alloca i8*, align 8
  %u = alloca %struct.acluser*, align 8
  %sorry = alloca i32, align 4
  %pp = alloca %struct.passwd*, align 8
  %ss = alloca %struct.spwd*, align 8
  %t = alloca i32, align 4
  %c = alloca i32, align 4
  %pass = alloca i8*, align 8
  store %struct.acluser** %up, %struct.acluser*** %up.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %pw1, i8** %pw1.addr, align 8
  store i8* %pw2, i8** %pw2.addr, align 8
  store i32 0, i32* %sorry, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %0)
  %1 = load %struct.acluser*, %struct.acluser** %call, align 8
  store %struct.acluser* %1, %struct.acluser** %u, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sorry, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %sorry, align 4
  br label %if.end.100

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8** %pass, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.passwd* @getpwnam(i8* %3)
  store %struct.passwd* %call1, %struct.passwd** %pp, align 8
  %tobool2 = icmp ne %struct.passwd* %call1, null
  br i1 %tobool2, label %if.else.13, label %if.then.3

if.then.3:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %pw1.addr, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %land.lhs.true, label %if.then.9

land.lhs.true:                                    ; preds = %do.end
  %5 = load i8*, i8** %pw1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.then.9

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %pw1.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv7, -1
  br i1 %cmp, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %do.end
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %9 = load i32, i32* %sorry, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* %sorry, align 4
  br label %if.end

if.end:                                           ; preds = %do.end.11, %land.lhs.true.6
  br label %if.end.14

if.else.13:                                       ; preds = %if.else
  %10 = load %struct.passwd*, %struct.passwd** %pp, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 1
  %11 = load i8*, i8** %pw_passwd, align 8
  store i8* %11, i8** %pass, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %12 = load i32, i32* %t, align 4
  %cmp15 = icmp slt i32 %12, 13
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %t, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %pass, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %15 to i32
  store i32 %conv17, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %16, 46
  br i1 %cmp18, label %if.end.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %17, 47
  br i1 %cmp20, label %if.end.41, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %c, align 4
  %cmp23 = icmp sge i32 %18, 48
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.28

land.lhs.true.25:                                 ; preds = %lor.lhs.false.22
  %19 = load i32, i32* %c, align 4
  %cmp26 = icmp sle i32 %19, 57
  br i1 %cmp26, label %if.end.41, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %land.lhs.true.25, %lor.lhs.false.22
  %20 = load i32, i32* %c, align 4
  %cmp29 = icmp sge i32 %20, 97
  br i1 %cmp29, label %land.lhs.true.31, label %lor.lhs.false.34

land.lhs.true.31:                                 ; preds = %lor.lhs.false.28
  %21 = load i32, i32* %c, align 4
  %cmp32 = icmp sle i32 %21, 122
  br i1 %cmp32, label %if.end.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.31, %lor.lhs.false.28
  %22 = load i32, i32* %c, align 4
  %cmp35 = icmp sge i32 %22, 65
  br i1 %cmp35, label %land.lhs.true.37, label %if.then.40

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %23 = load i32, i32* %c, align 4
  %cmp38 = icmp sle i32 %23, 90
  br i1 %cmp38, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.37, %lor.lhs.false.34
  br label %for.end

if.end.41:                                        ; preds = %land.lhs.true.37, %land.lhs.true.31, %land.lhs.true.25, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %24 = load i32, i32* %t, align 4
  %inc42 = add nsw i32 %24, 1
  store i32 %inc42, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.40, %for.cond
  %25 = load i32, i32* %t, align 4
  %cmp43 = icmp slt i32 %25, 13
  br i1 %cmp43, label %if.then.45, label %if.end.54

if.then.45:                                       ; preds = %for.end
  %26 = load i8*, i8** %name.addr, align 8
  %call46 = call %struct.spwd* @getspnam(i8* %26)
  store %struct.spwd* %call46, %struct.spwd** %ss, align 8
  %tobool47 = icmp ne %struct.spwd* %call46, null
  br i1 %tobool47, label %if.else.52, label %if.then.48

if.then.48:                                       ; preds = %if.then.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  %27 = load i32, i32* %sorry, align 4
  %inc51 = add nsw i32 %27, 1
  store i32 %inc51, i32* %sorry, align 4
  br label %if.end.53

if.else.52:                                       ; preds = %if.then.45
  %28 = load %struct.spwd*, %struct.spwd** %ss, align 8
  %sp_pwdp = getelementptr inbounds %struct.spwd, %struct.spwd* %28, i32 0, i32 1
  %29 = load i8*, i8** %sp_pwdp, align 8
  store i8* %29, i8** %pass, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %do.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end
  %30 = load i8*, i8** %pw2.addr, align 8
  %tobool55 = icmp ne i8* %30, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.71

land.lhs.true.56:                                 ; preds = %if.end.54
  %31 = load i8*, i8** %pw2.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv57 = sext i8 %32 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.71

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %33 = load i8*, i8** %pw2.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv60 = sext i8 %34 to i32
  %cmp61 = icmp ne i32 %conv60, -1
  br i1 %cmp61, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %land.lhs.true.59
  %35 = load i8*, i8** %pw2.addr, align 8
  %36 = load i8*, i8** %pass, align 8
  %call64 = call i32 @PasswordMatches(i8* %35, i8* %36)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.70, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.body.67
  %37 = load i32, i32* %sorry, align 4
  %inc69 = add nsw i32 %37, 1
  store i32 %inc69, i32* %sorry, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.68, %if.then.63
  br label %if.end.76

if.else.71:                                       ; preds = %land.lhs.true.59, %land.lhs.true.56, %if.end.54
  %38 = load i8*, i8** %pass, align 8
  %39 = load i8, i8* %38, align 1
  %tobool72 = icmp ne i8 %39, 0
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.else.71
  %40 = load i32, i32* %sorry, align 4
  %inc74 = add nsw i32 %40, 1
  store i32 %inc74, i32* %sorry, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.else.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.70
  %41 = load i8*, i8** %pw1.addr, align 8
  %tobool77 = icmp ne i8* %41, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.else.93

land.lhs.true.78:                                 ; preds = %if.end.76
  %42 = load i8*, i8** %pw1.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv79 = sext i8 %43 to i32
  %tobool80 = icmp ne i32 %conv79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.93

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %44 = load i8*, i8** %pw1.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv82 = sext i8 %45 to i32
  %cmp83 = icmp ne i32 %conv82, -1
  br i1 %cmp83, label %if.then.85, label %if.else.93

if.then.85:                                       ; preds = %land.lhs.true.81
  %46 = load i8*, i8** %pw1.addr, align 8
  %47 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_password = getelementptr inbounds %struct.acluser, %struct.acluser* %47, i32 0, i32 2
  %48 = load i8*, i8** %u_password, align 8
  %call86 = call i32 @PasswordMatches(i8* %46, i8* %48)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.92, label %if.then.88

if.then.88:                                       ; preds = %if.then.85
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.body.89
  %49 = load i32, i32* %sorry, align 4
  %inc91 = add nsw i32 %49, 1
  store i32 %inc91, i32* %sorry, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.90, %if.then.85
  br label %if.end.99

if.else.93:                                       ; preds = %land.lhs.true.81, %land.lhs.true.78, %if.end.76
  %50 = load %struct.acluser*, %struct.acluser** %u, align 8
  %u_password94 = getelementptr inbounds %struct.acluser, %struct.acluser* %50, i32 0, i32 2
  %51 = load i8*, i8** %u_password94, align 8
  %52 = load i8, i8* %51, align 1
  %tobool95 = icmp ne i8 %52, 0
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.else.93
  %53 = load i32, i32* %sorry, align 4
  %inc97 = add nsw i32 %53, 1
  store i32 %inc97, i32* %sorry, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.else.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.92
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then
  br label %do.body.101

do.body.101:                                      ; preds = %if.end.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.body.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.body.103
  call void @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 32)
  %54 = load i8*, i8** %name.addr, align 8
  %55 = load i32, i32* %sorry, align 4
  %tobool105 = icmp ne i32 %55, 0
  %cond = select i1 %tobool105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)
  %56 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  %57 = load %struct.acluser*, %struct.acluser** %56, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %57, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i8* %54, i8* %cond, i8* %arraydecay)
  call void @closelog()
  %58 = load i32, i32* %sorry, align 4
  %tobool106 = icmp ne i32 %58, 0
  br i1 %tobool106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.end.104
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

if.else.108:                                      ; preds = %do.end.104
  %59 = load %struct.acluser*, %struct.acluser** %u, align 8
  %60 = load %struct.acluser**, %struct.acluser*** %up.addr, align 8
  store %struct.acluser* %59, %struct.acluser** %60, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.109, %if.then.107
  %61 = load i8*, i8** %retval
  ret i8* %61
}

declare %struct.passwd* @getpwnam(i8*) #2

declare %struct.spwd* @getspnam(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @PasswordMatches(i8* %pw, i8* %password) #0 {
entry:
  %retval = alloca i32, align 4
  %pw.addr = alloca i8*, align 8
  %password.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store i8* %pw, i8** %pw.addr, align 8
  store i8* %password, i8** %password.addr, align 8
  %0 = load i8*, i8** %password.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %pw.addr, align 8
  %3 = load i8*, i8** %password.addr, align 8
  %call = call i8* @crypt(i8* %2, i8* %3) #5
  store i8* %call, i8** %buf, align 8
  %4 = load i8*, i8** %buf, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load i8*, i8** %buf, align 8
  %6 = load i8*, i8** %password.addr, align 8
  %call2 = call i32 @strcmp(i8* %5, i8* %6) #4
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @openlog(i8*, i32, i32) #2

declare void @syslog(i32, i8*, ...) #2

declare void @closelog() #2

; Function Attrs: nounwind uwtable
define i32 @NewWindowAcl(%struct.win* %w, %struct.acluser* %u) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.win*, align 8
  %u.addr = alloca %struct.acluser*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.win* %w, %struct.win** %w.addr, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_mon_notify = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 33
  %1 = load i32, i32* @maxusercount, align 4
  %call = call i32 @GrowBitfield(i8** %w_mon_notify, i32 0, i32 %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_lio_notify = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 32
  %3 = load i32, i32* @maxusercount, align 4
  %call1 = call i32 @GrowBitfield(i8** %w_lio_notify, i32 0, i32 %3, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 31
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i64 %idxprom
  %7 = load i32, i32* @maxusercount, align 4
  %call3 = call i32 @GrowBitfield(i8** %arrayidx, i32 0, i32 %7, i32 0)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %8 = load i32, i32* %j, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %j, align 4
  %cmp6 = icmp sge i32 %dec, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_userbits8 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 31
  %arrayidx9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits8, i32 0, i64 %idxprom7
  %11 = load i8*, i8** %arrayidx9, align 8
  call void @free(i8* %11) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_mon_notify10 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 33
  %13 = load i8*, i8** %w_mon_notify10, align 8
  call void @free(i8* %13) #5
  %14 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_lio_notify11 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 32
  %15 = load i8*, i8** %w_lio_notify11, align 8
  call void @free(i8* %15) #5
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.12
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @maxusercount, align 4
  %cmp14 = icmp slt i32 %16, %17
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %18 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %tobool16 = icmp ne %struct.acluser* %18, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %19 = load i32, i32* %i, align 4
  %and = and i32 %19, 7
  %shr = ashr i32 128, %and
  %20 = load i32, i32* %i, align 4
  %shr17 = ashr i32 %20, 3
  %idxprom18 = sext i32 %shr17 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_umask_w_bits = getelementptr inbounds %struct.acluser, %struct.acluser* %22, i32 0, i32 10
  %arrayidx20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits, i32 0, i64 %idxprom19
  %23 = load i8*, i8** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 %idxprom18
  %24 = load i8, i8* %arrayidx21, align 1
  %conv = zext i8 %24 to i32
  %and22 = and i32 %shr, %conv
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.28, label %if.end.39

cond.false:                                       ; preds = %for.body.15
  %25 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 %idxprom24
  %26 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %26 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %cond.false, %cond.true
  %27 = load i32, i32* %i, align 4
  %and29 = and i32 %27, 7
  %shr30 = ashr i32 128, %and29
  %28 = load i32, i32* %i, align 4
  %shr31 = ashr i32 %28, 3
  %idxprom32 = sext i32 %shr31 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_userbits34 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 31
  %arrayidx35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits34, i32 0, i64 %idxprom33
  %31 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %idxprom32
  %32 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %32 to i32
  %or = or i32 %conv37, %shr30
  %conv38 = trunc i32 %or to i8
  store i8 %conv38, i8* %arrayidx36, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.28, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.42, %while.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define void @FreeWindowAcl(%struct.win* %w) #0 {
entry:
  %w.addr = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  store %struct.win* %w, %struct.win** %w.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 31
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %3) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_mon_notify = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 33
  %6 = load i8*, i8** %w_mon_notify, align 8
  call void @free(i8* %6) #5
  %7 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_lio_notify = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 32
  %8 = load i8*, i8** %w_lio_notify, align 8
  call void @free(i8* %8) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @AclSetPermWin(%struct.acluser* %uu, %struct.acluser* %u, i8* %mode, %struct.win* %win) #0 {
entry:
  %retval = alloca i32, align 4
  %uu.addr = alloca %struct.acluser*, align 8
  %u.addr = alloca %struct.acluser*, align 8
  %mode.addr = alloca i8*, align 8
  %win.addr = alloca %struct.win*, align 8
  %neg = alloca i32, align 4
  %bit = alloca i32, align 4
  %bits = alloca i32, align 4
  %bitarray = alloca i8**, align 8
  %m = alloca i8*, align 8
  store %struct.acluser* %uu, %struct.acluser** %uu.addr, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.win* %win, %struct.win** %win.addr, align 8
  store i32 0, i32* %neg, align 4
  %0 = load i8*, i8** %mode.addr, align 8
  store i8* %0, i8** %m, align 8
  %1 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %u_umask_w_bits = getelementptr inbounds %struct.acluser, %struct.acluser* %2, i32 0, i32 10
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %u_umask_w_bits, i32 0, i32 0
  store i8** %arraydecay, i8*** %bitarray, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %3 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 31
  %arraydecay3 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i32 0
  store i8** %arraydecay3, i8*** %bitarray, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.2
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  br label %if.end

if.end:                                           ; preds = %do.end.5, %do.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %sw.bb.7, %sw.bb, %if.end
  %4 = load i8*, i8** %m, align 8
  %5 = load i8, i8* %4, align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb.7
    i32 114, label %sw.bb.8
    i32 119, label %sw.bb.9
    i32 120, label %sw.bb.10
    i32 97, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* %neg, align 4
  br label %while.cond

sw.bb.7:                                          ; preds = %while.body
  store i32 0, i32* %neg, align 4
  br label %while.cond

sw.bb.8:                                          ; preds = %while.body
  store i32 4, i32* %bits, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i32 2, i32* %bits, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 1, i32* %bits, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  store i32 7, i32* %bits, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %8 = load i32, i32* %bit, align 4
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %bits, align 4
  %10 = load i32, i32* %bit, align 4
  %shl = shl i32 1, %10
  %and = and i32 %9, %shl
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.body
  br label %for.inc

if.end.15:                                        ; preds = %for.body
  %11 = load i32, i32* %neg, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.end.15
  %12 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %12, i32 0, i32 9
  %13 = load i32, i32* %u_id, align 4
  %and18 = and i32 %13, 7
  %shr = ashr i32 128, %and18
  %neg19 = xor i32 %shr, -1
  %14 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id20 = getelementptr inbounds %struct.acluser, %struct.acluser* %14, i32 0, i32 9
  %15 = load i32, i32* %u_id20, align 4
  %shr21 = ashr i32 %15, 3
  %idxprom = sext i32 %shr21 to i64
  %16 = load i32, i32* %bit, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load i8**, i8*** %bitarray, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom22
  %18 = load i8*, i8** %arrayidx, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %and25 = and i32 %conv24, %neg19
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, i8* %arrayidx23, align 1
  br label %if.end.39

if.else.27:                                       ; preds = %if.end.15
  %20 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id28 = getelementptr inbounds %struct.acluser, %struct.acluser* %20, i32 0, i32 9
  %21 = load i32, i32* %u_id28, align 4
  %and29 = and i32 %21, 7
  %shr30 = ashr i32 128, %and29
  %22 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id31 = getelementptr inbounds %struct.acluser, %struct.acluser* %22, i32 0, i32 9
  %23 = load i32, i32* %u_id31, align 4
  %shr32 = ashr i32 %23, 3
  %idxprom33 = sext i32 %shr32 to i64
  %24 = load i32, i32* %bit, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i8**, i8*** %bitarray, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %25, i64 %idxprom34
  %26 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 %idxprom33
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %or = or i32 %conv37, %shr30
  %conv38 = trunc i32 %or to i8
  store i8 %conv38, i8* %arrayidx36, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.27, %if.then.17
  %28 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %tobool40 = icmp ne %struct.acluser* %28, null
  br i1 %tobool40, label %if.end.57, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.39
  %29 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 30
  %30 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %31 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %cmp41 = icmp eq %struct.acluser* %30, %31
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.57

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %32 = load i32, i32* %neg, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.57

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %33 = load i32, i32* %bit, align 4
  %cmp46 = icmp eq i32 %33, 1
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %land.lhs.true.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  %34 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_wlockuser51 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 30
  store %struct.acluser* null, %struct.acluser** %w_wlockuser51, align 8
  %35 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 29
  %36 = load i32, i32* %w_wlock, align 4
  %cmp52 = icmp eq i32 %36, 2
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %do.end.50
  %37 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_wlock55 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 29
  store i32 1, i32* %w_wlock55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %do.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.45, %land.lhs.true.43, %land.lhs.true, %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.57, %if.then.14
  %38 = load i32, i32* %bit, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %bit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %tobool58 = icmp ne %struct.acluser* %39, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.126

land.lhs.true.59:                                 ; preds = %while.end
  %40 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %40, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i64 0
  %41 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %41 to i32
  %cmp62 = icmp eq i32 %conv61, 63
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.126

land.lhs.true.64:                                 ; preds = %land.lhs.true.59
  %42 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_name65 = getelementptr inbounds %struct.acluser, %struct.acluser* %42, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [257 x i8], [257 x i8]* %u_name65, i32 0, i64 1
  %43 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %43 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.126

if.then.70:                                       ; preds = %land.lhs.true.64
  %44 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool71 = icmp ne %struct.win* %44, null
  br i1 %tobool71, label %if.then.72, label %if.else.97

if.then.72:                                       ; preds = %if.then.70
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.73
  store i32 0, i32* %bit, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.94, %do.end.74
  %45 = load i32, i32* %bit, align 4
  %cmp76 = icmp slt i32 %45, 3
  br i1 %cmp76, label %for.body.78, label %for.end.96

for.body.78:                                      ; preds = %for.cond.75
  %46 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id79 = getelementptr inbounds %struct.acluser, %struct.acluser* %46, i32 0, i32 9
  %47 = load i32, i32* %u_id79, align 4
  %shr80 = ashr i32 %47, 3
  %idxprom81 = sext i32 %shr80 to i64
  %48 = load i32, i32* %bit, align 4
  %idxprom82 = sext i32 %48 to i64
  %49 = load i8**, i8*** %bitarray, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %49, i64 %idxprom82
  %50 = load i8*, i8** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %50, i64 %idxprom81
  %51 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %51 to i32
  %52 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id86 = getelementptr inbounds %struct.acluser, %struct.acluser* %52, i32 0, i32 9
  %53 = load i32, i32* %u_id86, align 4
  %and87 = and i32 %53, 7
  %shr88 = ashr i32 128, %and87
  %and89 = and i32 %conv85, %shr88
  %tobool90 = icmp ne i32 %and89, 0
  %cond = select i1 %tobool90, i32 1, i32 0
  %conv91 = trunc i32 %cond to i8
  %54 = load i32, i32* %bit, align 4
  %idxprom92 = sext i32 %54 to i64
  %arrayidx93 = getelementptr inbounds [3 x i8], [3 x i8]* @default_w_bit, i32 0, i64 %idxprom92
  store i8 %conv91, i8* %arrayidx93, align 1
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.78
  %55 = load i32, i32* %bit, align 4
  %inc95 = add nsw i32 %55, 1
  store i32 %inc95, i32* %bit, align 4
  br label %for.cond.75

for.end.96:                                       ; preds = %for.cond.75
  br label %if.end.123

if.else.97:                                       ; preds = %if.then.70
  br label %do.body.98

do.body.98:                                       ; preds = %if.else.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.body.98
  store i32 0, i32* %bit, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.120, %do.end.99
  %56 = load i32, i32* %bit, align 4
  %cmp101 = icmp slt i32 %56, 1
  br i1 %cmp101, label %for.body.103, label %for.end.122

for.body.103:                                     ; preds = %for.cond.100
  %57 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id104 = getelementptr inbounds %struct.acluser, %struct.acluser* %57, i32 0, i32 9
  %58 = load i32, i32* %u_id104, align 4
  %shr105 = ashr i32 %58, 3
  %idxprom106 = sext i32 %shr105 to i64
  %59 = load i32, i32* %bit, align 4
  %idxprom107 = sext i32 %59 to i64
  %60 = load i8**, i8*** %bitarray, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %60, i64 %idxprom107
  %61 = load i8*, i8** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %61, i64 %idxprom106
  %62 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %62 to i32
  %63 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id111 = getelementptr inbounds %struct.acluser, %struct.acluser* %63, i32 0, i32 9
  %64 = load i32, i32* %u_id111, align 4
  %and112 = and i32 %64, 7
  %shr113 = ashr i32 128, %and112
  %and114 = and i32 %conv110, %shr113
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 1, i32 0
  %conv117 = trunc i32 %cond116 to i8
  %65 = load i32, i32* %bit, align 4
  %idxprom118 = sext i32 %65 to i64
  %arrayidx119 = getelementptr inbounds [1 x i8], [1 x i8]* @default_c_bit, i32 0, i64 %idxprom118
  store i8 %conv117, i8* %arrayidx119, align 1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.103
  %66 = load i32, i32* %bit, align 4
  %inc121 = add nsw i32 %66, 1
  store i32 %inc121, i32* %bit, align 4
  br label %for.cond.100

for.end.122:                                      ; preds = %for.cond.100
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %for.end.96
  %67 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_name124 = getelementptr inbounds %struct.acluser, %struct.acluser* %67, i32 0, i32 1
  %arraydecay125 = getelementptr inbounds [257 x i8], [257 x i8]* %u_name124, i32 0, i32 0
  %call = call i32 @UserDel(i8* %arraydecay125, %struct.acluser** null)
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.123, %land.lhs.true.64, %land.lhs.true.59, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.126, %sw.default
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @AclSetPermCmd(%struct.acluser* %u, i8* %mode, %struct.comm* %cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.acluser*, align 8
  %mode.addr = alloca i8*, align 8
  %cmd.addr = alloca %struct.comm*, align 8
  %neg = alloca i32, align 4
  %m = alloca i8*, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.comm* %cmd, %struct.comm** %cmd.addr, align 8
  store i32 0, i32* %neg, align 4
  %0 = load i8*, i8** %mode.addr, align 8
  store i8* %0, i8** %m, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.bb.1, %sw.bb, %entry
  %1 = load i8*, i8** %m, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb.1
    i32 97, label %sw.bb.2
    i32 101, label %sw.bb.2
    i32 120, label %sw.bb.2
    i32 114, label %sw.bb.22
    i32 119, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* %neg, align 4
  br label %while.cond

sw.bb.1:                                          ; preds = %while.body
  store i32 0, i32* %neg, align 4
  br label %while.cond

sw.bb.2:                                          ; preds = %while.body, %while.body, %while.body
  %5 = load i32, i32* %neg, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %6 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %6, i32 0, i32 9
  %7 = load i32, i32* %u_id, align 4
  %and = and i32 %7, 7
  %shr = ashr i32 128, %and
  %neg4 = xor i32 %shr, -1
  %8 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id5 = getelementptr inbounds %struct.acluser, %struct.acluser* %8, i32 0, i32 9
  %9 = load i32, i32* %u_id5, align 4
  %shr6 = ashr i32 %9, 3
  %idxprom = sext i32 %shr6 to i64
  %10 = load %struct.comm*, %struct.comm** %cmd.addr, align 8
  %userbits = getelementptr inbounds %struct.comm, %struct.comm* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits, i32 0, i64 0
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %and9 = and i32 %conv8, %neg4
  %conv10 = trunc i32 %and9 to i8
  store i8 %conv10, i8* %arrayidx7, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.2
  %13 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id11 = getelementptr inbounds %struct.acluser, %struct.acluser* %13, i32 0, i32 9
  %14 = load i32, i32* %u_id11, align 4
  %and12 = and i32 %14, 7
  %shr13 = ashr i32 128, %and12
  %15 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id14 = getelementptr inbounds %struct.acluser, %struct.acluser* %15, i32 0, i32 9
  %16 = load i32, i32* %u_id14, align 4
  %shr15 = ashr i32 %16, 3
  %idxprom16 = sext i32 %shr15 to i64
  %17 = load %struct.comm*, %struct.comm** %cmd.addr, align 8
  %userbits17 = getelementptr inbounds %struct.comm, %struct.comm* %17, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits17, i32 0, i64 0
  %18 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom16
  %19 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %or = or i32 %conv20, %shr13
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body, %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.22, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @FindCommnr(i8*) #2

declare i32 @WindowByNoN(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @UsersAcl(%struct.acluser* %uu, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %uu.addr = alloca %struct.acluser*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %r = alloca i32, align 4
  %cf_u = alloca %struct.acluser**, align 8
  %p = alloca i8*, align 8
  %u = alloca %struct.acluser**, align 8
  store %struct.acluser* %uu, %struct.acluser** %uu.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.acluser** null, %struct.acluser*** %cf_u, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  store i8* null, i8** %p, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 61
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %7 = load i8*, i8** %s, align 8
  store i8* %7, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %while.end
  %9 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8 0, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %p, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %10)
  store %struct.acluser** %call, %struct.acluser*** %cf_u, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %while.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.8
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.19
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.acluser** @users, %struct.acluser*** %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %18 = load %struct.acluser*, %struct.acluser** %17, align 8
  %tobool20 = icmp ne %struct.acluser* %18, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %20 = load %struct.acluser*, %struct.acluser** %19, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %20, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  %call21 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay) #4
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.32

land.lhs.true.23:                                 ; preds = %for.body
  %21 = load %struct.acluser**, %struct.acluser*** %cf_u, align 8
  %tobool24 = icmp ne %struct.acluser** %21, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.23
  %22 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %23 = load %struct.acluser**, %struct.acluser*** %cf_u, align 8
  %call25 = call i32 @UserAclCopy(%struct.acluser** %22, %struct.acluser** %23)
  store i32 %call25, i32* %r, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.31, label %if.end.32

cond.false:                                       ; preds = %land.lhs.true.23
  %24 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %25 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %26 = load i32, i32* %argc.addr, align 4
  %27 = load i8**, i8*** %argv.addr, align 8
  %call28 = call i32 @UserAcl(%struct.acluser* %24, %struct.acluser** %25, i32 %26, i8** %27)
  store i32 %call28, i32* %r, align 4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %cond.false, %cond.true
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %cond.false, %cond.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %28 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %29 = load %struct.acluser*, %struct.acluser** %28, align 8
  %u_next = getelementptr inbounds %struct.acluser, %struct.acluser* %29, i32 0, i32 0
  store %struct.acluser** %u_next, %struct.acluser*** %u, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true, %if.end.8
  br label %do.body.34

do.body.34:                                       ; preds = %do.cond, %if.end.33
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %30, i64 0
  %31 = load i8*, i8** %arrayidx35, align 8
  store i8* %31, i8** %s, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %do.body.34
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv37 = sext i8 %33 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %land.end

land.lhs.true.39:                                 ; preds = %for.cond.36
  %34 = load i8*, i8** %s, align 8
  %35 = load i8, i8* %34, align 1
  %conv40 = sext i8 %35 to i32
  %cmp41 = icmp ne i32 %conv40, 32
  br i1 %cmp41, label %land.lhs.true.43, label %land.end

land.lhs.true.43:                                 ; preds = %land.lhs.true.39
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp ne i32 %conv44, 9
  br i1 %cmp45, label %land.lhs.true.47, label %land.end

land.lhs.true.47:                                 ; preds = %land.lhs.true.43
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %conv48 = sext i8 %39 to i32
  %cmp49 = icmp ne i32 %conv48, 44
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.47
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv51 = sext i8 %41 to i32
  %cmp52 = icmp ne i32 %conv51, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.47, %land.lhs.true.43, %land.lhs.true.39, %for.cond.36
  %42 = phi i1 [ false, %land.lhs.true.47 ], [ false, %land.lhs.true.43 ], [ false, %land.lhs.true.39 ], [ false, %for.cond.36 ], [ %cmp52, %land.rhs ]
  br i1 %42, label %for.body.54, label %for.end.57

for.body.54:                                      ; preds = %land.end
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.54
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr56, i8** %s, align 8
  br label %for.cond.36

for.end.57:                                       ; preds = %land.end
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv58 = sext i8 %45 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %for.end.57
  %46 = load i8*, i8** %s, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr61, i8** %s, align 8
  store i8 0, i8* %46, align 1
  br label %cond.end

cond.false.62:                                    ; preds = %for.end.57
  %47 = load i8*, i8** %s, align 8
  store i8 0, i8* %47, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.62, %cond.true.60
  %cond = phi i32 [ 0, %cond.true.60 ], [ 0, %cond.false.62 ]
  br label %do.body.63

do.body.63:                                       ; preds = %cond.end
  br label %do.end.64

do.end.64:                                        ; preds = %do.body.63
  %48 = load %struct.acluser**, %struct.acluser*** %cf_u, align 8
  %tobool65 = icmp ne %struct.acluser** %48, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.72

cond.true.66:                                     ; preds = %do.end.64
  %49 = load i8**, i8*** %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx67, align 8
  %call68 = call %struct.acluser** @FindUserPtr(i8* %50)
  %51 = load %struct.acluser**, %struct.acluser*** %cf_u, align 8
  %call69 = call i32 @UserAclCopy(%struct.acluser** %call68, %struct.acluser** %51)
  store i32 %call69, i32* %r, align 4
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.78, label %if.end.79

cond.false.72:                                    ; preds = %do.end.64
  %52 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx73, align 8
  %call74 = call %struct.acluser** @FindUserPtr(i8* %54)
  %55 = load i32, i32* %argc.addr, align 4
  %56 = load i8**, i8*** %argv.addr, align 8
  %call75 = call i32 @UserAcl(%struct.acluser* %52, %struct.acluser** %call74, i32 %55, i8** %56)
  store i32 %call75, i32* %r, align 4
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.false.72, %cond.true.66
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %cond.false.72, %cond.true.66
  br label %do.cond

do.cond:                                          ; preds = %if.end.79
  %57 = load i8*, i8** %s, align 8
  %58 = load i8**, i8*** %argv.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* %57, i8** %arrayidx80, align 8
  %59 = load i8, i8* %57, align 1
  %tobool81 = icmp ne i8 %59, 0
  br i1 %tobool81, label %do.body.34, label %do.end.82

do.end.82:                                        ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.82, %if.then.78, %for.end, %if.then.31
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @UserAclCopy(%struct.acluser** %to_up, %struct.acluser** %from_up) #0 {
entry:
  %retval = alloca i32, align 4
  %to_up.addr = alloca %struct.acluser**, align 8
  %from_up.addr = alloca %struct.acluser**, align 8
  %w = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %to_id = alloca i32, align 4
  %from_id = alloca i32, align 4
  store %struct.acluser** %to_up, %struct.acluser*** %to_up.addr, align 8
  store %struct.acluser** %from_up, %struct.acluser*** %from_up.addr, align 8
  %0 = load %struct.acluser**, %struct.acluser*** %to_up.addr, align 8
  %1 = load %struct.acluser*, %struct.acluser** %0, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acluser**, %struct.acluser*** %from_up.addr, align 8
  %3 = load %struct.acluser*, %struct.acluser** %2, align 8
  %tobool1 = icmp ne %struct.acluser* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.acluser**, %struct.acluser*** %to_up.addr, align 8
  %5 = load %struct.acluser*, %struct.acluser** %4, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %5, i32 0, i32 9
  %6 = load i32, i32* %u_id, align 4
  store i32 %6, i32* %to_id, align 4
  %7 = load %struct.acluser**, %struct.acluser*** %from_up.addr, align 8
  %8 = load %struct.acluser*, %struct.acluser** %7, align 8
  %u_id2 = getelementptr inbounds %struct.acluser, %struct.acluser* %8, i32 0, i32 9
  %9 = load i32, i32* %u_id2, align 4
  store i32 %9, i32* %from_id, align 4
  %cmp = icmp eq i32 %6, %9
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %10 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %10, %struct.win** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end.4
  %11 = load %struct.win*, %struct.win** %w, align 8
  %tobool5 = icmp ne %struct.win* %11, null
  br i1 %tobool5, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, 3
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %13 = load i32, i32* %from_id, align 4
  %shr = ashr i32 %13, 3
  %idxprom = sext i32 %shr to i64
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.win*, %struct.win** %w, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 31
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i64 %idxprom9
  %16 = load i8*, i8** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %17 to i32
  %18 = load i32, i32* %from_id, align 4
  %and = and i32 %18, 7
  %shr11 = ashr i32 128, %and
  %and12 = and i32 %conv, %shr11
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body.8
  %19 = load i32, i32* %to_id, align 4
  %and15 = and i32 %19, 7
  %shr16 = ashr i32 128, %and15
  %20 = load i32, i32* %to_id, align 4
  %shr17 = ashr i32 %20, 3
  %idxprom18 = sext i32 %shr17 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.win*, %struct.win** %w, align 8
  %w_userbits20 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 31
  %arrayidx21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits20, i32 0, i64 %idxprom19
  %23 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %23, i64 %idxprom18
  %24 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %24 to i32
  %or = or i32 %conv23, %shr16
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, i8* %arrayidx22, align 1
  br label %if.end.50

if.else:                                          ; preds = %for.body.8
  %25 = load i32, i32* %to_id, align 4
  %and25 = and i32 %25, 7
  %shr26 = ashr i32 128, %and25
  %neg = xor i32 %shr26, -1
  %26 = load i32, i32* %to_id, align 4
  %shr27 = ashr i32 %26, 3
  %idxprom28 = sext i32 %shr27 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.win*, %struct.win** %w, align 8
  %w_userbits30 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 31
  %arrayidx31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits30, i32 0, i64 %idxprom29
  %29 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %29, i64 %idxprom28
  %30 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  %and34 = and i32 %conv33, %neg
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, i8* %arrayidx32, align 1
  %31 = load %struct.win*, %struct.win** %w, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 30
  %32 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %33 = load %struct.acluser**, %struct.acluser*** %to_up.addr, align 8
  %34 = load %struct.acluser*, %struct.acluser** %33, align 8
  %cmp36 = icmp eq %struct.acluser* %32, %34
  br i1 %cmp36, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.else
  %35 = load i32, i32* %i, align 4
  %cmp38 = icmp eq i32 %35, 1
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %land.lhs.true
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.body.41
  %36 = load %struct.win*, %struct.win** %w, align 8
  %w_wlockuser43 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 30
  store %struct.acluser* null, %struct.acluser** %w_wlockuser43, align 8
  %37 = load %struct.win*, %struct.win** %w, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 29
  %38 = load i32, i32* %w_wlock, align 4
  %cmp44 = icmp eq i32 %38, 2
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %do.end.42
  %39 = load %struct.win*, %struct.win** %w, align 8
  %w_wlock47 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 29
  store i32 1, i32* %w_wlock47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %do.end.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %41 = load %struct.win*, %struct.win** %w, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 0
  %42 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %42, %struct.win** %w, align 8
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.106, %for.end.52
  %43 = load i32, i32* %j, align 4
  %cmp54 = icmp sle i32 %43, 187
  br i1 %cmp54, label %for.body.56, label %for.end.108

for.body.56:                                      ; preds = %for.cond.53
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.103, %for.body.56
  %44 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %44, 1
  br i1 %cmp58, label %for.body.60, label %for.end.105

for.body.60:                                      ; preds = %for.cond.57
  %45 = load i32, i32* %from_id, align 4
  %shr61 = ashr i32 %45, 3
  %idxprom62 = sext i32 %shr61 to i64
  %46 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %47 to i64
  %arrayidx65 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom64
  %userbits = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx65, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits, i32 0, i64 %idxprom63
  %48 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %48, i64 %idxprom62
  %49 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %49 to i32
  %50 = load i32, i32* %from_id, align 4
  %and69 = and i32 %50, 7
  %shr70 = ashr i32 128, %and69
  %and71 = and i32 %conv68, %shr70
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.87

if.then.73:                                       ; preds = %for.body.60
  %51 = load i32, i32* %to_id, align 4
  %and74 = and i32 %51, 7
  %shr75 = ashr i32 128, %and74
  %52 = load i32, i32* %to_id, align 4
  %shr76 = ashr i32 %52, 3
  %idxprom77 = sext i32 %shr76 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %53 to i64
  %54 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %54 to i64
  %arrayidx80 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom79
  %userbits81 = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx80, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits81, i32 0, i64 %idxprom78
  %55 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %55, i64 %idxprom77
  %56 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %56 to i32
  %or85 = or i32 %conv84, %shr75
  %conv86 = trunc i32 %or85 to i8
  store i8 %conv86, i8* %arrayidx83, align 1
  br label %if.end.102

if.else.87:                                       ; preds = %for.body.60
  %57 = load i32, i32* %to_id, align 4
  %and88 = and i32 %57, 7
  %shr89 = ashr i32 128, %and88
  %neg90 = xor i32 %shr89, -1
  %58 = load i32, i32* %to_id, align 4
  %shr91 = ashr i32 %58, 3
  %idxprom92 = sext i32 %shr91 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %60 to i64
  %arrayidx95 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom94
  %userbits96 = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx95, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits96, i32 0, i64 %idxprom93
  %61 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %61, i64 %idxprom92
  %62 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %62 to i32
  %and100 = and i32 %conv99, %neg90
  %conv101 = trunc i32 %and100 to i8
  store i8 %conv101, i8* %arrayidx98, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.87, %if.then.73
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %63 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %63, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.57

for.end.105:                                      ; preds = %for.cond.57
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %64 = load i32, i32* %j, align 4
  %inc107 = add nsw i32 %64, 1
  store i32 %inc107, i32* %j, align 4
  br label %for.cond.53

for.end.108:                                      ; preds = %for.cond.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.108, %if.then.3, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @UserAcl(%struct.acluser* %uu, %struct.acluser** %u, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %uu.addr = alloca %struct.acluser*, align 8
  %u.addr = alloca %struct.acluser**, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store %struct.acluser* %uu, %struct.acluser** %uu.addr, align 8
  store %struct.acluser** %u, %struct.acluser*** %u.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %1 = load %struct.acluser*, %struct.acluser** %0, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %3 = load %struct.acluser*, %struct.acluser** %2, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #4
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %lor.lhs.false
  %7 = load i32, i32* %argc.addr, align 4
  switch i32 %7, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.13
    i32 2, label %sw.bb.26
    i32 1, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx5, align 8
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx6, align 8
  %12 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %call7 = call i32 @UserAdd(i8* %9, i8* %11, %struct.acluser** %12)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %13 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %14 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %15 = load %struct.acluser*, %struct.acluser** %14, align 8
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 2
  %17 = load i8*, i8** %arrayidx9, align 8
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 3
  %19 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @AclSetPerm(%struct.acluser* %13, %struct.acluser* %15, i8* %17, i8* %19)
  %tobool12 = icmp ne i32 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %20 = phi i1 [ true, %do.end ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %sw.bb.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx16, align 8
  %23 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %call17 = call i32 @UserAdd(i8* %22, i8* null, %struct.acluser** %23)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %lor.end.24, label %lor.rhs.19

lor.rhs.19:                                       ; preds = %do.end.15
  %24 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %25 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %26 = load %struct.acluser*, %struct.acluser** %25, align 8
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %27, i64 1
  %28 = load i8*, i8** %arrayidx20, align 8
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %29, i64 2
  %30 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @AclSetPerm(%struct.acluser* %24, %struct.acluser* %26, i8* %28, i8* %30)
  %tobool23 = icmp ne i32 %call22, 0
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.rhs.19, %do.end.15
  %31 = phi i1 [ true, %do.end.15 ], [ %tobool23, %lor.rhs.19 ]
  %lor.ext25 = zext i1 %31 to i32
  store i32 %lor.ext25, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %if.end
  br label %do.body.27

do.body.27:                                       ; preds = %sw.bb.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx29, align 8
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %34, i64 1
  %35 = load i8*, i8** %arrayidx30, align 8
  %36 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %call31 = call i32 @UserAdd(i8* %33, i8* %35, %struct.acluser** %36)
  %cmp32 = icmp slt i32 %call31, 0
  %conv = zext i1 %cmp32 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %if.end
  br label %do.body.34

do.body.34:                                       ; preds = %sw.bb.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.34
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx36, align 8
  %39 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %call37 = call i32 @UserAdd(i8* %38, i8* null, %struct.acluser** %39)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %lor.end.43, label %lor.rhs.40

lor.rhs.40:                                       ; preds = %do.end.35
  %40 = load %struct.acluser*, %struct.acluser** %uu.addr, align 8
  %41 = load %struct.acluser**, %struct.acluser*** %u.addr, align 8
  %42 = load %struct.acluser*, %struct.acluser** %41, align 8
  %call41 = call i32 @AclSetPerm(%struct.acluser* %40, %struct.acluser* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br label %lor.end.43

lor.end.43:                                       ; preds = %lor.rhs.40, %do.end.35
  %43 = phi i1 [ true, %do.end.35 ], [ %tobool42, %lor.rhs.40 ]
  %lor.ext44 = zext i1 %43 to i32
  store i32 %lor.ext44, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %lor.end.43, %do.end.28, %lor.end.24, %lor.end, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @AclUmask(%struct.acluser* %u, i8* %str, i8** %errp) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.acluser*, align 8
  %str.addr = alloca i8*, align 8
  %errp.addr = alloca i8**, align 8
  %mode = alloca [16 x i8], align 16
  %av = alloca [3 x i8*], align 16
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8** %errp, i8*** %errp.addr, align 8
  store i8 0, i8* %c, align 1
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8, i8* %c, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.end
  %9 = load i8**, i8*** %errp.addr, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8** %9, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %mode, i32 0, i32 0
  %10 = load i8*, i8** %p, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %10, i64 15) #5
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %mode, i32 0, i64 15
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %p, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %str.addr, align 8
  %call8 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* %12) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %13 = load i8*, i8** %str.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %av, i32 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %arrayidx12, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.7
  %arrayidx13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %av, i32 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %arrayidx13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %mode, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %av, i32 0, i64 1
  store i8* %arraydecay15, i8** %arrayidx16, align 8
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %16 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  %arrayidx19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %av, i32 0, i64 0
  store i8* %cond, i8** %arrayidx19, align 8
  %17 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %arraydecay20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %av, i32 0, i32 0
  %call21 = call i32 @UsersAcl(%struct.acluser* %17, i32 3, i8** %arraydecay20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.end
  %18 = load i8**, i8*** %errp.addr, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8** %18, align 8
  %19 = load i8, i8* %c, align 1
  %20 = load i8*, i8** %p, align 8
  store i8 %19, i8* %20, align 1
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %cond.end
  %21 = load i8, i8* %c, align 1
  %22 = load i8*, i8** %p, align 8
  store i8 %21, i8* %22, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.6
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @AclWinSwap(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @AclCheckPermWin(%struct.acluser* %u, i32 %mode, %struct.win* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.acluser*, align 8
  %mode.addr = alloca i32, align 4
  %w.addr = alloca %struct.win*, align 8
  %ok = alloca i32, align 4
  %g = alloca %struct.aclusergroup**, align 8
  %saved_eff = alloca %struct.acluser*, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.win* %w, %struct.win** %w.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp sge i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  %tobool = icmp ne %struct.acluser* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  store %struct.acluser* %3, %struct.acluser** %u.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %if.end
  %4 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %4, i32 0, i32 9
  %5 = load i32, i32* %u_id, align 4
  %shr = ashr i32 %5, 3
  %idxprom = sext i32 %shr to i64
  %6 = load i32, i32* %mode.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_userbits = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 31
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %w_userbits, i32 0, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id6 = getelementptr inbounds %struct.acluser, %struct.acluser* %10, i32 0, i32 9
  %11 = load i32, i32* %u_id6, align 4
  %and = and i32 %11, 7
  %shr7 = ashr i32 128, %and
  %and8 = and i32 %conv, %shr7
  store i32 %and8, i32* %ok, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.3
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %12 = load i32, i32* %ok, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.end.21, label %if.then.12

if.then.12:                                       ; preds = %do.end.10
  %13 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %13, i32 0, i32 11
  store %struct.aclusergroup** %u_group, %struct.aclusergroup*** %g, align 8
  %14 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  store %struct.acluser* %14, %struct.acluser** %saved_eff, align 8
  store %struct.acluser* null, %struct.acluser** @EffectiveAclUser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.12
  %15 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %16 = load %struct.aclusergroup*, %struct.aclusergroup** %15, align 8
  %tobool13 = icmp ne %struct.aclusergroup* %16, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %18 = load %struct.aclusergroup*, %struct.aclusergroup** %17, align 8
  %u14 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %18, i32 0, i32 0
  %19 = load %struct.acluser*, %struct.acluser** %u14, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct.win*, %struct.win** %w.addr, align 8
  %call = call i32 @AclCheckPermWin(%struct.acluser* %19, i32 %20, %struct.win* %21)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %while.body
  br label %while.end

if.end.17:                                        ; preds = %while.body
  %22 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %23 = load %struct.aclusergroup*, %struct.aclusergroup** %22, align 8
  %next = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %23, i32 0, i32 1
  store %struct.aclusergroup** %next, %struct.aclusergroup*** %g, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.16, %while.cond
  %24 = load %struct.acluser*, %struct.acluser** %saved_eff, align 8
  store %struct.acluser* %24, %struct.acluser** @EffectiveAclUser, align 8
  %25 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %26 = load %struct.aclusergroup*, %struct.aclusergroup** %25, align 8
  %tobool18 = icmp ne %struct.aclusergroup* %26, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end
  store i32 1, i32* %ok, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.end.10
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %27 = load i32, i32* %ok, align 4
  %tobool24 = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @AclCheckPermCmd(%struct.acluser* %u, i32 %mode, %struct.comm* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.acluser*, align 8
  %mode.addr = alloca i32, align 4
  %c.addr = alloca %struct.comm*, align 8
  %ok = alloca i32, align 4
  %g = alloca %struct.aclusergroup**, align 8
  %saved_eff = alloca %struct.acluser*, align 8
  store %struct.acluser* %u, %struct.acluser** %u.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.comm* %c, %struct.comm** %c.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp sge i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  %tobool = icmp ne %struct.acluser* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  store %struct.acluser* %3, %struct.acluser** %u.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %if.end
  %4 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %4, i32 0, i32 9
  %5 = load i32, i32* %u_id, align 4
  %shr = ashr i32 %5, 3
  %idxprom = sext i32 %shr to i64
  %6 = load i32, i32* %mode.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.comm*, %struct.comm** %c.addr, align 8
  %userbits = getelementptr inbounds %struct.comm, %struct.comm* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %userbits, i32 0, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_id6 = getelementptr inbounds %struct.acluser, %struct.acluser* %10, i32 0, i32 9
  %11 = load i32, i32* %u_id6, align 4
  %and = and i32 %11, 7
  %shr7 = ashr i32 128, %and
  %and8 = and i32 %conv, %shr7
  store i32 %and8, i32* %ok, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.3
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %12 = load i32, i32* %ok, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.end.21, label %if.then.12

if.then.12:                                       ; preds = %do.end.10
  %13 = load %struct.acluser*, %struct.acluser** %u.addr, align 8
  %u_group = getelementptr inbounds %struct.acluser, %struct.acluser* %13, i32 0, i32 11
  store %struct.aclusergroup** %u_group, %struct.aclusergroup*** %g, align 8
  %14 = load %struct.acluser*, %struct.acluser** @EffectiveAclUser, align 8
  store %struct.acluser* %14, %struct.acluser** %saved_eff, align 8
  store %struct.acluser* null, %struct.acluser** @EffectiveAclUser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.12
  %15 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %16 = load %struct.aclusergroup*, %struct.aclusergroup** %15, align 8
  %tobool13 = icmp ne %struct.aclusergroup* %16, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %18 = load %struct.aclusergroup*, %struct.aclusergroup** %17, align 8
  %u14 = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %18, i32 0, i32 0
  %19 = load %struct.acluser*, %struct.acluser** %u14, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct.comm*, %struct.comm** %c.addr, align 8
  %call = call i32 @AclCheckPermCmd(%struct.acluser* %19, i32 %20, %struct.comm* %21)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %while.body
  br label %while.end

if.end.17:                                        ; preds = %while.body
  %22 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %23 = load %struct.aclusergroup*, %struct.aclusergroup** %22, align 8
  %next = getelementptr inbounds %struct.aclusergroup, %struct.aclusergroup* %23, i32 0, i32 1
  store %struct.aclusergroup** %next, %struct.aclusergroup*** %g, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.16, %while.cond
  %24 = load %struct.acluser*, %struct.acluser** %saved_eff, align 8
  store %struct.acluser* %24, %struct.acluser** @EffectiveAclUser, align 8
  %25 = load %struct.aclusergroup**, %struct.aclusergroup*** %g, align 8
  %26 = load %struct.aclusergroup*, %struct.aclusergroup** %25, align 8
  %tobool18 = icmp ne %struct.aclusergroup* %26, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end
  store i32 1, i32* %ok, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.end.10
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %27 = load i32, i32* %ok, align 4
  %tobool24 = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare i8* @crypt(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
