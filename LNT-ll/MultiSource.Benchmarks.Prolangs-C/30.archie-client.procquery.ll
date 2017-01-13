; ModuleID = './MultiSource.Benchmarks.Prolangs-C/30.archie-client.procquery.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@lasthost = internal global [1024 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AHost %s\0A\0A\00", align 1
@lastpath = internal global [1024 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"    Location: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"UNIX-MODES\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"LAST-MODIFIED\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%4d%2d%2d%2d%2d\00", align 1
@presenttime = internal global %struct.tm* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"%s %2d %4d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%s %2d %02d:%02d\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%s %6d %s %s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"      %9s %s %10d  %s  %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@perrno = external global i32, align 4
@p_err_text = external global [0 x i8*], align 8
@p_err_string = external global [0 x i8], align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"%s: failed: %s - %s\0A\00", align 1
@progname = external global i8*, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"%s failed: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"%s failed: Undefined error %d (prospero)\00", align 1
@pwarn = external global i32, align 4
@p_warn_string = external global [0 x i8], align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%s: Warning! %s - %s\0A\00", align 1
@p_warn_text = external global [0 x i8*], align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"%s: Warning! %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"No matches.\00", align 1

; Function Attrs: nounwind uwtable
define void @display_link(%struct.vlink* %l, i32 %listflag) #0 {
entry:
  %l.addr = alloca %struct.vlink*, align 8
  %listflag.addr = alloca i32, align 4
  %ap = alloca %struct.pattrib*, align 8
  %linkpath = alloca [1024 x i8], align 16
  %dirflag = alloca i32, align 4
  %size = alloca i32, align 4
  %modes = alloca i8*, align 8
  %archie_date = alloca [20 x i8], align 16
  %gt_date = alloca i8*, align 8
  %gt_year = alloca i32, align 4
  %gt_mon = alloca i32, align 4
  %gt_day = alloca i32, align 4
  %gt_hour = alloca i32, align 4
  %gt_min = alloca i32, align 4
  store %struct.vlink* %l, %struct.vlink** %l.addr, align 8
  store i32 %listflag, i32* %listflag.addr, align 4
  store i32 0, i32* %dirflag, align 4
  store i32 0, i32* %size, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %modes, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %gt_date, align 8
  store i32 0, i32* %gt_year, align 4
  store i32 0, i32* %gt_mon, align 4
  store i32 0, i32* %gt_day, align 4
  store i32 0, i32* %gt_hour, align 4
  store i32 0, i32* %gt_min, align 4
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %archie_date, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %0 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 4
  %1 = load i8*, i8** %type, align 8
  %call = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i8*, ...)*)(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %dirflag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %dirflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %2 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 10
  %3 = load i8*, i8** %filename, align 8
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* %3)
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %call5 = call i64 @strlen(i8* %arraydecay4)
  %4 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %call6 = call i64 @strlen(i8* %5)
  %sub = sub i64 %call5, %call6
  %sub7 = sub i64 %sub, 1
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 %sub7
  store i8 0, i8* %add.ptr, align 1
  %6 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %6, i32 0, i32 8
  %7 = load i8*, i8** %host, align 8
  %call8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i32 0, i32 0))
  %cmp = icmp ne i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end
  %8 = load i32, i32* %listflag.addr, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %9 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host12 = getelementptr inbounds %struct.vlink, %struct.vlink* %9, i32 0, i32 8
  %10 = load i8*, i8** %host12, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.9
  %11 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host15 = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 8
  %12 = load i8*, i8** %host15, align 8
  %call16 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i32 0, i32 0), i8* %12)
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i32 0, i32 0), align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i32 0, i32 0))
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.end.17
  %13 = load i32, i32* %listflag.addr, align 4
  %tobool22 = icmp ne i32 %13, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %14 = load i8, i8* %arraydecay24, align 1
  %conv = sext i8 %14 to i32
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay26, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %cond)
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end, %if.then.21
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linkpath, i32 0, i32 0
  %call30 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i32 0, i32 0), i8* %arraydecay29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %if.end.17
  %15 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %lattrib = getelementptr inbounds %struct.vlink, %struct.vlink* %15, i32 0, i32 17
  %16 = load %struct.pattrib*, %struct.pattrib** %lattrib, align 8
  store %struct.pattrib* %16, %struct.pattrib** %ap, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %17 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %tobool32 = icmp ne %struct.pattrib* %17, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %aname = getelementptr inbounds %struct.pattrib, %struct.pattrib* %18, i32 0, i32 1
  %19 = load i8*, i8** %aname, align 8
  %call33 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %for.body
  %20 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %value = getelementptr inbounds %struct.pattrib, %struct.pattrib* %20, i32 0, i32 3
  %ascii = bitcast %union.avalue* %value to i8**
  %21 = load i8*, i8** %ascii, align 8
  %call37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %size) #4
  br label %if.end.71

if.else.38:                                       ; preds = %for.body
  %22 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %aname39 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %22, i32 0, i32 1
  %23 = load i8*, i8** %aname39, align 8
  %call40 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.else.38
  %24 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %value44 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %24, i32 0, i32 3
  %ascii45 = bitcast %union.avalue* %value44 to i8**
  %25 = load i8*, i8** %ascii45, align 8
  store i8* %25, i8** %modes, align 8
  br label %if.end.70

if.else.46:                                       ; preds = %if.else.38
  %26 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %aname47 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %26, i32 0, i32 1
  %27 = load i8*, i8** %aname47, align 8
  %call48 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.69

if.then.51:                                       ; preds = %if.else.46
  %28 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %value52 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %28, i32 0, i32 3
  %ascii53 = bitcast %union.avalue* %value52 to i8**
  %29 = load i8*, i8** %ascii53, align 8
  store i8* %29, i8** %gt_date, align 8
  %30 = load i8*, i8** %gt_date, align 8
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32* %gt_year, i32* %gt_mon, i32* %gt_day, i32* %gt_hour, i32* %gt_min) #4
  %31 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 5
  %32 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 %32, 1900
  %33 = load i32, i32* %gt_year, align 4
  %sub55 = sub nsw i32 %add, %33
  %mul = mul nsw i32 12, %sub55
  %34 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 4
  %35 = load i32, i32* %tm_mon, align 4
  %add56 = add nsw i32 %mul, %35
  %36 = load i32, i32* %gt_mon, align 4
  %sub57 = sub nsw i32 %add56, %36
  %cmp58 = icmp sgt i32 %sub57, 6
  br i1 %cmp58, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.then.51
  %arraydecay61 = getelementptr inbounds [20 x i8], [20 x i8]* %archie_date, i32 0, i32 0
  %37 = load i32, i32* %gt_mon, align 4
  %call62 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 %37)
  %38 = load i32, i32* %gt_day, align 4
  %39 = load i32, i32* %gt_year, align 4
  %call63 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %call62, i32 %38, i32 %39) #4
  br label %if.end.68

if.else.64:                                       ; preds = %if.then.51
  %arraydecay65 = getelementptr inbounds [20 x i8], [20 x i8]* %archie_date, i32 0, i32 0
  %40 = load i32, i32* %gt_mon, align 4
  %call66 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 %40)
  %41 = load i32, i32* %gt_day, align 4
  %42 = load i32, i32* %gt_hour, align 4
  %43 = load i32, i32* %gt_min, align 4
  %call67 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %call66, i32 %41, i32 %42, i32 %43) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.64, %if.then.60
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.else.46
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.43
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %44 = load %struct.pattrib*, %struct.pattrib** %ap, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %44, i32 0, i32 5
  %45 = load %struct.pattrib*, %struct.pattrib** %next, align 8
  store %struct.pattrib* %45, %struct.pattrib** %ap, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %listflag.addr, align 4
  %tobool72 = icmp ne i32 %46, 0
  br i1 %tobool72, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %for.end
  %47 = load i8*, i8** %gt_date, align 8
  %48 = load i32, i32* %size, align 4
  %49 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host74 = getelementptr inbounds %struct.vlink, %struct.vlink* %49, i32 0, i32 8
  %50 = load i8*, i8** %host74, align 8
  %51 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename75 = getelementptr inbounds %struct.vlink, %struct.vlink* %51, i32 0, i32 10
  %52 = load i8*, i8** %filename75, align 8
  %53 = load i32, i32* %dirflag, align 4
  %tobool76 = icmp ne i32 %53, 0
  %cond77 = select i1 %tobool76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* %47, i32 %48, i8* %50, i8* %52, i8* %cond77)
  br label %if.end.85

if.else.79:                                       ; preds = %for.end
  %54 = load i32, i32* %dirflag, align 4
  %tobool80 = icmp ne i32 %54, 0
  %cond81 = select i1 %tobool80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)
  %55 = load i8*, i8** %modes, align 8
  %56 = load i32, i32* %size, align 4
  %arraydecay82 = getelementptr inbounds [20 x i8], [20 x i8]* %archie_date, i32 0, i32 0
  %57 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %name83 = getelementptr inbounds %struct.vlink, %struct.vlink* %57, i32 0, i32 1
  %58 = load i8*, i8** %name83, align 8
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* %cond81, i8* %55, i32 %56, i8* %arraydecay82, i8* %58)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.79, %if.then.73
  %59 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %lattrib86 = getelementptr inbounds %struct.vlink, %struct.vlink* %59, i32 0, i32 17
  %60 = load %struct.pattrib*, %struct.pattrib** %lattrib86, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* %60)
  %61 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %lattrib87 = getelementptr inbounds %struct.vlink, %struct.vlink* %61, i32 0, i32 17
  store %struct.pattrib* null, %struct.pattrib** %lattrib87, align 8
  ret void
}

declare i8* @sindex(...) #1

declare i8* @strcpy(i8*, i8*) #1

declare i64 @strlen(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @month_sname(...) #1

declare void @atlfree(...) #1

; Function Attrs: nounwind uwtable
define void @procquery(i8* %host, i8* %str, i32 %max_hits, i32 %offset, i8 signext %query_type, i32 %sortflag, i32 %listflag) #0 {
entry:
  %host.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %max_hits.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %query_type.addr = alloca i8, align 1
  %sortflag.addr = alloca i32, align 4
  %listflag.addr = alloca i32, align 4
  %l = alloca %struct.vlink*, align 8
  %now = alloca i64, align 8
  store i8* %host, i8** %host.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %max_hits, i32* %max_hits.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i8 %query_type, i8* %query_type.addr, align 1
  store i32 %sortflag, i32* %sortflag.addr, align 4
  store i32 %listflag, i32* %listflag.addr, align 4
  %call = call i64 @time(i64* %now) #4
  %call1 = call %struct.tm* @localtime(i64* %now) #4
  store %struct.tm* %call1, %struct.tm** @presenttime, align 8
  %0 = load i32, i32* %sortflag.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %host.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %max_hits.addr, align 4
  %4 = load i32, i32* %offset.addr, align 4
  %5 = load i8, i8* %query_type.addr, align 1
  %call2 = call %struct.vlink* @archie_query(i8* %1, i8* %2, i32 %3, i32 %4, i8 signext %5, i32 (...)* @invdatecmplink, i32 0)
  store %struct.vlink* %call2, %struct.vlink** %l, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %host.addr, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i32, i32* %max_hits.addr, align 4
  %9 = load i32, i32* %offset.addr, align 4
  %10 = load i8, i8* %query_type.addr, align 1
  %call3 = call %struct.vlink* @archie_query(i8* %6, i8* %7, i32 %8, i32 %9, i8 signext %10, i32 (...)* null, i32 0)
  store %struct.vlink* %call3, %struct.vlink** %l, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* @perrno, align 4
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* @perrno, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i32 0, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.6, label %if.else.17

if.then.6:                                        ; preds = %if.then.5
  %14 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0), align 1
  %tobool7 = icmp ne i8 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.then.6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i32, i32* @perrno, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i32 0, i64 %idxprom9
  %18 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* %16, i8* %18, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0))
  br label %if.end.16

if.else.12:                                       ; preds = %if.then.6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** @progname, align 8
  %21 = load i32, i32* @perrno, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i32 0, i64 %idxprom13
  %22 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %20, i8* %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.12, %if.then.8
  br label %if.end.19

if.else.17:                                       ; preds = %if.then.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i32, i32* @perrno, align 4
  %conv = sext i32 %24 to i64
  %25 = inttoptr i64 %conv to i8*
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* %25, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.end.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %26 = load i32, i32* @pwarn, align 4
  %cmp21 = icmp ne i32 %26, 0
  br i1 %cmp21, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %if.end.20
  %27 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0), align 1
  %tobool24 = icmp ne i8 %27, 0
  br i1 %tobool24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.then.23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progname, align 8
  %30 = load i32, i32* @pwarn, align 4
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i32 0, i64 %idxprom26
  %31 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* %29, i8* %31, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0))
  br label %if.end.33

if.else.29:                                       ; preds = %if.then.23
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** @progname, align 8
  %34 = load i32, i32* @pwarn, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i32 0, i64 %idxprom30
  %35 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* %33, i8* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.29, %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.20
  %36 = load %struct.vlink*, %struct.vlink** %l, align 8
  %cmp35 = icmp eq %struct.vlink* %36, null
  br i1 %cmp35, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.34
  %37 = load i32, i32* @pwarn, align 4
  %cmp37 = icmp eq i32 %37, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* @perrno, align 4
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true.39
  %39 = load i32, i32* %listflag.addr, align 4
  %tobool43 = icmp ne i32 %39, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.then.42
  %call45 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.42
  call void @exit(i32 1) #5
  unreachable

if.end.47:                                        ; preds = %land.lhs.true.39, %land.lhs.true, %if.end.34
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i32 0, i32 0), align 1
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i32 0, i32 0), align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.47
  %40 = load %struct.vlink*, %struct.vlink** %l, align 8
  %cmp48 = icmp ne %struct.vlink* %40, null
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.vlink*, %struct.vlink** %l, align 8
  %42 = load i32, i32* %listflag.addr, align 4
  call void @display_link(%struct.vlink* %41, i32 %42)
  %43 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %43, i32 0, i32 20
  %44 = load %struct.vlink*, %struct.vlink** %next, align 8
  store %struct.vlink* %44, %struct.vlink** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

declare %struct.vlink* @archie_query(i8*, i8*, i32, i32, i8 signext, i32 (...)*, i32) #1

declare i32 @invdatecmplink(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @puts(i8*) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
