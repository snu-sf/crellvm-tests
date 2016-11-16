; ModuleID = './lib-src/movemail.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%struct._popserver = type { i32, i32, i8*, i32, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@delete_lockname = internal global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: movemail [-p] [-r] inbox destfile%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" [POP-password]\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Destination file name is empty\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"po:\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to drop privileges\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Error in fork; %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to regain privileges\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error in waitpid; %s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"movemail: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s for %s\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Error connecting to POP server: %s\00", align 1
@pop_error = external global [0 x i8], align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Error getting message count from POP server: %s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Error in open: %s, %s\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Error in fchown: %s, %s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Error in fdopen: %s\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Error in POP retrieving: %s\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Error in fsync: %s\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Error in fclose: %s\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Error from POP server: %s\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"From movemail %a %b %e %T %Y\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"^_\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %inname = alloca i8*, align 8
  %outname = alloca i8*, align 8
  %indesc = alloca i32, align 4
  %outdesc = alloca i32, align 4
  %nread = alloca i64, align 8
  %wait_status = alloca i32, align 4
  %c = alloca i32, align 4
  %preserve_mail = alloca i8, align 1
  %pop_reverse_order = alloca i8, align 1
  %real_gid = alloca i32, align 4
  %priv_gid = alloca i32, align 4
  %status = alloca i32, align 4
  %lockname = alloca i8*, align 8
  %spool_name = alloca i8*, align 8
  %child = alloca i32, align 4
  %lockcount = alloca i32, align 4
  %status46 = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %saved_errno = alloca i32, align 4
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral157 = alloca %union.anon.0, align 4
  %.compoundliteral164 = alloca %union.anon.1, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %preserve_mail, align 1
  store i8 0, i8* %pop_reverse_order, align 1
  %call = call i32 @getgid() #7
  store i32 %call, i32* %real_gid, align 4
  %call1 = call i32 @getegid() #7
  store i32 %call1, i32* %priv_gid, align 4
  store i8* null, i8** @delete_lockname, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  store i32 %call2, i32* %c, align 4
  %cmp = icmp sle i32 0, %call2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 114, label %sw.bb
    i32 112, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body
  store i8 1, i8* %pop_reverse_order, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i8 1, i8* %preserve_mail, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %3, %4
  %cmp4 = icmp slt i32 %sub, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i32, i32* @optind, align 4
  %sub5 = sub nsw i32 %5, %6
  %cmp6 = icmp sgt i32 %sub5, 3
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  store i8* %10, i8** %inname, align 8
  %11 = load i32, i32* @optind, align 4
  %add = add nsw i32 %11, 1
  %idxprom8 = sext i32 %add to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 %idxprom8
  %13 = load i8*, i8** %arrayidx9, align 8
  store i8* %13, i8** %outname, align 8
  %14 = load i8*, i8** %outname, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  call void @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.13:                                        ; preds = %if.end
  %16 = load i8*, i8** %inname, align 8
  %call14 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3) #9
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end.25, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %17 = load i8*, i8** %inname, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8*, i8** %outname, align 8
  %19 = load i8, i8* %preserve_mail, align 1
  %tobool16 = trunc i8 %19 to i1
  %20 = load i32, i32* %argc.addr, align 4
  %21 = load i32, i32* @optind, align 4
  %sub17 = sub nsw i32 %20, %21
  %cmp18 = icmp eq i32 %sub17, 3
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %22 = load i32, i32* @optind, align 4
  %add20 = add nsw i32 %22, 2
  %idxprom21 = sext i32 %add20 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %23, i64 %idxprom21
  %24 = load i8*, i8** %arrayidx22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ null, %cond.false ]
  %25 = load i8, i8* %pop_reverse_order, align 1
  %tobool23 = trunc i8 %25 to i1
  %call24 = call i32 @popmail(i8* %add.ptr, i8* %18, i1 zeroext %tobool16, i8* %cond, i1 zeroext %tobool23)
  store i32 %call24, i32* %status, align 4
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.13
  %call26 = call i32 @getuid() #7
  %call27 = call i32 @setuid(i32 %call26) #7
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  call void @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.31:                                        ; preds = %if.end.25
  store i8* null, i8** %lockname, align 8
  store i8* null, i8** %spool_name, align 8
  %27 = load i8*, i8** %spool_name, align 8
  %tobool32 = icmp ne i8* %27, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %call35 = call void (i32)* @signal(i32 17, void (i32)* null) #7
  %call36 = call i32 @fork() #7
  store i32 %call36, i32* %child, align 4
  %28 = load i32, i32* %child, align 4
  %cmp37 = icmp slt i32 %28, 0
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.34
  %call40 = call i32* @__errno_location() #10
  %29 = load i32, i32* %call40, align 4
  %call41 = call i8* @strerror(i32 %29) #7
  call void @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %call41, i8* null) #8
  unreachable

if.end.42:                                        ; preds = %if.end.34
  %30 = load i32, i32* %child, align 4
  %cmp43 = icmp eq i32 %30, 0
  br i1 %cmp43, label %if.then.45, label %if.end.145

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %lockcount, align 4
  store i32 0, i32* %status46, align 4
  %call47 = call i32 @getuid() #7
  %call48 = call i32 @setuid(i32 %call47) #7
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.then.45
  %31 = load i32, i32* %real_gid, align 4
  %call52 = call i32 @setregid(i32 -1, i32 %31) #7
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false.51, %if.then.45
  call void @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.56:                                        ; preds = %lor.lhs.false.51
  %32 = load i8*, i8** %inname, align 8
  %call57 = call i32 (i8*, i32, ...) @open(i8* %32, i32 2)
  store i32 %call57, i32* %indesc, align 4
  %33 = load i32, i32* %indesc, align 4
  %cmp58 = icmp slt i32 %33, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %34 = load i8*, i8** %inname, align 8
  call void @pfatal_with_name(i8* %34) #8
  unreachable

if.end.61:                                        ; preds = %if.end.56
  %call62 = call i32 @umask(i32 0) #7
  %and = and i32 %call62, 255
  %call63 = call i32 @umask(i32 %and) #7
  %35 = load i8*, i8** %outname, align 8
  %call64 = call i32 (i8*, i32, ...) @open(i8* %35, i32 193, i32 438)
  store i32 %call64, i32* %outdesc, align 4
  %36 = load i32, i32* %outdesc, align 4
  %cmp65 = icmp slt i32 %36, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.61
  %37 = load i8*, i8** %outname, align 8
  call void @pfatal_with_name(i8* %37) #8
  unreachable

if.end.68:                                        ; preds = %if.end.61
  %38 = load i32, i32* %priv_gid, align 4
  %call69 = call i32 @setregid(i32 -1, i32 %38) #7
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  call void @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.73:                                        ; preds = %if.end.68
  br label %retry_lock

retry_lock:                                       ; preds = %if.then.87, %if.end.73
  %39 = load i32, i32* %indesc, align 4
  %call74 = call i32 @flock(i32 %39, i32 2) #7
  store i32 %call74, i32* %status46, align 4
  %40 = load i32, i32* %status46, align 4
  %cmp75 = icmp slt i32 %40, 0
  br i1 %cmp75, label %if.then.77, label %if.end.90

if.then.77:                                       ; preds = %retry_lock
  %41 = load i32, i32* %lockcount, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %lockcount, align 4
  %cmp78 = icmp sle i32 %inc, 5
  br i1 %cmp78, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.then.77
  %call80 = call i32* @__errno_location() #10
  %42 = load i32, i32* %call80, align 4
  %cmp81 = icmp eq i32 %42, 11
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true
  %call84 = call i32* @__errno_location() #10
  %43 = load i32, i32* %call84, align 4
  %cmp85 = icmp eq i32 %43, 16
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %lor.lhs.false.83, %land.lhs.true
  %call88 = call i32 @sleep(i32 1)
  br label %retry_lock

if.end.89:                                        ; preds = %lor.lhs.false.83, %if.then.77
  %44 = load i8*, i8** %inname, align 8
  call void @pfatal_with_name(i8* %44) #8
  unreachable

if.end.90:                                        ; preds = %retry_lock
  br label %while.body.92

while.body.92:                                    ; preds = %if.end.90, %if.end.110
  %45 = load i32, i32* %indesc, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call93 = call i64 @read(i32 %45, i8* %arraydecay, i64 1024)
  store i64 %call93, i64* %nread, align 8
  %46 = load i64, i64* %nread, align 8
  %cmp94 = icmp slt i64 %46, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %while.body.92
  %47 = load i8*, i8** %inname, align 8
  call void @pfatal_with_name(i8* %47) #8
  unreachable

if.end.97:                                        ; preds = %while.body.92
  %48 = load i64, i64* %nread, align 8
  %49 = load i32, i32* %outdesc, align 4
  %arraydecay98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %50 = load i64, i64* %nread, align 8
  %call99 = call i64 @write(i32 %49, i8* %arraydecay98, i64 %50)
  %cmp100 = icmp ne i64 %48, %call99
  br i1 %cmp100, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %if.end.97
  %call103 = call i32* @__errno_location() #10
  %51 = load i32, i32* %call103, align 4
  store i32 %51, i32* %saved_errno, align 4
  %52 = load i8*, i8** %outname, align 8
  %call104 = call i32 @unlink(i8* %52) #7
  %53 = load i32, i32* %saved_errno, align 4
  %call105 = call i32* @__errno_location() #10
  store i32 %53, i32* %call105, align 4
  %54 = load i8*, i8** %outname, align 8
  call void @pfatal_with_name(i8* %54) #8
  unreachable

if.end.106:                                       ; preds = %if.end.97
  %55 = load i64, i64* %nread, align 8
  %cmp107 = icmp ult i64 %55, 1024
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.106
  br label %while.end.111

if.end.110:                                       ; preds = %if.end.106
  br label %while.body.92

while.end.111:                                    ; preds = %if.then.109
  %56 = load i32, i32* %outdesc, align 4
  %call112 = call i32 @fsync(i32 %56)
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.120

land.lhs.true.115:                                ; preds = %while.end.111
  %call116 = call i32* @__errno_location() #10
  %57 = load i32, i32* %call116, align 4
  %cmp117 = icmp ne i32 %57, 22
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true.115
  %58 = load i8*, i8** %outname, align 8
  call void @pfatal_and_delete(i8* %58) #8
  unreachable

if.end.120:                                       ; preds = %land.lhs.true.115, %while.end.111
  %59 = load i32, i32* %real_gid, align 4
  %call121 = call i32 @setregid(i32 -1, i32 %59) #7
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.120
  call void @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.125:                                       ; preds = %if.end.120
  %60 = load i32, i32* %outdesc, align 4
  %call126 = call i32 @close(i32 %60)
  %cmp127 = icmp ne i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.125
  %61 = load i8*, i8** %outname, align 8
  call void @pfatal_and_delete(i8* %61) #8
  unreachable

if.end.130:                                       ; preds = %if.end.125
  %62 = load i8, i8* %preserve_mail, align 1
  %tobool131 = trunc i8 %62 to i1
  br i1 %tobool131, label %if.end.138, label %if.then.132

if.then.132:                                      ; preds = %if.end.130
  %63 = load i32, i32* %indesc, align 4
  %call133 = call i32 @ftruncate(i32 %63, i64 0) #7
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.132
  %64 = load i8*, i8** %inname, align 8
  call void @pfatal_with_name(i8* %64) #8
  unreachable

if.end.137:                                       ; preds = %if.then.132
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.130
  %65 = load i32, i32* %indesc, align 4
  %call139 = call i32 @close(i32 %65)
  %66 = load i32, i32* %priv_gid, align 4
  %call140 = call i32 @setregid(i32 -1, i32 %66) #7
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.138
  call void @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null) #8
  unreachable

if.end.144:                                       ; preds = %if.end.138
  store i32 0, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.end.42
  %67 = load i32, i32* %child, align 4
  %call146 = call i32 @waitpid(i32 %67, i32* %wait_status, i32 0)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.145
  %call150 = call i32* @__errno_location() #10
  %68 = load i32, i32* %call150, align 4
  %call151 = call i8* @strerror(i32 %68) #7
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %call151, i8* null) #8
  unreachable

if.end.152:                                       ; preds = %if.end.145
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %69 = load i32, i32* %wait_status, align 4
  store i32 %69, i32* %__in, align 4
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %70 = load i32, i32* %__i, align 4
  %and153 = and i32 %70, 127
  %cmp154 = icmp eq i32 %and153, 0
  br i1 %cmp154, label %if.else, label %if.then.156

if.then.156:                                      ; preds = %if.end.152
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.152
  %__in158 = bitcast %union.anon.0* %.compoundliteral157 to i32*
  %71 = load i32, i32* %wait_status, align 4
  store i32 %71, i32* %__in158, align 4
  %__i159 = bitcast %union.anon.0* %.compoundliteral157 to i32*
  %72 = load i32, i32* %__i159, align 4
  %and160 = and i32 %72, 65280
  %shr = ashr i32 %and160, 8
  %cmp161 = icmp ne i32 %shr, 0
  br i1 %cmp161, label %if.then.163, label %if.end.169

if.then.163:                                      ; preds = %if.else
  %__in165 = bitcast %union.anon.1* %.compoundliteral164 to i32*
  %73 = load i32, i32* %wait_status, align 4
  store i32 %73, i32* %__in165, align 4
  %__i166 = bitcast %union.anon.1* %.compoundliteral164 to i32*
  %74 = load i32, i32* %__i166, align 4
  %and167 = and i32 %74, 65280
  %shr168 = ashr i32 %and167, 8
  store i32 %shr168, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.else
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  %75 = load i8*, i8** %lockname, align 8
  %tobool171 = icmp ne i8* %75, null
  br i1 %tobool171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.170
  %76 = load i8*, i8** %lockname, align 8
  %call173 = call i32 @unlink(i8* %76) #7
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.170
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %if.then.163, %if.then.156, %if.end.144, %cond.end, %if.then, %sw.default
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare i32 @getgid() #1

; Function Attrs: nounwind
declare i32 @getegid() #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @fatal(i8* %s1, i8* %s2, i8* %s3) #3 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s3.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %s3, i8** %s3.addr, align 8
  %0 = load i8*, i8** @delete_lockname, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @delete_lockname, align 8
  %call = call i32 @unlink(i8* %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load i8*, i8** %s3.addr, align 8
  call void @error(i8* %2, i8* %3, i8* %4)
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @popmail(i8* %mailbox, i8* %outfile, i1 zeroext %preserve, i8* %password, i1 zeroext %reverse_order) #0 {
entry:
  %retval = alloca i32, align 4
  %mailbox.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %preserve.addr = alloca i8, align 1
  %password.addr = alloca i8*, align 8
  %reverse_order.addr = alloca i8, align 1
  %nmsgs = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %i = alloca i32, align 4
  %mbfi = alloca i32, align 4
  %mbf = alloca %struct._IO_FILE*, align 8
  %server = alloca %struct._popserver*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %increment = alloca i32, align 4
  %user = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  %fchown_errno = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  store i8* %mailbox, i8** %mailbox.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  %frombool = zext i1 %preserve to i8
  store i8 %frombool, i8* %preserve.addr, align 1
  store i8* %password, i8** %password.addr, align 8
  %frombool1 = zext i1 %reverse_order to i8
  store i8 %frombool1, i8* %reverse_order.addr, align 1
  %0 = load i8*, i8** %mailbox.addr, align 8
  store i8* %0, i8** %user, align 8
  %1 = load i8*, i8** %mailbox.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 58) #9
  store i8* %call, i8** %hostname, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hostname, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %hostname, align 8
  store i8 0, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %hostname, align 8
  %4 = load i8*, i8** %user, align 8
  %5 = load i8*, i8** %password.addr, align 8
  %call2 = call %struct._popserver* @pop_open(i8* %3, i8* %4, i8* %5, i32 4)
  store %struct._popserver* %call2, %struct._popserver** %server, align 8
  %6 = load %struct._popserver*, %struct._popserver** %server, align 8
  %tobool3 = icmp ne %struct._popserver* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call6 = call i32 @pop_stat(%struct._popserver* %7, i32* %nmsgs, i32* %nbytes)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  call void @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %8 = load i32, i32* %nmsgs, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %9 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %9)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %10 = load i8*, i8** %outfile.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %10, i32 193, i32 438)
  store i32 %call13, i32* %mbfi, align 4
  %11 = load i32, i32* %mbfi, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %12 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %12)
  %call15 = call i32* @__errno_location() #10
  %13 = load i32, i32* %call15, align 4
  %call16 = call i8* @strerror(i32 %13) #7
  %14 = load i8*, i8** %outfile.addr, align 8
  call void @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* %call16, i8* %14)
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %15 = load i32, i32* %mbfi, align 4
  %call18 = call i32 @getuid() #7
  %call19 = call i32 @fchown(i32 %15, i32 %call18, i32 -1) #7
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %if.end.17
  %call22 = call i32* @__errno_location() #10
  %16 = load i32, i32* %call22, align 4
  store i32 %16, i32* %fchown_errno, align 4
  %17 = load i32, i32* %mbfi, align 4
  %call23 = call i32 @fstat(i32 %17, %struct.stat* %st) #7
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.21
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %18 = load i32, i32* %st_uid, align 4
  %call25 = call i32 @getuid() #7
  %cmp26 = icmp ne i32 %18, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.21
  %19 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %19)
  %20 = load i32, i32* %fchown_errno, align 4
  %call28 = call i8* @strerror(i32 %20) #7
  %21 = load i8*, i8** %outfile.addr, align 8
  call void @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* %call28, i8* %21)
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.17
  %22 = load i32, i32* %mbfi, align 4
  %call31 = call %struct._IO_FILE* @fdopen(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #7
  store %struct._IO_FILE* %call31, %struct._IO_FILE** %mbf, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %tobool32 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool32, label %if.end.38, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  %24 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %24)
  %call34 = call i32* @__errno_location() #10
  %25 = load i32, i32* %call34, align 4
  %call35 = call i8* @strerror(i32 %25) #7
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call35, i8* null)
  %26 = load i32, i32* %mbfi, align 4
  %call36 = call i32 @close(i32 %26)
  %27 = load i8*, i8** %outfile.addr, align 8
  %call37 = call i32 @unlink(i8* %27) #7
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.30
  %28 = load i8, i8* %reverse_order.addr, align 1
  %tobool39 = trunc i8 %28 to i1
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.38
  %29 = load i32, i32* %nmsgs, align 4
  store i32 %29, i32* %start, align 4
  store i32 1, i32* %end, align 4
  store i32 -1, i32* %increment, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.end.38
  store i32 1, i32* %start, align 4
  %30 = load i32, i32* %nmsgs, align 4
  store i32 %30, i32* %end, align 4
  store i32 1, i32* %increment, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.40
  %31 = load i32, i32* %start, align 4
  store i32 %31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %increment, align 4
  %mul = mul nsw i32 %32, %33
  %34 = load i32, i32* %end, align 4
  %35 = load i32, i32* %increment, align 4
  %mul42 = mul nsw i32 %34, %35
  %cmp43 = icmp sle i32 %mul, %mul42
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call44 = call zeroext i1 @mbx_delimit_begin(%struct._IO_FILE* %36)
  br i1 %call44, label %land.lhs.true, label %if.then.51

land.lhs.true:                                    ; preds = %for.body
  %37 = load %struct._popserver*, %struct._popserver** %server, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call45 = call zeroext i1 @pop_retr(%struct._popserver* %37, i32 %38, %struct._IO_FILE* %39)
  br i1 %call45, label %land.lhs.true.46, label %if.then.51

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call47 = call zeroext i1 @mbx_delimit_end(%struct._IO_FILE* %40)
  br i1 %call47, label %land.lhs.true.48, label %if.then.51

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call49 = call i32 @fflush(%struct._IO_FILE* %41)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.end.59, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.48, %land.lhs.true.46, %land.lhs.true, %for.body
  %call52 = call i32* @__errno_location() #10
  %42 = load i32, i32* %call52, align 4
  %tobool53 = icmp ne i32 %42, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.then.51
  %call55 = call i32* @__errno_location() #10
  %43 = load i32, i32* %call55, align 4
  %call56 = call i8* @strerror(i32 %43) #7
  call void @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* %call56, i8* null)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.then.51
  %44 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %45)
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %46 = load i32, i32* %increment, align 4
  %47 = load i32, i32* %i, align 4
  %add = add nsw i32 %47, %46
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %mbfi, align 4
  %call60 = call i32 @fsync(i32 %48)
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.69

land.lhs.true.62:                                 ; preds = %for.end
  %call63 = call i32* @__errno_location() #10
  %49 = load i32, i32* %call63, align 4
  %cmp64 = icmp ne i32 %49, 22
  br i1 %cmp64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true.62
  %call66 = call i32* @__errno_location() #10
  %50 = load i32, i32* %call66, align 4
  %call67 = call i8* @strerror(i32 %50) #7
  call void @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* %call67, i8* null)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %51)
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.62, %for.end
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %52)
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.69
  %call73 = call i32* @__errno_location() #10
  %53 = load i32, i32* %call73, align 4
  %call74 = call i8* @strerror(i32 %53) #7
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call74, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.69
  %54 = load i8, i8* %preserve.addr, align 1
  %tobool76 = trunc i8 %54 to i1
  br i1 %tobool76, label %if.end.87, label %if.then.77

if.then.77:                                       ; preds = %if.end.75
  store i32 1, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.85, %if.then.77
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %nmsgs, align 4
  %cmp79 = icmp sle i32 %55, %56
  br i1 %cmp79, label %for.body.80, label %for.end.86

for.body.80:                                      ; preds = %for.cond.78
  %57 = load %struct._popserver*, %struct._popserver** %server, align 8
  %58 = load i32, i32* %i, align 4
  %call81 = call i32 @pop_delete(%struct._popserver* %57, i32 %58)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body.80
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  %59 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %59)
  store i32 1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %for.body.80
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.78

for.end.86:                                       ; preds = %for.cond.78
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %if.end.75
  %61 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call88 = call i32 @pop_quit(%struct._popserver* %61)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  store i32 1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.then.90, %if.then.83, %if.then.72, %if.then.65, %if.end.57, %if.then.33, %if.then.27, %if.then.14, %if.then.11, %if.then.8, %if.then.4
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @setregid(i32, i32) #1

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @pfatal_with_name(i8* %name) #3 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  %call1 = call i8* @strerror(i32 %0) #7
  %1 = load i8*, i8** %name.addr, align 8
  call void @fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %call1, i8* %1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @umask(i32) #1

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #1

declare i32 @sleep(i32) #2

declare i64 @read(i32, i8*, i64) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare i32 @fsync(i32) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @pfatal_and_delete(i8* %name) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  %call1 = call i8* @strerror(i32 %0) #7
  store i8* %call1, i8** %s, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 @unlink(i8* %1) #7
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %name.addr, align 8
  call void @fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %2, i8* %3) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #1

declare i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @error(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s3.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %s3, i8** %s3.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %1 = load i8*, i8** %s3.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %s1.addr, align 8
  %4 = load i8*, i8** %s2.addr, align 8
  %5 = load i8*, i8** %s3.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4, i8* %5)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %s2.addr, align 8
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %s1.addr, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* %8, i8* %9)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %s1.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._popserver* @pop_open(i8*, i8*, i8*, i32) #2

declare i32 @pop_stat(%struct._popserver*, i32*, i32*) #2

declare void @pop_close(%struct._popserver*) #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mbx_delimit_begin(%struct._IO_FILE* %mbf) #0 {
entry:
  %retval = alloca i1, align 1
  %mbf.addr = alloca %struct._IO_FILE*, align 8
  %now = alloca i64, align 8
  %ltime = alloca %struct.tm*, align 8
  %fromline = alloca [100 x i8], align 16
  store %struct._IO_FILE* %mbf, %struct._IO_FILE** %mbf.addr, align 8
  %call = call i64 @time(i64* null) #7
  store i64 %call, i64* %now, align 8
  %call1 = call %struct.tm* @localtime(i64* %now) #7
  store %struct.tm* %call1, %struct.tm** %ltime, align 8
  %0 = load %struct.tm*, %struct.tm** %ltime, align 8
  %tobool = icmp ne %struct.tm* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %fromline, i32 0, i32 0
  %1 = load %struct.tm*, %struct.tm** %ltime, align 8
  %call2 = call i64 @strftime(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), %struct.tm* %1) #7
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #10
  store i32 75, i32* %call5, align 4
  store i1 false, i1* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %fromline, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf.addr, align 8
  %call8 = call i32 @fputs(i8* %arraydecay7, %struct._IO_FILE* %2)
  %cmp = icmp sle i32 0, %call8
  store i1 %cmp, i1* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %3 = load i1, i1* %retval
  ret i1 %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pop_retr(%struct._popserver* %server, i32 %msgno, %struct._IO_FILE* %arg) #0 {
entry:
  %retval = alloca i1, align 1
  %server.addr = alloca %struct._popserver*, align 8
  %msgno.addr = alloca i32, align 4
  %arg.addr = alloca %struct._IO_FILE*, align 8
  %line = alloca i8*, align 8
  %ret = alloca i32, align 4
  %write_errno = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %msgno, i32* %msgno.addr, align 4
  store %struct._IO_FILE* %arg, %struct._IO_FILE** %arg.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %1 = load i32, i32* %msgno.addr, align 4
  %call = call i32 @pop_retrieve_first(%struct._popserver* %0, i32 %1, i8** %line)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  %call1 = call i32* @__errno_location() #10
  store i32 0, i32* %call1, align 4
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @pop_retrieve_next(%struct._popserver* %2, i8** %line)
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp sge i32 %call2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %line, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  %4 = load i8*, i8** %line, align 8
  %5 = load i32, i32* %ret, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %arg.addr, align 8
  %call6 = call zeroext i1 @mbx_write(i8* %4, i32 %5, %struct._IO_FILE* %6)
  br i1 %call6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32* @__errno_location() #10
  %7 = load i32, i32* %call8, align 4
  store i32 %7, i32* %write_errno, align 4
  %8 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_close(%struct._popserver* %8)
  %9 = load i32, i32* %write_errno, align 4
  %call9 = call i32* @__errno_location() #10
  store i32 %9, i32* %call9, align 4
  store i1 false, i1* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %10 = load i32, i32* %ret, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.end
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pop_error, i32 0, i32 0), i8* null)
  %call13 = call i32* @__errno_location() #10
  store i32 0, i32* %call13, align 4
  store i1 false, i1* %retval
  br label %return

if.end.14:                                        ; preds = %while.end
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %11 = load i1, i1* %retval
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mbx_delimit_end(%struct._IO_FILE* %mbf) #0 {
entry:
  %mbf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %mbf, %struct._IO_FILE** %mbf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf.addr, align 8
  %call = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %0)
  %cmp = icmp sle i32 0, %call
  ret i1 %cmp
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @pop_delete(%struct._popserver*, i32) #2

declare i32 @pop_quit(%struct._popserver*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @pop_retrieve_first(%struct._popserver*, i32, i8**) #2

declare i32 @pop_retrieve_next(%struct._popserver*, i8**) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mbx_write(i8* %line, i32 %len, %struct._IO_FILE* %mbf) #0 {
entry:
  %retval = alloca i1, align 1
  %line.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %mbf.addr = alloca %struct._IO_FILE*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct._IO_FILE* %mbf, %struct._IO_FILE** %mbf.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 31
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %2)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load i8*, i8** %line.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %conv6 = sext i32 %6 to i64
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf.addr, align 8
  %call7 = call i64 @fwrite(i8* %5, i64 1, i64 %conv6, %struct._IO_FILE* %7)
  %8 = load i32, i32* %len.addr, align 4
  %conv8 = sext i32 %8 to i64
  %cmp9 = icmp eq i64 %call7, %conv8
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %mbf.addr, align 8
  %call11 = call i32 @fputc(i32 10, %struct._IO_FILE* %9)
  %cmp12 = icmp sle i32 0, %call11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.5
  %10 = phi i1 [ false, %if.end.5 ], [ %cmp12, %land.rhs ]
  store i1 %10, i1* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.4
  %11 = load i1, i1* %retval
  ret i1 %11
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
