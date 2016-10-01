; ModuleID = './MultiSource.Applications.ClamAV/70.clamscan_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }
%struct.s_du = type { i32, i64 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"unrar\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"arj\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"unzoo\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"jar\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tgz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"deb\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"clamav\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"!Can't get information about user clamav (required to run external unpackers)\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"no-phishing-sigs\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"no-phishing-scan-urls\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"no-phishing-restrictedscan\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"phishing-ssl\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"phishing-cloak\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"dev-ac-only\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"dev-ac-depth\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"detect-pua\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@info = external global %struct.s_info, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"!%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"!Can't initialize the virus database\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"!Database initialization error: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"max-space\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"max-files\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"max-recursion\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"max-mail-recursion\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"max-ratio\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"disable-archive\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"no-archive\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"detect-broken\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"block-encrypted\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"block-max\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"no-pe\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"no-elf\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"no-ole2\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"no-pdf\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"no-html\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"no-mail\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"mail-follow-urls\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"no-algorithmic\00", align 1
@procdev = common global i64 0, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"!Can't get absolute pathname of current working directory\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"^Can't access file %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"*Full path: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"!Not supported file type (%s)\0A\00", align 1
@printinfected = external global i16, align 2
@.str.49 = private unnamed_addr constant [22 x i8] c"%s: Excluded (/proc)\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"%s: Excluded\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"%s: Empty file\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"%s: Access denied\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c".rar\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"^%s: Can't remove\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"%s: Removed\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c".arj\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c".zoo\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c".jar\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c".lzh\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c".deb\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c".tar.gz\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c".tgz\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"^Can't get information about user clamav\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"^Can't fork\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"^%s: Access denied to archive\0A\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"^%s: Archive too big\0A\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"!Can't write to temporary directory\0A\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"!Can't open %s for writing\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.79 = private unnamed_addr constant [20 x i8] c"!Can't write to %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"*Checking %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"stdin: %s FOUND\0A\00", align 1
@bell = external global i16, align 2
@stderr = external global %struct._IO_FILE*, align 8
@.str.82 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"stdin: OK\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"stdin: %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"*Scanning %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"^Can't open file %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"%s: %s FOUND\0A\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"%s: OK\0A\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"!opt_arg() returned NULL\0A\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"!Can't %s file '%s': cannot write to '%s': %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"!malloc() failed\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"!cli_strrcpy() returned NULL\0A\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"!strcat() returned NULL\0A\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"File excluded '%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c".%03d\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"!Can't %s '%s' to '%s': %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"!Can't unlink '%s': %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"%s: %s to '%s'\0A\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"moved\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"copied\00", align 1
@.str.103 = private unnamed_addr constant [42 x i8] c"^Suspect archive %s (not a regular file)\0A\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"!Can't write to the temporary directory %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"^Can't create the temporary directory %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"!I/O error\0A\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"copyfile()\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"(Real infected archive: %s)\0A\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"!Can't write to the temporary directory\0A\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"!Can't create the temporary directory %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"clam\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"-p-\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"xf\00", align 1
@scancompressed.args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* null], align 16
@.str.121 = private unnamed_addr constant [6 x i8] c"-xpvf\00", align 1
@scancompressed.args.122 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* null], align 16
@.str.123 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@scancompressed.args.124 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* null], align 16
@.str.125 = private unnamed_addr constant [7 x i8] c"-zxpvf\00", align 1
@scancompressed.args.126 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* null], align 16
@recursion = external global i16, align 2
@.str.127 = private unnamed_addr constant [12 x i8] c"leave-temps\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"!Can't fork()\0A\00", align 1
@.str.129 = private unnamed_addr constant [86 x i8] c"^Can't execute some unpacker. Check paths and permissions on the temporary directory\0A\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"%s: Infected.Archive FOUND\0A\00", align 1
@.str.131 = private unnamed_addr constant [50 x i8] c"^Strange value (%d) returned in scancompressed()\0A\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"ERROR: setgid(%d) failed\0A\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"ERROR: setuid(%d) failed\0A\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"ERROR: chdir(%s) failed\0A\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.136 = private unnamed_addr constant [69 x i8] c"Non fatal error: cannot open /dev/null. Continuing with full output\0A\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"execv(p)\00", align 1
@.str.138 = private unnamed_addr constant [28 x i8] c"*n.files: %u, n.space: %lu\0A\00", align 1
@.str.139 = private unnamed_addr constant [53 x i8] c"\0AUnpacker process %d stopped due to exceeded limits\0A\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"^Can't run %s\0A\00", align 1
@.str.141 = private unnamed_addr constant [44 x i8] c"^\0AUnpacker stopped with external signal %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @scanmanager(%struct.optstruct* %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca %struct.optstruct*, align 8
  %fmode = alloca i32, align 4
  %ret = alloca i32, align 4
  %extunpacker = alloca i32, align 4
  %fmodeint = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %options = alloca i32, align 4
  %dboptions = alloca i32, align 4
  %engine = alloca %struct.cl_engine*, align 8
  %limits = alloca %struct.cl_limits, align 8
  %user = alloca %struct.passwd*, align 8
  %sb = alloca %struct.stat, align 8
  %fullpath = alloca i8*, align 8
  %cwd = alloca [1024 x i8], align 16
  %dbdir = alloca i8*, align 8
  %cpy = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %thefilename = alloca i8*, align 8
  %slash = alloca i32, align 4
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %extunpacker, align 4
  store i32 0, i32* %options, align 4
  store i32 0, i32* %dboptions, align 4
  store %struct.cl_engine* null, %struct.cl_engine** %engine, align 8
  store %struct.passwd* null, %struct.passwd** %user, align 8
  store i8* null, i8** %fullpath, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call = call i32 @opt_check(%struct.optstruct* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call1 = call i32 @opt_check(%struct.optstruct* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call4 = call i32 @opt_check(%struct.optstruct* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %3 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call7 = call i32 @opt_check(%struct.optstruct* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %4 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call10 = call i32 @opt_check(%struct.optstruct* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %5 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call13 = call i32 @opt_check(%struct.optstruct* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %6 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call16 = call i32 @opt_check(%struct.optstruct* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %7 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call19 = call i32 @opt_check(%struct.optstruct* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %8 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call22 = call i32 @opt_check(%struct.optstruct* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %extunpacker, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.21
  %9 = load i32, i32* %extunpacker, align 4
  %tobool24 = icmp ne i32 %9, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end
  %call25 = call i32 @geteuid() #5
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true
  %call28 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  store %struct.passwd* %call28, %struct.passwd** %user, align 8
  %cmp = icmp eq %struct.passwd* %call28, null
  br i1 %cmp, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.27
  %call30 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 60) #7
  unreachable

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %if.end
  %10 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call33 = call i32 @opt_check(%struct.optstruct* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  %11 = load i32, i32* %dboptions, align 4
  %or = or i32 %11, 2
  store i32 %or, i32* %dboptions, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %12 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call37 = call i32 @opt_check(%struct.optstruct* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %13 = load i32, i32* %dboptions, align 4
  %or40 = or i32 %13, 8
  store i32 %or40, i32* %dboptions, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %14 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call42 = call i32 @opt_check(%struct.optstruct* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  %15 = load i32, i32* %options, align 4
  %or45 = or i32 %15, 1024
  store i32 %or45, i32* %options, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %16 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call47 = call i32 @opt_check(%struct.optstruct* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %17 = load i32, i32* %options, align 4
  %or50 = or i32 %17, 2048
  store i32 %or50, i32* %options, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.46
  %18 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call52 = call i32 @opt_check(%struct.optstruct* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.51
  %19 = load i32, i32* %options, align 4
  %or55 = or i32 %19, 4096
  store i32 %or55, i32* %options, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.51
  %20 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call57 = call i32 @opt_check(%struct.optstruct* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.56
  %21 = load i32, i32* %dboptions, align 4
  %or60 = or i32 %21, 4
  store i32 %or60, i32* %dboptions, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.56
  %22 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call62 = call i32 @opt_check(%struct.optstruct* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  %23 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call65 = call i8* @opt_arg(%struct.optstruct* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  %call66 = call i32 @atoi(i8* %call65) #8
  %conv = trunc i32 %call66 to i8
  call void @cli_ac_setdepth(i8 zeroext 2, i8 zeroext %conv)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.61
  %24 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call68 = call i32 @opt_check(%struct.optstruct* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %25 = load i32, i32* %dboptions, align 4
  %or71 = or i32 %25, 16
  store i32 %or71, i32* %dboptions, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  %26 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call73 = call i32 @opt_check(%struct.optstruct* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.72
  %27 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call76 = call i8* @opt_arg(%struct.optstruct* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %28 = load i32, i32* %dboptions, align 4
  %call77 = call i32 @cl_load(i8* %call76, %struct.cl_engine** %engine, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 0), i32 %28)
  store i32 %call77, i32* %ret, align 4
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.then.75
  %29 = load i32, i32* %ret, align 4
  %call80 = call i8* @cl_strerror(i32 %29)
  %call81 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %call80)
  store i32 50, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.75
  br label %if.end.90

if.else:                                          ; preds = %if.end.72
  %call83 = call i8* @freshdbdir()
  store i8* %call83, i8** %dbdir, align 8
  %30 = load i8*, i8** %dbdir, align 8
  %31 = load i32, i32* %dboptions, align 4
  %call84 = call i32 @cl_load(i8* %30, %struct.cl_engine** %engine, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 0), i32 %31)
  store i32 %call84, i32* %ret, align 4
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.else
  %32 = load i32, i32* %ret, align 4
  %call87 = call i8* @cl_strerror(i32 %32)
  %call88 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %call87)
  %33 = load i8*, i8** %dbdir, align 8
  call void @free(i8* %33) #5
  store i32 50, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.else
  %34 = load i8*, i8** %dbdir, align 8
  call void @free(i8* %34) #5
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.82
  %35 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %tobool91 = icmp ne %struct.cl_engine* %35, null
  br i1 %tobool91, label %if.end.94, label %if.then.92

if.then.92:                                       ; preds = %if.end.90
  %call93 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0))
  store i32 50, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.90
  %36 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %call95 = call i32 @cl_build(%struct.cl_engine* %36)
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.94
  %37 = load i32, i32* %ret, align 4
  %call99 = call i8* @cl_strerror(i32 %37)
  %call100 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %call99)
  store i32 50, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.94
  %38 = bitcast %struct.cl_limits* %limits to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 32, i32 8, i1 false)
  %39 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call102 = call i32 @opt_check(%struct.optstruct* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.126

if.then.104:                                      ; preds = %if.end.101
  %40 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call105 = call i8* @opt_arg(%struct.optstruct* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call105, i8** %ptr, align 8
  %41 = load i8*, i8** %ptr, align 8
  %call106 = call i64 @strlen(i8* %41) #8
  %sub = sub i64 %call106, 1
  %42 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 %sub
  %43 = load i8, i8* %arrayidx, align 1
  %conv107 = sext i8 %43 to i32
  %call108 = call i32 @tolower(i32 %conv107) #5
  %cmp109 = icmp eq i32 %call108, 109
  br i1 %cmp109, label %if.then.111, label %if.else.120

if.then.111:                                      ; preds = %if.then.104
  %44 = load i8*, i8** %ptr, align 8
  %call112 = call i64 @strlen(i8* %44) #8
  %call113 = call noalias i8* @calloc(i64 %call112, i64 1) #5
  store i8* %call113, i8** %cpy, align 8
  %45 = load i8*, i8** %cpy, align 8
  %46 = load i8*, i8** %ptr, align 8
  %47 = load i8*, i8** %ptr, align 8
  %call114 = call i64 @strlen(i8* %47) #8
  %sub115 = sub i64 %call114, 1
  %call116 = call i8* @strncpy(i8* %45, i8* %46, i64 %sub115) #5
  %48 = load i8*, i8** %cpy, align 8
  %call117 = call i32 @atoi(i8* %48) #8
  %mul = mul nsw i32 %call117, 1024
  %mul118 = mul nsw i32 %mul, 1024
  %conv119 = sext i32 %mul118 to i64
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 5
  store i64 %conv119, i64* %maxfilesize, align 8
  %49 = load i8*, i8** %cpy, align 8
  call void @free(i8* %49) #5
  br label %if.end.125

if.else.120:                                      ; preds = %if.then.104
  %50 = load i8*, i8** %ptr, align 8
  %call121 = call i32 @atoi(i8* %50) #8
  %mul122 = mul nsw i32 %call121, 1024
  %conv123 = sext i32 %mul122 to i64
  %maxfilesize124 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 5
  store i64 %conv123, i64* %maxfilesize124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.120, %if.then.111
  br label %if.end.128

if.else.126:                                      ; preds = %if.end.101
  %maxfilesize127 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 5
  store i64 10485760, i64* %maxfilesize127, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.end.125
  %51 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call129 = call i32 @opt_check(%struct.optstruct* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %if.end.128
  %52 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call132 = call i8* @opt_arg(%struct.optstruct* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %call133 = call i32 @atoi(i8* %call132) #8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 1
  store i32 %call133, i32* %maxfiles, align 4
  br label %if.end.136

if.else.134:                                      ; preds = %if.end.128
  %maxfiles135 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 1
  store i32 500, i32* %maxfiles135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.131
  %53 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call137 = call i32 @opt_check(%struct.optstruct* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.else.142

if.then.139:                                      ; preds = %if.end.136
  %54 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call140 = call i8* @opt_arg(%struct.optstruct* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  %call141 = call i32 @atoi(i8* %call140) #8
  %maxreclevel = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 0
  store i32 %call141, i32* %maxreclevel, align 4
  br label %if.end.144

if.else.142:                                      ; preds = %if.end.136
  %maxreclevel143 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 0
  store i32 8, i32* %maxreclevel143, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.then.139
  %55 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call145 = call i32 @opt_check(%struct.optstruct* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.147, label %if.else.150

if.then.147:                                      ; preds = %if.end.144
  %56 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call148 = call i8* @opt_arg(%struct.optstruct* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  %call149 = call i32 @atoi(i8* %call148) #8
  %maxmailrec = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 2
  store i32 %call149, i32* %maxmailrec, align 4
  br label %if.end.152

if.else.150:                                      ; preds = %if.end.144
  %maxmailrec151 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 2
  store i32 64, i32* %maxmailrec151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.147
  %57 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call153 = call i32 @opt_check(%struct.optstruct* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0))
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.158

if.then.155:                                      ; preds = %if.end.152
  %58 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call156 = call i8* @opt_arg(%struct.optstruct* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0))
  %call157 = call i32 @atoi(i8* %call156) #8
  %maxratio = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 3
  store i32 %call157, i32* %maxratio, align 4
  br label %if.end.160

if.else.158:                                      ; preds = %if.end.152
  %maxratio159 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %limits, i32 0, i32 3
  store i32 250, i32* %maxratio159, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.155
  %59 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call161 = call i32 @opt_check(%struct.optstruct* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0))
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.166, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.end.160
  %60 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call164 = call i32 @opt_check(%struct.optstruct* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %lor.lhs.false.163, %if.end.160
  %61 = load i32, i32* %options, align 4
  %and = and i32 %61, -2
  store i32 %and, i32* %options, align 4
  br label %if.end.169

if.else.167:                                      ; preds = %lor.lhs.false.163
  %62 = load i32, i32* %options, align 4
  %or168 = or i32 %62, 1
  store i32 %or168, i32* %options, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.167, %if.then.166
  %63 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call170 = call i32 @opt_check(%struct.optstruct* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0))
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.169
  %64 = load i32, i32* %options, align 4
  %or173 = or i32 %64, 64
  store i32 %or173, i32* %options, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.169
  %65 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call175 = call i32 @opt_check(%struct.optstruct* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.end.174
  %66 = load i32, i32* %options, align 4
  %or178 = or i32 %66, 8
  store i32 %or178, i32* %options, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.end.174
  %67 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call180 = call i32 @opt_check(%struct.optstruct* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.179
  %68 = load i32, i32* %options, align 4
  %or183 = or i32 %68, 256
  store i32 %or183, i32* %options, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %if.end.179
  %69 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call185 = call i32 @opt_check(%struct.optstruct* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then.187, label %if.else.189

if.then.187:                                      ; preds = %if.end.184
  %70 = load i32, i32* %options, align 4
  %and188 = and i32 %70, -33
  store i32 %and188, i32* %options, align 4
  br label %if.end.191

if.else.189:                                      ; preds = %if.end.184
  %71 = load i32, i32* %options, align 4
  %or190 = or i32 %71, 32
  store i32 %or190, i32* %options, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.189, %if.then.187
  %72 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call192 = call i32 @opt_check(%struct.optstruct* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.end.191
  %73 = load i32, i32* %options, align 4
  %and195 = and i32 %73, -8193
  store i32 %and195, i32* %options, align 4
  br label %if.end.198

if.else.196:                                      ; preds = %if.end.191
  %74 = load i32, i32* %options, align 4
  %or197 = or i32 %74, 8192
  store i32 %or197, i32* %options, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %if.then.194
  %75 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call199 = call i32 @opt_check(%struct.optstruct* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then.201, label %if.else.203

if.then.201:                                      ; preds = %if.end.198
  %76 = load i32, i32* %options, align 4
  %and202 = and i32 %76, -5
  store i32 %and202, i32* %options, align 4
  br label %if.end.205

if.else.203:                                      ; preds = %if.end.198
  %77 = load i32, i32* %options, align 4
  %or204 = or i32 %77, 4
  store i32 %or204, i32* %options, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.203, %if.then.201
  %78 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call206 = call i32 @opt_check(%struct.optstruct* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0))
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %if.end.205
  %79 = load i32, i32* %options, align 4
  %and209 = and i32 %79, -16385
  store i32 %and209, i32* %options, align 4
  br label %if.end.212

if.else.210:                                      ; preds = %if.end.205
  %80 = load i32, i32* %options, align 4
  %or211 = or i32 %80, 16384
  store i32 %or211, i32* %options, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.210, %if.then.208
  %81 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call213 = call i32 @opt_check(%struct.optstruct* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.217

if.then.215:                                      ; preds = %if.end.212
  %82 = load i32, i32* %options, align 4
  %and216 = and i32 %82, -17
  store i32 %and216, i32* %options, align 4
  br label %if.end.219

if.else.217:                                      ; preds = %if.end.212
  %83 = load i32, i32* %options, align 4
  %or218 = or i32 %83, 16
  store i32 %or218, i32* %options, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.217, %if.then.215
  %84 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call220 = call i32 @opt_check(%struct.optstruct* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0))
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then.222, label %if.else.224

if.then.222:                                      ; preds = %if.end.219
  %85 = load i32, i32* %options, align 4
  %and223 = and i32 %85, -3
  store i32 %and223, i32* %options, align 4
  br label %if.end.231

if.else.224:                                      ; preds = %if.end.219
  %86 = load i32, i32* %options, align 4
  %or225 = or i32 %86, 2
  store i32 %or225, i32* %options, align 4
  %87 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call226 = call i32 @opt_check(%struct.optstruct* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0))
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.else.224
  %88 = load i32, i32* %options, align 4
  %or229 = or i32 %88, 128
  store i32 %or229, i32* %options, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.else.224
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.222
  %89 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call232 = call i32 @opt_check(%struct.optstruct* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0))
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.234, label %if.else.236

if.then.234:                                      ; preds = %if.end.231
  %90 = load i32, i32* %options, align 4
  %and235 = and i32 %90, -513
  store i32 %and235, i32* %options, align 4
  br label %if.end.238

if.else.236:                                      ; preds = %if.end.231
  %91 = load i32, i32* %options, align 4
  %or237 = or i32 %91, 512
  store i32 %or237, i32* %options, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.236, %if.then.234
  store i64 0, i64* @procdev, align 8
  %call239 = call i32 @stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), %struct.stat* %sb) #5
  %cmp240 = icmp ne i32 %call239, -1
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.245

land.lhs.true.242:                                ; preds = %if.end.238
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %92 = load i64, i64* %st_size, align 8
  %tobool243 = icmp ne i64 %92, 0
  br i1 %tobool243, label %if.end.245, label %if.then.244

if.then.244:                                      ; preds = %land.lhs.true.242
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 0
  %93 = load i64, i64* %st_dev, align 8
  store i64 %93, i64* @procdev, align 8
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %land.lhs.true.242, %if.end.238
  %94 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename = getelementptr inbounds %struct.optstruct, %struct.optstruct* %94, i32 0, i32 1
  %95 = load i8*, i8** %filename, align 8
  %cmp246 = icmp eq i8* %95, null
  br i1 %cmp246, label %if.then.253, label %lor.lhs.false.248

lor.lhs.false.248:                                ; preds = %if.end.245
  %96 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename249 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %96, i32 0, i32 1
  %97 = load i8*, i8** %filename249, align 8
  %call250 = call i64 @strlen(i8* %97) #8
  %cmp251 = icmp eq i64 %call250, 0
  br i1 %cmp251, label %if.then.253, label %if.else.262

if.then.253:                                      ; preds = %lor.lhs.false.248, %if.end.245
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i32 0, i32 0
  %call254 = call i8* @getcwd(i8* %arraydecay, i64 1024) #5
  %tobool255 = icmp ne i8* %call254, null
  br i1 %tobool255, label %if.else.258, label %if.then.256

if.then.256:                                      ; preds = %if.then.253
  %call257 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.42, i32 0, i32 0))
  store i32 57, i32* %ret, align 4
  br label %if.end.261

if.else.258:                                      ; preds = %if.then.253
  %arraydecay259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i32 0, i32 0
  %98 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %99 = load %struct.passwd*, %struct.passwd** %user, align 8
  %100 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %101 = load i32, i32* %options, align 4
  %call260 = call i32 @scandirs(i8* %arraydecay259, %struct.cl_engine* %98, %struct.passwd* %99, %struct.optstruct* %100, %struct.cl_limits* %limits, i32 %101)
  store i32 %call260, i32* %ret, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.256
  br label %if.end.353

if.else.262:                                      ; preds = %lor.lhs.false.248
  %102 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename263 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %102, i32 0, i32 1
  %103 = load i8*, i8** %filename263, align 8
  %call264 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #8
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %if.else.268, label %if.then.266

if.then.266:                                      ; preds = %if.else.262
  %104 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %105 = load i32, i32* %options, align 4
  %call267 = call i32 @scanstdin(%struct.cl_engine* %104, %struct.cl_limits* %limits, i32 %105)
  store i32 %call267, i32* %ret, align 4
  br label %if.end.352

if.else.268:                                      ; preds = %if.else.262
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.350, %if.else.268
  %106 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename269 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %106, i32 0, i32 1
  %107 = load i8*, i8** %filename269, align 8
  %108 = load i32, i32* %x, align 4
  %call270 = call i8* @cli_strtok(i8* %107, i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  store i8* %call270, i8** %thefilename, align 8
  %cmp271 = icmp ne i8* %call270, null
  br i1 %cmp271, label %for.body, label %for.end.351

for.body:                                         ; preds = %for.cond
  %109 = load i8*, i8** %thefilename, align 8
  %call273 = call i32 @fileinfo(i8* %109, i16 signext 2)
  store i32 %call273, i32* %fmodeint, align 4
  %cmp274 = icmp eq i32 %call273, -1
  br i1 %cmp274, label %if.then.276, label %if.else.278

if.then.276:                                      ; preds = %for.body
  %110 = load i8*, i8** %thefilename, align 8
  %call277 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i8* %110)
  %111 = load i8*, i8** %thefilename, align 8
  call void @perror(i8* %111)
  store i32 56, i32* %ret, align 4
  br label %if.end.349

if.else.278:                                      ; preds = %for.body
  store i32 1, i32* %slash, align 4
  %112 = load i8*, i8** %thefilename, align 8
  %call279 = call i64 @strlen(i8* %112) #8
  %sub280 = sub i64 %call279, 1
  %conv281 = trunc i64 %sub280 to i32
  store i32 %conv281, i32* %i, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc, %if.else.278
  %113 = load i32, i32* %i, align 4
  %cmp283 = icmp sgt i32 %113, 0
  br i1 %cmp283, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.282
  %114 = load i32, i32* %slash, align 4
  %tobool285 = icmp ne i32 %114, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.282
  %115 = phi i1 [ false, %for.cond.282 ], [ %tobool285, %land.rhs ]
  br i1 %115, label %for.body.286, label %for.end

for.body.286:                                     ; preds = %land.end
  %116 = load i32, i32* %i, align 4
  %idxprom = sext i32 %116 to i64
  %117 = load i8*, i8** %thefilename, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %117, i64 %idxprom
  %118 = load i8, i8* %arrayidx287, align 1
  %conv288 = sext i8 %118 to i32
  %cmp289 = icmp eq i32 %conv288, 47
  br i1 %cmp289, label %if.then.291, label %if.else.294

if.then.291:                                      ; preds = %for.body.286
  %119 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %119 to i64
  %120 = load i8*, i8** %thefilename, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %120, i64 %idxprom292
  store i8 0, i8* %arrayidx293, align 1
  br label %if.end.295

if.else.294:                                      ; preds = %for.body.286
  store i32 0, i32* %slash, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.294, %if.then.291
  br label %for.inc

for.inc:                                          ; preds = %if.end.295
  %121 = load i32, i32* %i, align 4
  %dec = add nsw i32 %121, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.282

for.end:                                          ; preds = %land.end
  %122 = load i32, i32* %fmodeint, align 4
  store i32 %122, i32* %fmode, align 4
  %123 = load i32, i32* %extunpacker, align 4
  %tobool296 = icmp ne i32 %123, 0
  br i1 %tobool296, label %land.lhs.true.297, label %if.else.324

land.lhs.true.297:                                ; preds = %for.end
  %124 = load i8*, i8** %thefilename, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx298, align 1
  %conv299 = sext i8 %125 to i32
  %cmp300 = icmp ne i32 %conv299, 47
  br i1 %cmp300, label %land.lhs.true.302, label %if.else.324

land.lhs.true.302:                                ; preds = %land.lhs.true.297
  %126 = load i8*, i8** %thefilename, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx303, align 1
  %conv304 = sext i8 %127 to i32
  %cmp305 = icmp ne i32 %conv304, 92
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.324

land.lhs.true.307:                                ; preds = %land.lhs.true.302
  %128 = load i8*, i8** %thefilename, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx308, align 1
  %conv309 = sext i8 %129 to i32
  %cmp310 = icmp ne i32 %conv309, 58
  br i1 %cmp310, label %if.then.312, label %if.else.324

if.then.312:                                      ; preds = %land.lhs.true.307
  %arraydecay313 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i32 0, i32 0
  %call314 = call i8* @getcwd(i8* %arraydecay313, i64 1024) #5
  %tobool315 = icmp ne i8* %call314, null
  br i1 %tobool315, label %if.else.318, label %if.then.316

if.then.316:                                      ; preds = %if.then.312
  %call317 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.42, i32 0, i32 0))
  store i32 57, i32* %retval
  br label %return

if.else.318:                                      ; preds = %if.then.312
  %call319 = call noalias i8* @malloc(i64 512) #5
  store i8* %call319, i8** %fullpath, align 8
  %130 = load i8*, i8** %fullpath, align 8
  %arraydecay320 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i32 0, i32 0
  %131 = load i8*, i8** %thefilename, align 8
  %call321 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %130, i64 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay320, i8* %131) #5
  %132 = load i8*, i8** %fullpath, align 8
  %call322 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8* %132)
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.318
  br label %if.end.325

if.else.324:                                      ; preds = %land.lhs.true.307, %land.lhs.true.302, %land.lhs.true.297, %for.end
  %133 = load i8*, i8** %thefilename, align 8
  store i8* %133, i8** %fullpath, align 8
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.324, %if.end.323
  %134 = load i32, i32* %fmode, align 4
  %and326 = and i32 %134, 61440
  switch i32 %and326, label %sw.default [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb.328
  ]

sw.bb:                                            ; preds = %if.end.325
  %135 = load i8*, i8** %fullpath, align 8
  %136 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %137 = load %struct.passwd*, %struct.passwd** %user, align 8
  %138 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %139 = load i32, i32* %options, align 4
  %call327 = call i32 @scanfile(i8* %135, %struct.cl_engine* %136, %struct.passwd* %137, %struct.optstruct* %138, %struct.cl_limits* %limits, i32 %139)
  store i32 %call327, i32* %ret, align 4
  br label %sw.epilog

sw.bb.328:                                        ; preds = %if.end.325
  %140 = load i8*, i8** %fullpath, align 8
  %141 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %142 = load %struct.passwd*, %struct.passwd** %user, align 8
  %143 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %144 = load i32, i32* %options, align 4
  %call329 = call i32 @scandirs(i8* %140, %struct.cl_engine* %141, %struct.passwd* %142, %struct.optstruct* %143, %struct.cl_limits* %limits, i32 %144)
  store i32 %call329, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.325
  %145 = load i8*, i8** %thefilename, align 8
  %call330 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0), i8* %145)
  store i32 52, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.328, %sw.bb
  %146 = load i32, i32* %extunpacker, align 4
  %tobool331 = icmp ne i32 %146, 0
  br i1 %tobool331, label %land.lhs.true.332, label %if.end.348

land.lhs.true.332:                                ; preds = %sw.epilog
  %147 = load i8*, i8** %thefilename, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %147, i64 0
  %148 = load i8, i8* %arrayidx333, align 1
  %conv334 = sext i8 %148 to i32
  %cmp335 = icmp ne i32 %conv334, 47
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.348

land.lhs.true.337:                                ; preds = %land.lhs.true.332
  %149 = load i8*, i8** %thefilename, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx338, align 1
  %conv339 = sext i8 %150 to i32
  %cmp340 = icmp ne i32 %conv339, 92
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.348

land.lhs.true.342:                                ; preds = %land.lhs.true.337
  %151 = load i8*, i8** %thefilename, align 8
  %arrayidx343 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx343, align 1
  %conv344 = sext i8 %152 to i32
  %cmp345 = icmp ne i32 %conv344, 58
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %land.lhs.true.342
  %153 = load i8*, i8** %fullpath, align 8
  call void @free(i8* %153) #5
  store i8* null, i8** %fullpath, align 8
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.347, %land.lhs.true.342, %land.lhs.true.337, %land.lhs.true.332, %sw.epilog
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.then.276
  %154 = load i8*, i8** %thefilename, align 8
  call void @free(i8* %154) #5
  br label %for.inc.350

for.inc.350:                                      ; preds = %if.end.349
  %155 = load i32, i32* %x, align 4
  %inc = add nsw i32 %155, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end.351:                                      ; preds = %for.cond
  br label %if.end.352

if.end.352:                                       ; preds = %for.end.351, %if.then.266
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.261
  %156 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  call void @cl_free(%struct.cl_engine* %156)
  %157 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %tobool354 = icmp ne i32 %157, 0
  br i1 %tobool354, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %if.end.353
  store i32 1, i32* %ret, align 4
  br label %if.end.361

if.else.356:                                      ; preds = %if.end.353
  %158 = load i32, i32* %ret, align 4
  %cmp357 = icmp slt i32 %158, 50
  br i1 %cmp357, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %if.else.356
  store i32 0, i32* %ret, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %if.else.356
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.355
  %159 = load i32, i32* %ret, align 4
  store i32 %159, i32* %retval
  br label %return

return:                                           ; preds = %if.end.361, %if.then.316, %if.then.98, %if.then.92, %if.then.86, %if.then.79
  %160 = load i32, i32* %retval
  ret i32 %160
}

declare i32 @opt_check(%struct.optstruct*, i8*) #1

; Function Attrs: nounwind
declare i32 @geteuid() #2

declare %struct.passwd* @getpwnam(i8*) #1

declare i32 @logg(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @cli_ac_setdepth(i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i8* @opt_arg(%struct.optstruct*, i8*) #1

declare i32 @cl_load(i8*, %struct.cl_engine**, i32*, i32) #1

declare i8* @cl_strerror(i32) #1

declare i8* @freshdbdir() #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @cl_build(%struct.cl_engine*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @scandirs(i8* %dirname, %struct.cl_engine* %engine, %struct.passwd* %user, %struct.optstruct* %opt, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %dirname.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load i8*, i8** %dirname.addr, align 8
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %2 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %3 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %4 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %5 = load i32, i32* %options.addr, align 4
  %call = call i32 @treewalk(i8* %0, %struct.cl_engine* %1, %struct.passwd* %2, %struct.optstruct* %3, %struct.cl_limits* %4, i32 %5, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @scanstdin(%struct.cl_engine* %engine, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %virname = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %file = alloca i8*, align 8
  %buff = alloca [8192 x i8], align 16
  %fs = alloca %struct._IO_FILE*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0)) #5
  store i8* %call, i8** %tmpdir, align 8
  %0 = load i8*, i8** %tmpdir, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %tmpdir, align 8
  %call1 = call i32 @checkaccess(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 2)
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0))
  store i32 64, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %2 = load i8*, i8** %tmpdir, align 8
  %call6 = call i8* @cli_gentemp(i8* %2)
  store i8* %call6, i8** %file, align 8
  %3 = load i8*, i8** %file, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %fs, align 8
  %tobool = icmp ne %struct._IO_FILE* %call7, null
  br i1 %tobool, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %4 = load i8*, i8** %file, align 8
  %call9 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0), i8* %4)
  %5 = load i8*, i8** %file, align 8
  call void @free(i8* %5) #5
  store i32 63, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.10
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call11 = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %6)
  %conv = trunc i64 %call11 to i32
  store i32 %conv, i32* %ret, align 4
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %7 = load i32, i32* %ret, align 4
  %conv14 = sext i32 %7 to i64
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call15 = call i64 @fwrite(i8* %arraydecay13, i64 1, i64 %conv14, %struct._IO_FILE* %8)
  %9 = load i32, i32* %ret, align 4
  %conv16 = sext i32 %9 to i64
  %cmp17 = icmp ult i64 %call15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.body
  %10 = load i8*, i8** %file, align 8
  %call20 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), i8* %10)
  %11 = load i8*, i8** %file, align 8
  call void @free(i8* %11) #5
  store i32 58, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %12)
  %13 = load i8*, i8** %file, align 8
  %call23 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 2), align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 2), align 4
  %15 = load i8*, i8** %file, align 8
  %16 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %17 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %18 = load i32, i32* %options.addr, align 4
  %call24 = call i32 @cl_scanfile(i8* %15, i8** %virname, i64* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 6), %struct.cl_engine* %16, %struct.cl_limits* %17, i32 %18)
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %while.end
  %19 = load i8*, i8** %virname, align 8
  %call28 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* %19)
  %20 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %inc29 = add i32 %20, 1
  store i32 %inc29, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %21 = load i16, i16* @bell, align 2
  %tobool30 = icmp ne i16 %21, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.27
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.47

if.else:                                          ; preds = %while.end
  %23 = load i32, i32* %ret, align 4
  %cmp34 = icmp eq i32 %23, 0
  br i1 %cmp34, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.else
  %24 = load i16, i16* @printinfected, align 2
  %tobool37 = icmp ne i16 %24, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.then.36
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.36
  br label %if.end.46

if.else.40:                                       ; preds = %if.else
  %25 = load i16, i16* @printinfected, align 2
  %tobool41 = icmp ne i16 %25, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.else.40
  %26 = load i32, i32* %ret, align 4
  %call43 = call i8* @cl_strerror(i32 %26)
  %call44 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* %call43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.else.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.33
  %27 = load i8*, i8** %file, align 8
  %call48 = call i32 @unlink(i8* %27) #5
  %28 = load i8*, i8** %file, align 8
  call void @free(i8* %28) #5
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.19, %if.then.8, %if.then.3
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i8* @cli_strtok(i8*, i32, i8*) #1

declare i32 @fileinfo(i8*, i16 signext) #1

declare void @perror(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @scanfile(i8* %filename, %struct.cl_engine* %engine, %struct.passwd* %user, %struct.optstruct* %opt, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %included = alloca i32, align 4
  %printclean = alloca i32, align 4
  %optnode = alloca %struct.optnode*, align 8
  %argument = alloca i8*, align 8
  %sb = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 1, i32* %printclean, align 4
  %0 = load i64, i64* @procdev, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %1, %struct.stat* %sb) #5
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.then
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 0
  %2 = load i64, i64* %st_dev, align 8
  %3 = load i64, i64* @procdev, align 8
  %cmp2 = icmp eq i64 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.then.1
  %4 = load i16, i16* @printinfected, align 2
  %tobool4 = icmp ne i16 %4, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %5 = load i8*, i8** %filename.addr, align 8
  %call6 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %6 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call10 = call i32 @opt_check(%struct.optstruct* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end.9
  %7 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call13 = call i8* @opt_firstarg(%struct.optstruct* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), %struct.optnode** %optnode)
  store i8* %call13, i8** %argument, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.then.12
  %8 = load i8*, i8** %argument, align 8
  %tobool14 = icmp ne i8* %8, null
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %filename.addr, align 8
  %10 = load i8*, i8** %argument, align 8
  %call15 = call i32 @match_regex(i8* %9, i8* %10)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  %call19 = call i8* @opt_nextarg(%struct.optnode** %optnode, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0))
  store i8* %call19, i8** %argument, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.20

if.end.20:                                        ; preds = %while.end, %if.end.9
  %11 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call21 = call i32 @opt_check(%struct.optstruct* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.42

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %included, align 4
  %12 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call24 = call i8* @opt_firstarg(%struct.optstruct* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), %struct.optnode** %optnode)
  store i8* %call24, i8** %argument, align 8
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.32, %if.then.23
  %13 = load i8*, i8** %argument, align 8
  %tobool26 = icmp ne i8* %13, null
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.25
  %14 = load i32, i32* %included, align 4
  %tobool27 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool27, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.25
  %15 = phi i1 [ false, %while.cond.25 ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body.28, label %while.end.34

while.body.28:                                    ; preds = %land.end
  %16 = load i8*, i8** %filename.addr, align 8
  %17 = load i8*, i8** %argument, align 8
  %call29 = call i32 @match_regex(i8* %16, i8* %17)
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.body.28
  store i32 1, i32* %included, align 4
  br label %while.end.34

if.end.32:                                        ; preds = %while.body.28
  %call33 = call i8* @opt_nextarg(%struct.optnode** %optnode, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0))
  store i8* %call33, i8** %argument, align 8
  br label %while.cond.25

while.end.34:                                     ; preds = %if.then.31, %land.end
  %18 = load i32, i32* %included, align 4
  %tobool35 = icmp ne i32 %18, 0
  br i1 %tobool35, label %if.end.41, label %if.then.36

if.then.36:                                       ; preds = %while.end.34
  %19 = load i16, i16* @printinfected, align 2
  %tobool37 = icmp ne i16 %19, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.then.36
  %20 = load i8*, i8** %filename.addr, align 8
  %call39 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8* %20)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.36
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %while.end.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.20
  %21 = load i8*, i8** %filename.addr, align 8
  %call43 = call i32 @fileinfo(i8* %21, i16 signext 1)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %22 = load i16, i16* @printinfected, align 2
  %tobool46 = icmp ne i16 %22, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.then.45
  %23 = load i8*, i8** %filename.addr, align 8
  %call48 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* %23)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.42
  %call51 = call i32 @geteuid() #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %if.end.50
  %24 = load i8*, i8** %filename.addr, align 8
  %call54 = call i32 @checkaccess(i8* %24, i8* null, i32 4)
  %cmp55 = icmp ne i32 %call54, 1
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.then.53
  %25 = load i16, i16* @printinfected, align 2
  %tobool57 = icmp ne i16 %25, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.then.56
  %26 = load i8*, i8** %filename.addr, align 8
  %call59 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i8* %26)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.56
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.50
  %27 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 2), align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 2), align 4
  %28 = load i8*, i8** %filename.addr, align 8
  %call63 = call i32 @cli_strbcasestr(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %29 = load i8*, i8** %filename.addr, align 8
  %call65 = call i32 @cli_strbcasestr(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true, label %if.end.101

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.62
  %30 = load i32, i32* %options.addr, align 4
  %and = and i32 %30, 1
  %tobool67 = icmp ne i32 %and, 0
  br i1 %tobool67, label %if.then.68, label %if.end.101

if.then.68:                                       ; preds = %land.lhs.true
  %31 = load i8*, i8** %filename.addr, align 8
  %32 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %33 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %34 = load i32, i32* %options.addr, align 4
  %call69 = call i32 @checkfile(i8* %31, %struct.cl_engine* %32, %struct.cl_limits* %33, i32 %34, i16 signext 1)
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp eq i32 %call69, 1
  br i1 %cmp70, label %if.then.71, label %if.else.91

if.then.71:                                       ; preds = %if.then.68
  %35 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call72 = call i32 @opt_check(%struct.optstruct* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.82

if.then.74:                                       ; preds = %if.then.71
  %36 = load i8*, i8** %filename.addr, align 8
  %call75 = call i32 @unlink(i8* %36) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.then.74
  %37 = load i8*, i8** %filename.addr, align 8
  %call78 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %37)
  %38 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc79 = add i32 %38, 1
  store i32 %inc79, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.81

if.else:                                          ; preds = %if.then.74
  %39 = load i8*, i8** %filename.addr, align 8
  %call80 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %39)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.77
  br label %if.end.90

if.else.82:                                       ; preds = %if.then.71
  %40 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call83 = call i32 @opt_check(%struct.optstruct* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.88, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.else.82
  %41 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call86 = call i32 @opt_check(%struct.optstruct* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.85, %if.else.82
  %42 = load i8*, i8** %filename.addr, align 8
  %43 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %42, %struct.optstruct* %43)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %lor.lhs.false.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.81
  store i32 1, i32* %retval
  br label %return

if.else.91:                                       ; preds = %if.then.68
  %44 = load i32, i32* %ret, align 4
  %cmp92 = icmp eq i32 %44, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.91
  store i32 0, i32* %retval
  br label %return

if.else.94:                                       ; preds = %if.else.91
  %45 = load i32, i32* %ret, align 4
  %cmp95 = icmp eq i32 %45, 54
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.else.94
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.else.94
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  %47 = load i32, i32* %options.addr, align 4
  %and100 = and i32 %47, -2
  store i32 %and100, i32* %options.addr, align 4
  store i32 0, i32* %printclean, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.99, %land.lhs.true, %lor.lhs.false
  %48 = load i8*, i8** %filename.addr, align 8
  %call102 = call i32 @cli_strbcasestr(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %land.lhs.true.104, label %lor.lhs.false.107

land.lhs.true.104:                                ; preds = %if.end.101
  %49 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call105 = call i32 @opt_check(%struct.optstruct* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.161, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.104, %if.end.101
  %50 = load i8*, i8** %filename.addr, align 8
  %call108 = call i32 @cli_strbcasestr(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %lor.lhs.false.113

land.lhs.true.110:                                ; preds = %lor.lhs.false.107
  %51 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call111 = call i32 @opt_check(%struct.optstruct* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.161, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.110, %lor.lhs.false.107
  %52 = load i8*, i8** %filename.addr, align 8
  %call114 = call i32 @cli_strbcasestr(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %land.lhs.true.116, label %lor.lhs.false.119

land.lhs.true.116:                                ; preds = %lor.lhs.false.113
  %53 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call117 = call i32 @opt_check(%struct.optstruct* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.161, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.116, %lor.lhs.false.113
  %54 = load i8*, i8** %filename.addr, align 8
  %call120 = call i32 @cli_strbcasestr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0))
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %land.lhs.true.122, label %lor.lhs.false.125

land.lhs.true.122:                                ; preds = %lor.lhs.false.119
  %55 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call123 = call i32 @opt_check(%struct.optstruct* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.161, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %land.lhs.true.122, %lor.lhs.false.119
  %56 = load i8*, i8** %filename.addr, align 8
  %call126 = call i32 @cli_strbcasestr(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %land.lhs.true.128, label %lor.lhs.false.131

land.lhs.true.128:                                ; preds = %lor.lhs.false.125
  %57 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call129 = call i32 @opt_check(%struct.optstruct* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.161, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.128, %lor.lhs.false.125
  %58 = load i8*, i8** %filename.addr, align 8
  %call132 = call i32 @cli_strbcasestr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0))
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %land.lhs.true.134, label %lor.lhs.false.137

land.lhs.true.134:                                ; preds = %lor.lhs.false.131
  %59 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call135 = call i32 @opt_check(%struct.optstruct* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.161, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.lhs.true.134, %lor.lhs.false.131
  %60 = load i8*, i8** %filename.addr, align 8
  %call138 = call i32 @cli_strbcasestr(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %land.lhs.true.140, label %lor.lhs.false.143

land.lhs.true.140:                                ; preds = %lor.lhs.false.137
  %61 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call141 = call i32 @opt_check(%struct.optstruct* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.161, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %land.lhs.true.140, %lor.lhs.false.137
  %62 = load i8*, i8** %filename.addr, align 8
  %call144 = call i32 @cli_strbcasestr(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0))
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %lor.lhs.false.149

land.lhs.true.146:                                ; preds = %lor.lhs.false.143
  %63 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call147 = call i32 @opt_check(%struct.optstruct* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.161, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.146, %lor.lhs.false.143
  %64 = load i8*, i8** %filename.addr, align 8
  %call150 = call i32 @cli_strbcasestr(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0))
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %land.lhs.true.155, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.149
  %65 = load i8*, i8** %filename.addr, align 8
  %call153 = call i32 @cli_strbcasestr(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0))
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %land.lhs.true.155, label %if.end.194

land.lhs.true.155:                                ; preds = %lor.lhs.false.152, %lor.lhs.false.149
  %66 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call156 = call i32 @opt_check(%struct.optstruct* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.161, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.155
  %67 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call159 = call i32 @opt_check(%struct.optstruct* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.194

if.then.161:                                      ; preds = %lor.lhs.false.158, %land.lhs.true.155, %land.lhs.true.146, %land.lhs.true.140, %land.lhs.true.134, %land.lhs.true.128, %land.lhs.true.122, %land.lhs.true.116, %land.lhs.true.110, %land.lhs.true.104
  %68 = load i8*, i8** %filename.addr, align 8
  %call162 = call i32 @checkaccess(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 4)
  switch i32 %call162, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.164
    i32 0, label %sw.bb.166
    i32 1, label %sw.bb.192
  ]

sw.bb:                                            ; preds = %if.then.161
  %call163 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0))
  call void @exit(i32 60) #7
  unreachable

sw.bb.164:                                        ; preds = %if.then.161
  %call165 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0))
  call void @exit(i32 61) #7
  unreachable

sw.bb.166:                                        ; preds = %if.then.161
  %call167 = call i32 @geteuid() #5
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then.169, label %if.else.174

if.then.169:                                      ; preds = %sw.bb.166
  %69 = load i16, i16* @printinfected, align 2
  %tobool170 = icmp ne i16 %69, 0
  br i1 %tobool170, label %if.end.173, label %if.then.171

if.then.171:                                      ; preds = %if.then.169
  %70 = load i8*, i8** %filename.addr, align 8
  %call172 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0), i8* %70)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.then.169
  br label %if.end.191

if.else.174:                                      ; preds = %sw.bb.166
  %71 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %tobool175 = icmp ne %struct.cl_limits* %71, null
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.189

land.lhs.true.176:                                ; preds = %if.else.174
  %72 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %72, i32 0, i32 5
  %73 = load i64, i64* %maxfilesize, align 8
  %tobool177 = icmp ne i64 %73, 0
  br i1 %tobool177, label %if.then.178, label %if.end.189

if.then.178:                                      ; preds = %land.lhs.true.176
  %74 = load i8*, i8** %filename.addr, align 8
  %call179 = call i32 @fileinfo(i8* %74, i16 signext 1)
  %div = udiv i32 %call179, 1024
  %conv = zext i32 %div to i64
  %75 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfilesize180 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %75, i32 0, i32 5
  %76 = load i64, i64* %maxfilesize180, align 8
  %cmp181 = icmp ugt i64 %conv, %76
  br i1 %cmp181, label %if.then.183, label %if.end.188

if.then.183:                                      ; preds = %if.then.178
  %77 = load i16, i16* @printinfected, align 2
  %tobool184 = icmp ne i16 %77, 0
  br i1 %tobool184, label %if.end.187, label %if.then.185

if.then.185:                                      ; preds = %if.then.183
  %78 = load i8*, i8** %filename.addr, align 8
  %call186 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), i8* %78)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.then.183
  store i32 0, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.then.178
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %land.lhs.true.176, %if.else.174
  %79 = load i8*, i8** %filename.addr, align 8
  %80 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %81 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %82 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %83 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %84 = load i32, i32* %options.addr, align 4
  %call190 = call i32 @scandenied(i8* %79, %struct.cl_engine* %80, %struct.passwd* %81, %struct.optstruct* %82, %struct.cl_limits* %83, i32 %84)
  store i32 %call190, i32* %retval
  br label %return

if.end.191:                                       ; preds = %if.end.173
  store i32 0, i32* %retval
  br label %return

sw.bb.192:                                        ; preds = %if.then.161
  %85 = load i8*, i8** %filename.addr, align 8
  %86 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %87 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %88 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %89 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %90 = load i32, i32* %options.addr, align 4
  %call193 = call i32 @scancompressed(i8* %85, %struct.cl_engine* %86, %struct.passwd* %87, %struct.optstruct* %88, %struct.cl_limits* %89, i32 %90)
  store i32 %call193, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.161
  br label %if.end.194

if.end.194:                                       ; preds = %sw.epilog, %lor.lhs.false.158, %lor.lhs.false.152
  %91 = load i8*, i8** %filename.addr, align 8
  %92 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %93 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %94 = load i32, i32* %options.addr, align 4
  %95 = load i32, i32* %printclean, align 4
  %conv195 = trunc i32 %95 to i16
  %call196 = call i32 @checkfile(i8* %91, %struct.cl_engine* %92, %struct.cl_limits* %93, i32 %94, i16 signext %conv195)
  store i32 %call196, i32* %ret, align 4
  %cmp197 = icmp eq i32 %call196, 1
  br i1 %cmp197, label %if.then.199, label %if.end.220

if.then.199:                                      ; preds = %if.end.194
  %96 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call200 = call i32 @opt_check(%struct.optstruct* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.211

if.then.202:                                      ; preds = %if.then.199
  %97 = load i8*, i8** %filename.addr, align 8
  %call203 = call i32 @unlink(i8* %97) #5
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then.205, label %if.else.208

if.then.205:                                      ; preds = %if.then.202
  %98 = load i8*, i8** %filename.addr, align 8
  %call206 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %98)
  %99 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc207 = add i32 %99, 1
  store i32 %inc207, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.210

if.else.208:                                      ; preds = %if.then.202
  %100 = load i8*, i8** %filename.addr, align 8
  %call209 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %100)
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.208, %if.then.205
  br label %if.end.219

if.else.211:                                      ; preds = %if.then.199
  %101 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call212 = call i32 @opt_check(%struct.optstruct* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then.217, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.else.211
  %102 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call215 = call i32 @opt_check(%struct.optstruct* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %lor.lhs.false.214, %if.else.211
  %103 = load i8*, i8** %filename.addr, align 8
  %104 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %103, %struct.optstruct* %104)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %lor.lhs.false.214
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end.210
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.194
  %105 = load i32, i32* %ret, align 4
  store i32 %105, i32* %retval
  br label %return

return:                                           ; preds = %if.end.220, %sw.bb.192, %if.end.191, %if.end.189, %if.end.187, %if.then.96, %if.then.93, %if.end.90, %if.end.60, %if.end.49, %if.end.40, %if.then.17, %if.end
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare void @cl_free(%struct.cl_engine*) #1

declare i8* @opt_firstarg(%struct.optstruct*, i8*, %struct.optnode**) #1

declare i32 @match_regex(i8*, i8*) #1

declare i8* @opt_nextarg(%struct.optnode**, i8*) #1

declare i32 @checkaccess(i8*, i8*, i32) #1

declare i32 @cli_strbcasestr(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @checkfile(i8* %filename, %struct.cl_engine* %engine, %struct.cl_limits* %limits, i32 %options, i16 signext %printclean) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %printclean.addr = alloca i16, align 2
  %fd = alloca i32, align 4
  %ret = alloca i32, align 4
  %virname = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i16 %printclean, i16* %printclean.addr, align 2
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @mybasename(i8* %0)
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* %call)
  %1 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 (i8*, i32, ...) @open(i8* %1, i32 0)
  store i32 %call2, i32* %fd, align 4
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8* %2)
  store i32 54, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %5 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %6 = load i32, i32* %options.addr, align 4
  %call4 = call i32 @cl_scandesc(i32 %3, i8** %virname, i64* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 6), %struct.cl_engine* %4, %struct.cl_limits* %5, i32 %6)
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %7 = load i8*, i8** %filename.addr, align 8
  %8 = load i8*, i8** %virname, align 8
  %call7 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* %7, i8* %8)
  %9 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %10 = load i16, i16* @bell, align 2
  %tobool = icmp ne i16 %10, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.else
  %13 = load i16, i16* @printinfected, align 2
  %tobool13 = icmp ne i16 %13, 0
  br i1 %tobool13, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.12
  %14 = load i16, i16* %printclean.addr, align 2
  %conv = sext i16 %14 to i32
  %tobool14 = icmp ne i32 %conv, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %filename.addr, align 8
  %call16 = call i8* @mybasename(i8* %15)
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.12
  br label %if.end.24

if.else.18:                                       ; preds = %if.else
  %16 = load i16, i16* @printinfected, align 2
  %tobool19 = icmp ne i16 %16, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.else.18
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load i32, i32* %ret, align 4
  %call21 = call i8* @cl_strerror(i32 %18)
  %call22 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* %17, i8* %call21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.else.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.10
  %19 = load i32, i32* %fd, align 4
  %call26 = call i32 @close(i32 %19)
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @move_infected(i8* %filename, %struct.optstruct* %opt) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %movedir = alloca i8*, align 8
  %movefilename = alloca i8*, align 8
  %numext = alloca [5 x i8], align 1
  %tmp = alloca i8*, align 8
  %ofstat = alloca %struct.stat, align 8
  %mfstat = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %movefilename_size = alloca i32, align 4
  %moveflag = alloca i32, align 4
  %ubuf = alloca %struct.utimbuf, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call = call i32 @opt_check(%struct.optstruct* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  store i32 %call, i32* %moveflag, align 4
  %1 = load i32, i32* %moveflag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call8 = call i8* @opt_arg(%struct.optstruct* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  store i8* %call8, i8** %movedir, align 8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %moveflag, align 4
  %tobool10 = icmp ne i32 %3, 0
  br i1 %tobool10, label %if.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %4 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call12 = call i8* @opt_arg(%struct.optstruct* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  store i8* %call12, i8** %movedir, align 8
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.11, %land.lhs.true
  %call14 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i32 0, i32 0))
  %5 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %lor.lhs.false
  %6 = load i8*, i8** %movedir, align 8
  %call15 = call i32 @access(i8* %6, i32 3) #5
  %cmp = icmp eq i32 %call15, -1
  br i1 %cmp, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end
  %7 = load i32, i32* %moveflag, align 4
  %tobool17 = icmp ne i32 %7, 0
  %cond = select i1 %tobool17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0)
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load i8*, i8** %movedir, align 8
  %call18 = call i32* @__errno_location() #9
  %10 = load i32, i32* %call18, align 4
  %call19 = call i8* @strerror(i32 %10) #5
  %call20 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.91, i32 0, i32 0), i8* %cond, i8* %8, i8* %9, i8* %call19)
  %11 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc21 = add i32 %11, 1
  store i32 %inc21, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  br label %return

if.end.22:                                        ; preds = %if.end
  %12 = load i8*, i8** %filename.addr, align 8
  %call23 = call i8* @strrchr(i8* %12, i32 47) #8
  store i8* %call23, i8** %tmp, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %13 = load i8*, i8** %filename.addr, align 8
  store i8* %13, i8** %tmp, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %14 = load i8*, i8** %movedir, align 8
  %call27 = call i64 @strlen(i8* %14) #8
  %15 = load i8*, i8** %tmp, align 8
  %call28 = call i64 @strlen(i8* %15) #8
  %add = add i64 %call27, %call28
  %add29 = add i64 %add, 5
  %add30 = add i64 %add29, 2
  %mul = mul i64 1, %add30
  %conv = trunc i64 %mul to i32
  store i32 %conv, i32* %movefilename_size, align 4
  %16 = load i32, i32* %movefilename_size, align 4
  %conv31 = sext i32 %16 to i64
  %call32 = call noalias i8* @malloc(i64 %conv31) #5
  store i8* %call32, i8** %movefilename, align 8
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.end.26
  %call35 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0))
  call void @exit(i32 71) #7
  unreachable

if.end.36:                                        ; preds = %if.end.26
  %17 = load i8*, i8** %movefilename, align 8
  %18 = load i8*, i8** %movedir, align 8
  %call37 = call i8* @cli_strrcpy(i8* %17, i8* %18)
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc41 = add i32 %19, 1
  store i32 %inc41, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %20 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %20) #5
  br label %return

if.end.42:                                        ; preds = %if.end.36
  %21 = load i8*, i8** %movefilename, align 8
  %call43 = call i8* @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)) #5
  %22 = load i8*, i8** %movefilename, align 8
  %23 = load i8*, i8** %tmp, align 8
  %call44 = call i8* @strcat(i8* %22, i8* %23) #5
  %tobool45 = icmp ne i8* %call44, null
  br i1 %tobool45, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %if.end.42
  %call47 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i32 0, i32 0))
  %24 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc48 = add i32 %24, 1
  store i32 %inc48, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %25 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %25) #5
  br label %return

if.end.49:                                        ; preds = %if.end.42
  %26 = load i8*, i8** %filename.addr, align 8
  %call50 = call i32 @stat(i8* %26, %struct.stat* %ofstat) #5
  %27 = load i8*, i8** %movefilename, align 8
  %call51 = call i32 @stat(i8* %27, %struct.stat* %mfstat) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.75, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 0
  %28 = load i64, i64* %st_dev, align 8
  %st_dev54 = getelementptr inbounds %struct.stat, %struct.stat* %mfstat, i32 0, i32 0
  %29 = load i64, i64* %st_dev54, align 8
  %cmp55 = icmp eq i64 %28, %29
  br i1 %cmp55, label %land.lhs.true.57, label %if.else

land.lhs.true.57:                                 ; preds = %if.then.53
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 1
  %30 = load i64, i64* %st_ino, align 8
  %st_ino58 = getelementptr inbounds %struct.stat, %struct.stat* %mfstat, i32 0, i32 1
  %31 = load i64, i64* %st_ino58, align 8
  %cmp59 = icmp eq i64 %30, %31
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %land.lhs.true.57
  %32 = load i8*, i8** %filename.addr, align 8
  %call62 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i32 0, i32 0), i8* %32)
  %33 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc63 = add i32 %33, 1
  store i32 %inc63, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %34 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %34) #5
  br label %return

if.else:                                          ; preds = %land.lhs.true.57, %if.then.53
  %35 = load i8*, i8** %movefilename, align 8
  %call64 = call i64 @strlen(i8* %35) #8
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %len, align 4
  store i32 0, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %36 = load i32, i32* %len, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %movefilename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %numext, i32 0, i32 0
  %38 = load i32, i32* %n, align 4
  %inc66 = add nsw i32 %38, 1
  store i32 %inc66, i32* %n, align 4
  %call67 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 %38) #5
  %39 = load i8*, i8** %movefilename, align 8
  %arraydecay68 = getelementptr inbounds [5 x i8], [5 x i8]* %numext, i32 0, i32 0
  %call69 = call i8* @strcat(i8* %39, i8* %arraydecay68) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load i8*, i8** %movefilename, align 8
  %call70 = call i32 @stat(i8* %40, %struct.stat* %mfstat) #5
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %41 = load i32, i32* %n, align 4
  %cmp72 = icmp slt i32 %41, 1000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %42 = phi i1 [ false, %do.cond ], [ %cmp72, %land.rhs ]
  br i1 %42, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.74

if.end.74:                                        ; preds = %do.end
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.49
  %43 = load i32, i32* %moveflag, align 4
  %tobool76 = icmp ne i32 %43, 0
  br i1 %tobool76, label %lor.lhs.false.77, label %if.then.81

lor.lhs.false.77:                                 ; preds = %if.end.75
  %44 = load i8*, i8** %filename.addr, align 8
  %45 = load i8*, i8** %movefilename, align 8
  %call78 = call i32 @rename(i8* %44, i8* %45) #5
  %cmp79 = icmp eq i32 %call78, -1
  br i1 %cmp79, label %if.then.81, label %if.end.107

if.then.81:                                       ; preds = %lor.lhs.false.77, %if.end.75
  %46 = load i8*, i8** %filename.addr, align 8
  %47 = load i8*, i8** %movefilename, align 8
  %call82 = call i32 @filecopy(i8* %46, i8* %47)
  %cmp83 = icmp eq i32 %call82, -1
  br i1 %cmp83, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %if.then.81
  %48 = load i32, i32* %moveflag, align 4
  %tobool86 = icmp ne i32 %48, 0
  %cond87 = select i1 %tobool86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0)
  %49 = load i8*, i8** %filename.addr, align 8
  %50 = load i8*, i8** %movefilename, align 8
  %call88 = call i32* @__errno_location() #9
  %51 = load i32, i32* %call88, align 4
  %call89 = call i8* @strerror(i32 %51) #5
  %call90 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i8* %cond87, i8* %49, i8* %50, i8* %call89)
  %52 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %inc91 = add i32 %52, 1
  store i32 %inc91, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %53 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %53) #5
  br label %return

if.end.92:                                        ; preds = %if.then.81
  %54 = load i8*, i8** %movefilename, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 3
  %55 = load i32, i32* %st_mode, align 4
  %call93 = call i32 @chmod(i8* %54, i32 %55) #5
  %56 = load i8*, i8** %movefilename, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 4
  %57 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 5
  %58 = load i32, i32* %st_gid, align 4
  %call94 = call i32 @chown(i8* %56, i32 %57, i32 %58) #5
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %59 = load i64, i64* %tv_sec, align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %ubuf, i32 0, i32 0
  store i64 %59, i64* %actime, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %ofstat, i32 0, i32 12
  %tv_sec95 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %60 = load i64, i64* %tv_sec95, align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %ubuf, i32 0, i32 1
  store i64 %60, i64* %modtime, align 8
  %61 = load i8*, i8** %movefilename, align 8
  %call96 = call i32 @utime(i8* %61, %struct.utimbuf* %ubuf) #5
  %62 = load i32, i32* %moveflag, align 4
  %tobool97 = icmp ne i32 %62, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.106

land.lhs.true.98:                                 ; preds = %if.end.92
  %63 = load i8*, i8** %filename.addr, align 8
  %call99 = call i32 @unlink(i8* %63) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %land.lhs.true.98
  %64 = load i8*, i8** %filename.addr, align 8
  %call102 = call i32* @__errno_location() #9
  %65 = load i32, i32* %call102, align 4
  %call103 = call i8* @strerror(i32 %65) #5
  %call104 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i32 0, i32 0), i8* %64, i8* %call103)
  %66 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc105 = add i32 %66, 1
  store i32 %inc105, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %67 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %67) #5
  br label %return

if.end.106:                                       ; preds = %land.lhs.true.98, %if.end.92
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %lor.lhs.false.77
  %68 = load i8*, i8** %filename.addr, align 8
  %69 = load i32, i32* %moveflag, align 4
  %tobool108 = icmp ne i32 %69, 0
  %cond109 = select i1 %tobool108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0)
  %70 = load i8*, i8** %movefilename, align 8
  %call110 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i8* %68, i8* %cond109, i8* %70)
  %71 = load i8*, i8** %movefilename, align 8
  call void @free(i8* %71) #5
  br label %return

return:                                           ; preds = %if.end.107, %if.then.101, %if.then.85, %if.then.61, %if.then.46, %if.then.39, %if.then.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @scandenied(i8* %filename, %struct.cl_engine* %engine, %struct.passwd* %user, %struct.optstruct* %opt, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %gendir = alloca i8*, align 8
  %tmp_file = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %ret = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %statbuf) #5
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.103, i32 0, i32 0), i8* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0)) #5
  store i8* %call2, i8** %tmpdir, align 8
  %3 = load i8*, i8** %tmpdir, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load i8*, i8** %tmpdir, align 8
  %call6 = call i32 @checkaccess(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 2)
  %cmp7 = icmp ne i32 %call6, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %5 = load i8*, i8** %tmpdir, align 8
  %call9 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i32 0, i32 0), i8* %5)
  call void @exit(i32 64) #7
  unreachable

if.end.10:                                        ; preds = %if.end.5
  %6 = load i8*, i8** %tmpdir, align 8
  %call11 = call i8* @cli_gentemp(i8* %6)
  store i8* %call11, i8** %gendir, align 8
  %7 = load i8*, i8** %gendir, align 8
  %call12 = call i32 @mkdir(i8* %7, i32 448) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %8 = load i8*, i8** %gendir, align 8
  %call14 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i32 0, i32 0), i8* %8)
  call void @exit(i32 63) #7
  unreachable

if.end.15:                                        ; preds = %if.end.10
  %9 = load i8*, i8** %gendir, align 8
  %call16 = call i64 @strlen(i8* %9) #8
  %10 = load i8*, i8** %filename.addr, align 8
  %call17 = call i64 @strlen(i8* %10) #8
  %add = add i64 %call16, %call17
  %add18 = add i64 %add, 10
  %call19 = call noalias i8* @malloc(i64 %add18) #5
  store i8* %call19, i8** %tmp_file, align 8
  %11 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @strrchr(i8* %11, i32 47) #8
  store i8* %call20, i8** %pt, align 8
  %12 = load i8*, i8** %pt, align 8
  %tobool21 = icmp ne i8* %12, null
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %if.end.15
  %13 = load i8*, i8** %filename.addr, align 8
  store i8* %13, i8** %pt, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end.15
  %14 = load i8*, i8** %pt, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** %pt, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  %15 = load i8*, i8** %tmp_file, align 8
  %16 = load i8*, i8** %gendir, align 8
  %17 = load i8*, i8** %pt, align 8
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %16, i8* %17) #5
  %18 = load i8*, i8** %filename.addr, align 8
  %19 = load i8*, i8** %tmp_file, align 8
  %call25 = call i32 @filecopy(i8* %18, i8* %19)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %call28 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0))
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0))
  call void @exit(i32 58) #7
  unreachable

if.end.29:                                        ; preds = %if.end.23
  %20 = load i8*, i8** %gendir, align 8
  %call30 = call i32 @fixperms(i8* %20)
  %21 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %tobool31 = icmp ne %struct.passwd* %21, null
  br i1 %tobool31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.29
  %22 = load i8*, i8** %gendir, align 8
  %23 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 2
  %24 = load i32, i32* %pw_uid, align 4
  %25 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 3
  %26 = load i32, i32* %pw_gid, align 4
  %call33 = call i32 @chown(i8* %22, i32 %24, i32 %26) #5
  %27 = load i8*, i8** %tmp_file, align 8
  %28 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_uid34 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 2
  %29 = load i32, i32* %pw_uid34, align 4
  %30 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_gid35 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 3
  %31 = load i32, i32* %pw_gid35, align 4
  %call36 = call i32 @chown(i8* %27, i32 %29, i32 %31) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end.29
  %32 = load i8*, i8** %gendir, align 8
  %33 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %34 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %35 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %36 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %37 = load i32, i32* %options.addr, align 4
  %call38 = call i32 @treewalk(i8* %32, %struct.cl_engine* %33, %struct.passwd* %34, %struct.optstruct* %35, %struct.cl_limits* %36, i32 %37, i32 1)
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp eq i32 %call38, 1
  br i1 %cmp39, label %if.then.40, label %if.end.60

if.then.40:                                       ; preds = %if.end.37
  %38 = load i8*, i8** %filename.addr, align 8
  %call41 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i32 0, i32 0), i8* %38)
  %39 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call42 = call i32 @opt_check(%struct.optstruct* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %if.then.40
  %40 = load i8*, i8** %filename.addr, align 8
  %call45 = call i32 @unlink(i8* %40) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.then.44
  %41 = load i8*, i8** %filename.addr, align 8
  %call48 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %41)
  %42 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.51

if.else.49:                                       ; preds = %if.then.44
  %43 = load i8*, i8** %filename.addr, align 8
  %call50 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %43)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.59

if.else.52:                                       ; preds = %if.then.40
  %44 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call53 = call i32 @opt_check(%struct.optstruct* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.52
  %45 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call55 = call i32 @opt_check(%struct.optstruct* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %if.else.52
  %46 = load i8*, i8** %filename.addr, align 8
  %47 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %46, %struct.optstruct* %47)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %lor.lhs.false
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.37
  %48 = load i8*, i8** %gendir, align 8
  %call61 = call i32 @clamav_rmdirs(i8* %48)
  %49 = load i8*, i8** %gendir, align 8
  call void @free(i8* %49) #5
  %50 = load i8*, i8** %tmp_file, align 8
  call void @free(i8* %50) #5
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @scancompressed(i8* %filename, %struct.cl_engine* %engine, %struct.passwd* %user, %struct.optstruct* %opt, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %gendir = alloca i8*, align 8
  %userprg = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %args = alloca [6 x i8*], align 16
  %args34 = alloca [6 x i8*], align 16
  %args49 = alloca [5 x i8*], align 16
  %args64 = alloca [6 x i8*], align 16
  %args79 = alloca [6 x i8*], align 16
  %args94 = alloca [4 x i8*], align 16
  %args109 = alloca [4 x i8*], align 16
  %args124 = alloca [4 x i8*], align 16
  %args141 = alloca [4 x i8*], align 16
  %oldrec = alloca i16, align 2
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %statbuf) #5
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.103, i32 0, i32 0), i8* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0)) #5
  store i8* %call2, i8** %tmpdir, align 8
  %3 = load i8*, i8** %tmpdir, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load i8*, i8** %tmpdir, align 8
  %call6 = call i32 @checkaccess(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 2)
  %cmp7 = icmp ne i32 %call6, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %call9 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0))
  call void @exit(i32 64) #7
  unreachable

if.end.10:                                        ; preds = %if.end.5
  %5 = load i8*, i8** %tmpdir, align 8
  %call11 = call i8* @cli_gentemp(i8* %5)
  store i8* %call11, i8** %gendir, align 8
  %6 = load i8*, i8** %gendir, align 8
  %call12 = call i32 @mkdir(i8* %6, i32 448) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %7 = load i8*, i8** %gendir, align 8
  %call14 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i32 0, i32 0), i8* %7)
  call void @exit(i32 63) #7
  unreachable

if.end.15:                                        ; preds = %if.end.10
  %8 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %tobool16 = icmp ne %struct.passwd* %8, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %9 = load i8*, i8** %gendir, align 8
  %10 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 2
  %11 = load i32, i32* %pw_uid, align 4
  %12 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 3
  %13 = load i32, i32* %pw_gid, align 4
  %call18 = call i32 @chown(i8* %9, i32 %11, i32 %13) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %14 = load i8*, i8** %filename.addr, align 8
  %call20 = call i32 @cli_strbcasestr(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.end.19
  %15 = bitcast [6 x i8*]* %args to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 48, i32 16, i1 false)
  %16 = bitcast i8* %15 to [6 x i8*]*
  %17 = getelementptr [6 x i8*], [6 x i8*]* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %17
  %18 = getelementptr [6 x i8*], [6 x i8*]* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8** %18
  %19 = getelementptr [6 x i8*], [6 x i8*]* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8** %19
  %20 = getelementptr [6 x i8*], [6 x i8*]* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8** %20
  %21 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %args, i32 0, i64 4
  store i8* %21, i8** %arrayidx, align 8
  %22 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call23 = call i8* @opt_arg(%struct.optstruct* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i8* %call23, i8** %userprg, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.22
  %23 = load i8*, i8** %userprg, align 8
  %arraydecay = getelementptr inbounds [6 x i8*], [6 x i8*]* %args, i32 0, i32 0
  %24 = load i8*, i8** %gendir, align 8
  %25 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %26 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call26 = call i32 @clamav_unpack(i8* %23, i8** %arraydecay, i8* %24, %struct.passwd* %25, %struct.optstruct* %26)
  store i32 %call26, i32* %ret, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.then.22
  %arraydecay27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args, i32 0, i32 0
  %27 = load i8*, i8** %gendir, align 8
  %28 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %29 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call28 = call i32 @clamav_unpack(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %arraydecay27, i8* %27, %struct.passwd* %28, %struct.optstruct* %29)
  store i32 %call28, i32* %ret, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  br label %if.end.160

if.else.30:                                       ; preds = %if.end.19
  %30 = load i8*, i8** %filename.addr, align 8
  %call31 = call i32 @cli_strbcasestr(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %if.else.30
  %31 = bitcast [6 x i8*]* %args34 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 48, i32 16, i1 false)
  %32 = bitcast i8* %31 to [6 x i8*]*
  %33 = getelementptr [6 x i8*], [6 x i8*]* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %33
  %34 = getelementptr [6 x i8*], [6 x i8*]* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8** %34
  %35 = getelementptr [6 x i8*], [6 x i8*]* %32, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8** %35
  %36 = getelementptr [6 x i8*], [6 x i8*]* %32, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i8** %36
  %37 = load i8*, i8** %filename.addr, align 8
  %arrayidx35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args34, i32 0, i64 4
  store i8* %37, i8** %arrayidx35, align 8
  %38 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call36 = call i8* @opt_arg(%struct.optstruct* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call36, i8** %userprg, align 8
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.then.33
  %39 = load i8*, i8** %userprg, align 8
  %arraydecay39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args34, i32 0, i32 0
  %40 = load i8*, i8** %gendir, align 8
  %41 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %42 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call40 = call i32 @clamav_unpack(i8* %39, i8** %arraydecay39, i8* %40, %struct.passwd* %41, %struct.optstruct* %42)
  store i32 %call40, i32* %ret, align 4
  br label %if.end.44

if.else.41:                                       ; preds = %if.then.33
  %arraydecay42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args34, i32 0, i32 0
  %43 = load i8*, i8** %gendir, align 8
  %44 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %45 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call43 = call i32 @clamav_unpack(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %arraydecay42, i8* %43, %struct.passwd* %44, %struct.optstruct* %45)
  store i32 %call43, i32* %ret, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.38
  br label %if.end.159

if.else.45:                                       ; preds = %if.else.30
  %46 = load i8*, i8** %filename.addr, align 8
  %call46 = call i32 @cli_strbcasestr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.60

if.then.48:                                       ; preds = %if.else.45
  %47 = bitcast [5 x i8*]* %args49 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 40, i32 16, i1 false)
  %48 = bitcast i8* %47 to [5 x i8*]*
  %49 = getelementptr [5 x i8*], [5 x i8*]* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %49
  %50 = getelementptr [5 x i8*], [5 x i8*]* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8** %50
  %51 = getelementptr [5 x i8*], [5 x i8*]* %48, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i8** %51
  %52 = load i8*, i8** %filename.addr, align 8
  %arrayidx50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args49, i32 0, i64 3
  store i8* %52, i8** %arrayidx50, align 8
  %53 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call51 = call i8* @opt_arg(%struct.optstruct* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call51, i8** %userprg, align 8
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.then.48
  %54 = load i8*, i8** %userprg, align 8
  %arraydecay54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args49, i32 0, i32 0
  %55 = load i8*, i8** %gendir, align 8
  %56 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %57 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call55 = call i32 @clamav_unpack(i8* %54, i8** %arraydecay54, i8* %55, %struct.passwd* %56, %struct.optstruct* %57)
  store i32 %call55, i32* %ret, align 4
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.48
  %arraydecay57 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args49, i32 0, i32 0
  %58 = load i8*, i8** %gendir, align 8
  %59 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %60 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call58 = call i32 @clamav_unpack(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %arraydecay57, i8* %58, %struct.passwd* %59, %struct.optstruct* %60)
  store i32 %call58, i32* %ret, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.158

if.else.60:                                       ; preds = %if.else.45
  %61 = load i8*, i8** %filename.addr, align 8
  %call61 = call i32 @cli_strbcasestr(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0))
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.75

if.then.63:                                       ; preds = %if.else.60
  %62 = bitcast [6 x i8*]* %args64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 48, i32 16, i1 false)
  %63 = bitcast i8* %62 to [6 x i8*]*
  %64 = getelementptr [6 x i8*], [6 x i8*]* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %64
  %65 = getelementptr [6 x i8*], [6 x i8*]* %63, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8** %65
  %66 = getelementptr [6 x i8*], [6 x i8*]* %63, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8** %66
  %67 = getelementptr [6 x i8*], [6 x i8*]* %63, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0), i8** %67
  %68 = load i8*, i8** %filename.addr, align 8
  %arrayidx65 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args64, i32 0, i64 4
  store i8* %68, i8** %arrayidx65, align 8
  %69 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call66 = call i8* @opt_arg(%struct.optstruct* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call66, i8** %userprg, align 8
  %tobool67 = icmp ne i8* %call66, null
  br i1 %tobool67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.then.63
  %70 = load i8*, i8** %userprg, align 8
  %arraydecay69 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args64, i32 0, i32 0
  %71 = load i8*, i8** %gendir, align 8
  %72 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %73 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call70 = call i32 @clamav_unpack(i8* %70, i8** %arraydecay69, i8* %71, %struct.passwd* %72, %struct.optstruct* %73)
  store i32 %call70, i32* %ret, align 4
  br label %if.end.74

if.else.71:                                       ; preds = %if.then.63
  %arraydecay72 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args64, i32 0, i32 0
  %74 = load i8*, i8** %gendir, align 8
  %75 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %76 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call73 = call i32 @clamav_unpack(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %arraydecay72, i8* %74, %struct.passwd* %75, %struct.optstruct* %76)
  store i32 %call73, i32* %ret, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.68
  br label %if.end.157

if.else.75:                                       ; preds = %if.else.60
  %77 = load i8*, i8** %filename.addr, align 8
  %call76 = call i32 @cli_strbcasestr(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.else.90

if.then.78:                                       ; preds = %if.else.75
  %78 = bitcast [6 x i8*]* %args79 to i8*
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 48, i32 16, i1 false)
  %79 = bitcast i8* %78 to [6 x i8*]*
  %80 = getelementptr [6 x i8*], [6 x i8*]* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %80
  %81 = getelementptr [6 x i8*], [6 x i8*]* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8** %81
  %82 = getelementptr [6 x i8*], [6 x i8*]* %79, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8** %82
  %83 = getelementptr [6 x i8*], [6 x i8*]* %79, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8** %83
  %84 = load i8*, i8** %filename.addr, align 8
  %arrayidx80 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args79, i32 0, i64 4
  store i8* %84, i8** %arrayidx80, align 8
  %85 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call81 = call i8* @opt_arg(%struct.optstruct* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call81, i8** %userprg, align 8
  %tobool82 = icmp ne i8* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %if.then.78
  %86 = load i8*, i8** %userprg, align 8
  %arraydecay84 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args79, i32 0, i32 0
  %87 = load i8*, i8** %gendir, align 8
  %88 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %89 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call85 = call i32 @clamav_unpack(i8* %86, i8** %arraydecay84, i8* %87, %struct.passwd* %88, %struct.optstruct* %89)
  store i32 %call85, i32* %ret, align 4
  br label %if.end.89

if.else.86:                                       ; preds = %if.then.78
  %arraydecay87 = getelementptr inbounds [6 x i8*], [6 x i8*]* %args79, i32 0, i32 0
  %90 = load i8*, i8** %gendir, align 8
  %91 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %92 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call88 = call i32 @clamav_unpack(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %arraydecay87, i8* %90, %struct.passwd* %91, %struct.optstruct* %92)
  store i32 %call88, i32* %ret, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.83
  br label %if.end.156

if.else.90:                                       ; preds = %if.else.75
  %93 = load i8*, i8** %filename.addr, align 8
  %call91 = call i32 @cli_strbcasestr(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0))
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.105

if.then.93:                                       ; preds = %if.else.90
  %94 = bitcast [4 x i8*]* %args94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast ([4 x i8*]* @scancompressed.args to i8*), i64 32, i32 16, i1 false)
  %95 = load i8*, i8** %filename.addr, align 8
  %arrayidx95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args94, i32 0, i64 2
  store i8* %95, i8** %arrayidx95, align 8
  %96 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call96 = call i8* @opt_arg(%struct.optstruct* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call96, i8** %userprg, align 8
  %tobool97 = icmp ne i8* %call96, null
  br i1 %tobool97, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %if.then.93
  %97 = load i8*, i8** %userprg, align 8
  %arraydecay99 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args94, i32 0, i32 0
  %98 = load i8*, i8** %gendir, align 8
  %99 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %100 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call100 = call i32 @clamav_unpack(i8* %97, i8** %arraydecay99, i8* %98, %struct.passwd* %99, %struct.optstruct* %100)
  store i32 %call100, i32* %ret, align 4
  br label %if.end.104

if.else.101:                                      ; preds = %if.then.93
  %arraydecay102 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args94, i32 0, i32 0
  %101 = load i8*, i8** %gendir, align 8
  %102 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %103 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call103 = call i32 @clamav_unpack(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %arraydecay102, i8* %101, %struct.passwd* %102, %struct.optstruct* %103)
  store i32 %call103, i32* %ret, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.98
  br label %if.end.155

if.else.105:                                      ; preds = %if.else.90
  %104 = load i8*, i8** %filename.addr, align 8
  %call106 = call i32 @cli_strbcasestr(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.else.120

if.then.108:                                      ; preds = %if.else.105
  %105 = bitcast [4 x i8*]* %args109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* bitcast ([4 x i8*]* @scancompressed.args.122 to i8*), i64 32, i32 16, i1 false)
  %106 = load i8*, i8** %filename.addr, align 8
  %arrayidx110 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args109, i32 0, i64 2
  store i8* %106, i8** %arrayidx110, align 8
  %107 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call111 = call i8* @opt_arg(%struct.optstruct* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call111, i8** %userprg, align 8
  %tobool112 = icmp ne i8* %call111, null
  br i1 %tobool112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.then.108
  %108 = load i8*, i8** %userprg, align 8
  %arraydecay114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args109, i32 0, i32 0
  %109 = load i8*, i8** %gendir, align 8
  %110 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %111 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call115 = call i32 @clamav_unpack(i8* %108, i8** %arraydecay114, i8* %109, %struct.passwd* %110, %struct.optstruct* %111)
  store i32 %call115, i32* %ret, align 4
  br label %if.end.119

if.else.116:                                      ; preds = %if.then.108
  %arraydecay117 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args109, i32 0, i32 0
  %112 = load i8*, i8** %gendir, align 8
  %113 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %114 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call118 = call i32 @clamav_unpack(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %arraydecay117, i8* %112, %struct.passwd* %113, %struct.optstruct* %114)
  store i32 %call118, i32* %ret, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.113
  br label %if.end.154

if.else.120:                                      ; preds = %if.else.105
  %115 = load i8*, i8** %filename.addr, align 8
  %call121 = call i32 @cli_strbcasestr(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0))
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.else.135

if.then.123:                                      ; preds = %if.else.120
  %116 = bitcast [4 x i8*]* %args124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* bitcast ([4 x i8*]* @scancompressed.args.124 to i8*), i64 32, i32 16, i1 false)
  %117 = load i8*, i8** %filename.addr, align 8
  %arrayidx125 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args124, i32 0, i64 2
  store i8* %117, i8** %arrayidx125, align 8
  %118 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call126 = call i8* @opt_arg(%struct.optstruct* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call126, i8** %userprg, align 8
  %tobool127 = icmp ne i8* %call126, null
  br i1 %tobool127, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %if.then.123
  %119 = load i8*, i8** %userprg, align 8
  %arraydecay129 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args124, i32 0, i32 0
  %120 = load i8*, i8** %gendir, align 8
  %121 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %122 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call130 = call i32 @clamav_unpack(i8* %119, i8** %arraydecay129, i8* %120, %struct.passwd* %121, %struct.optstruct* %122)
  store i32 %call130, i32* %ret, align 4
  br label %if.end.134

if.else.131:                                      ; preds = %if.then.123
  %arraydecay132 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args124, i32 0, i32 0
  %123 = load i8*, i8** %gendir, align 8
  %124 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %125 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call133 = call i32 @clamav_unpack(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8** %arraydecay132, i8* %123, %struct.passwd* %124, %struct.optstruct* %125)
  store i32 %call133, i32* %ret, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.128
  br label %if.end.153

if.else.135:                                      ; preds = %if.else.120
  %126 = load i8*, i8** %filename.addr, align 8
  %call136 = call i32 @cli_strbcasestr(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0))
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.135
  %127 = load i8*, i8** %filename.addr, align 8
  %call138 = call i32 @cli_strbcasestr(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0))
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then.140, label %if.end.152

if.then.140:                                      ; preds = %lor.lhs.false, %if.else.135
  %128 = bitcast [4 x i8*]* %args141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* bitcast ([4 x i8*]* @scancompressed.args.126 to i8*), i64 32, i32 16, i1 false)
  %129 = load i8*, i8** %filename.addr, align 8
  %arrayidx142 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args141, i32 0, i64 2
  store i8* %129, i8** %arrayidx142, align 8
  %130 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call143 = call i8* @opt_arg(%struct.optstruct* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call143, i8** %userprg, align 8
  %tobool144 = icmp ne i8* %call143, null
  br i1 %tobool144, label %if.then.145, label %if.else.148

if.then.145:                                      ; preds = %if.then.140
  %131 = load i8*, i8** %userprg, align 8
  %arraydecay146 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args141, i32 0, i32 0
  %132 = load i8*, i8** %gendir, align 8
  %133 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %134 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call147 = call i32 @clamav_unpack(i8* %131, i8** %arraydecay146, i8* %132, %struct.passwd* %133, %struct.optstruct* %134)
  store i32 %call147, i32* %ret, align 4
  br label %if.end.151

if.else.148:                                      ; preds = %if.then.140
  %arraydecay149 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args141, i32 0, i32 0
  %135 = load i8*, i8** %gendir, align 8
  %136 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %137 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call150 = call i32 @clamav_unpack(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %arraydecay149, i8* %135, %struct.passwd* %136, %struct.optstruct* %137)
  store i32 %call150, i32* %ret, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.145
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %lor.lhs.false
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.134
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.119
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.104
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.89
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.74
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.59
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.44
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.29
  %138 = load i8*, i8** %gendir, align 8
  %call161 = call i32 @fixperms(i8* %138)
  %139 = load i32, i32* %ret, align 4
  %tobool162 = icmp ne i32 %139, 0
  br i1 %tobool162, label %if.end.165, label %if.then.163

if.then.163:                                      ; preds = %if.end.160
  %140 = load i16, i16* @recursion, align 2
  store i16 %140, i16* %oldrec, align 2
  store i16 1, i16* @recursion, align 2
  %141 = load i8*, i8** %gendir, align 8
  %142 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %143 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %144 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %145 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %146 = load i32, i32* %options.addr, align 4
  %call164 = call i32 @treewalk(i8* %141, %struct.cl_engine* %142, %struct.passwd* %143, %struct.optstruct* %144, %struct.cl_limits* %145, i32 %146, i32 1)
  store i32 %call164, i32* %ret, align 4
  %147 = load i16, i16* %oldrec, align 2
  store i16 %147, i16* @recursion, align 2
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.160
  %148 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call166 = call i32 @opt_check(%struct.optstruct* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0))
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end.170, label %if.then.168

if.then.168:                                      ; preds = %if.end.165
  %149 = load i8*, i8** %gendir, align 8
  %call169 = call i32 @clamav_rmdirs(i8* %149)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.end.165
  %150 = load i8*, i8** %gendir, align 8
  call void @free(i8* %150) #5
  %151 = load i32, i32* %ret, align 4
  switch i32 %151, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.172
    i32 -3, label %sw.bb.197
    i32 0, label %sw.bb.198
    i32 1, label %sw.bb.223
  ]

sw.bb:                                            ; preds = %if.end.170
  %call171 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0))
  call void @exit(i32 61) #7
  unreachable

sw.bb.172:                                        ; preds = %if.end.170
  %call173 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.129, i32 0, i32 0))
  %152 = load i8*, i8** %filename.addr, align 8
  %153 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %154 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %call174 = call i32 @checkfile(i8* %152, %struct.cl_engine* %153, %struct.cl_limits* %154, i32 0, i16 signext 0)
  store i32 %call174, i32* %ret, align 4
  %cmp175 = icmp eq i32 %call174, 1
  br i1 %cmp175, label %if.then.176, label %if.end.196

if.then.176:                                      ; preds = %sw.bb.172
  %155 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call177 = call i32 @opt_check(%struct.optstruct* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.179, label %if.else.187

if.then.179:                                      ; preds = %if.then.176
  %156 = load i8*, i8** %filename.addr, align 8
  %call180 = call i32 @unlink(i8* %156) #5
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %if.then.179
  %157 = load i8*, i8** %filename.addr, align 8
  %call183 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %157)
  %158 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc = add i32 %158, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.186

if.else.184:                                      ; preds = %if.then.179
  %159 = load i8*, i8** %filename.addr, align 8
  %call185 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %159)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.182
  br label %if.end.195

if.else.187:                                      ; preds = %if.then.176
  %160 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call188 = call i32 @opt_check(%struct.optstruct* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.193, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %if.else.187
  %161 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call191 = call i32 @opt_check(%struct.optstruct* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %lor.lhs.false.190, %if.else.187
  %162 = load i8*, i8** %filename.addr, align 8
  %163 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %162, %struct.optstruct* %163)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %lor.lhs.false.190
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.186
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %sw.bb.172
  %164 = load i32, i32* %ret, align 4
  store i32 %164, i32* %retval
  br label %return

sw.bb.197:                                        ; preds = %if.end.170
  store i32 0, i32* %retval
  br label %return

sw.bb.198:                                        ; preds = %if.end.170
  %165 = load i8*, i8** %filename.addr, align 8
  %166 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %167 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %call199 = call i32 @checkfile(i8* %165, %struct.cl_engine* %166, %struct.cl_limits* %167, i32 0, i16 signext 1)
  store i32 %call199, i32* %ret, align 4
  %cmp200 = icmp eq i32 %call199, 1
  br i1 %cmp200, label %if.then.201, label %if.end.222

if.then.201:                                      ; preds = %sw.bb.198
  %168 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call202 = call i32 @opt_check(%struct.optstruct* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.then.204, label %if.else.213

if.then.204:                                      ; preds = %if.then.201
  %169 = load i8*, i8** %filename.addr, align 8
  %call205 = call i32 @unlink(i8* %169) #5
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then.207, label %if.else.210

if.then.207:                                      ; preds = %if.then.204
  %170 = load i8*, i8** %filename.addr, align 8
  %call208 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %170)
  %171 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc209 = add i32 %171, 1
  store i32 %inc209, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.212

if.else.210:                                      ; preds = %if.then.204
  %172 = load i8*, i8** %filename.addr, align 8
  %call211 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %172)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.210, %if.then.207
  br label %if.end.221

if.else.213:                                      ; preds = %if.then.201
  %173 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call214 = call i32 @opt_check(%struct.optstruct* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.219, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %if.else.213
  %174 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call217 = call i32 @opt_check(%struct.optstruct* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %lor.lhs.false.216, %if.else.213
  %175 = load i8*, i8** %filename.addr, align 8
  %176 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %175, %struct.optstruct* %176)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %lor.lhs.false.216
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.212
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %sw.bb.198
  %177 = load i32, i32* %ret, align 4
  store i32 %177, i32* %retval
  br label %return

sw.bb.223:                                        ; preds = %if.end.170
  %178 = load i8*, i8** %filename.addr, align 8
  %call224 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0), i8* %178)
  %179 = load i16, i16* @bell, align 2
  %tobool225 = icmp ne i16 %179, 0
  br i1 %tobool225, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %sw.bb.223
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %sw.bb.223
  %181 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call229 = call i32 @opt_check(%struct.optstruct* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then.231, label %if.else.240

if.then.231:                                      ; preds = %if.end.228
  %182 = load i8*, i8** %filename.addr, align 8
  %call232 = call i32 @unlink(i8* %182) #5
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.234, label %if.else.237

if.then.234:                                      ; preds = %if.then.231
  %183 = load i8*, i8** %filename.addr, align 8
  %call235 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %183)
  %184 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %inc236 = add i32 %184, 1
  store i32 %inc236, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  br label %if.end.239

if.else.237:                                      ; preds = %if.then.231
  %185 = load i8*, i8** %filename.addr, align 8
  %call238 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %185)
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.237, %if.then.234
  br label %if.end.248

if.else.240:                                      ; preds = %if.end.228
  %186 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call241 = call i32 @opt_check(%struct.optstruct* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then.246, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.else.240
  %187 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call244 = call i32 @opt_check(%struct.optstruct* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0))
  %tobool245 = icmp ne i32 %call244, 0
  br i1 %tobool245, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %lor.lhs.false.243, %if.else.240
  %188 = load i8*, i8** %filename.addr, align 8
  %189 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  call void @move_infected(i8* %188, %struct.optstruct* %189)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %lor.lhs.false.243
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.239
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.170
  %190 = load i32, i32* %ret, align 4
  %call249 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.131, i32 0, i32 0), i32 %190)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.248, %if.end.222, %sw.bb.197, %if.end.196, %if.then
  %191 = load i32, i32* %retval
  ret i32 %191
}

declare i32 @treewalk(i8*, %struct.cl_engine*, %struct.passwd*, %struct.optstruct*, %struct.cl_limits*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @cli_gentemp(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @cl_scanfile(i8*, i8**, i64*, %struct.cl_engine*, %struct.cl_limits*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @mprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #8
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @cl_scandesc(i32, i8**, i64*, %struct.cl_engine*, %struct.cl_limits*, i32) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i8* @cli_strrcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

declare i32 @filecopy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.utimbuf*) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

declare i32 @fixperms(i8*) #1

declare i32 @clamav_rmdirs(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clamav_unpack(i8* %prog, i8** %args, i8* %tmpdir, %struct.passwd* %user, %struct.optstruct* %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %tmpdir.addr = alloca i8*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %wret = alloca i32, align 4
  %fdevnull = alloca i32, align 4
  %maxfiles = alloca i32, align 4
  %maxspace = alloca i32, align 4
  %n = alloca %struct.s_du, align 8
  %cpy = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral99 = alloca %union.anon.0, align 4
  %.compoundliteral108 = alloca %union.anon.1, align 4
  %.compoundliteral114 = alloca %union.anon.2, align 4
  store i8* %prog, i8** %prog.addr, align 8
  store i8** %args, i8*** %args.addr, align 8
  store i8* %tmpdir, i8** %tmpdir.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call = call i32 @opt_check(%struct.optstruct* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call1 = call i8* @opt_arg(%struct.optstruct* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %call2 = call i32 @atoi(i8* %call1) #8
  store i32 %call2, i32* %maxfiles, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %maxfiles, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call3 = call i32 @opt_check(%struct.optstruct* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.20

if.then.5:                                        ; preds = %if.end
  %3 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call6 = call i8* @opt_arg(%struct.optstruct* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call6, i8** %ptr, align 8
  %4 = load i8*, i8** %ptr, align 8
  %call7 = call i64 @strlen(i8* %4) #8
  %sub = sub i64 %call7, 1
  %5 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call8 = call i32 @tolower(i32 %conv) #5
  %cmp = icmp eq i32 %call8, 109
  br i1 %cmp, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %if.then.5
  %7 = load i8*, i8** %ptr, align 8
  %call11 = call i64 @strlen(i8* %7) #8
  %call12 = call noalias i8* @calloc(i64 %call11, i64 1) #5
  store i8* %call12, i8** %cpy, align 8
  %8 = load i8*, i8** %cpy, align 8
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i8*, i8** %ptr, align 8
  %call13 = call i64 @strlen(i8* %10) #8
  %sub14 = sub i64 %call13, 1
  %call15 = call i8* @strncpy(i8* %8, i8* %9, i64 %sub14) #5
  %11 = load i8*, i8** %cpy, align 8
  %call16 = call i32 @atoi(i8* %11) #8
  %mul = mul nsw i32 %call16, 1024
  store i32 %mul, i32* %maxspace, align 4
  %12 = load i8*, i8** %cpy, align 8
  call void @free(i8* %12) #5
  br label %if.end.19

if.else.17:                                       ; preds = %if.then.5
  %13 = load i8*, i8** %ptr, align 8
  %call18 = call i32 @atoi(i8* %13) #8
  store i32 %call18, i32* %maxspace, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.10
  br label %if.end.21

if.else.20:                                       ; preds = %if.end
  store i32 0, i32* %maxspace, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.end.19
  %call22 = call i32 @fork() #5
  store i32 %call22, i32* %pid, align 4
  switch i32 %call22, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end.21
  %call24 = call i32 @geteuid() #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.40, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.23
  %14 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %tobool26 = icmp ne %struct.passwd* %14, null
  br i1 %tobool26, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %land.lhs.true
  %15 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 3
  %16 = load i32, i32* %pw_gid, align 4
  %call28 = call i32 @setgid(i32 %16) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.27
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_gid31 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 3
  %19 = load i32, i32* %pw_gid31, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i32 0, i32 0), i32 %19)
  call void @exit(i32 1) #7
  unreachable

if.end.33:                                        ; preds = %if.then.27
  %20 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 2
  %21 = load i32, i32* %pw_uid, align 4
  %call34 = call i32 @setuid(i32 %21) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %pw_uid37 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 2
  %24 = load i32, i32* %pw_uid37, align 4
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0), i32 %24)
  call void @exit(i32 1) #7
  unreachable

if.end.39:                                        ; preds = %if.end.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %sw.bb.23
  %25 = load i8*, i8** %tmpdir.addr, align 8
  %call41 = call i32 @chdir(i8* %25) #5
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** %tmpdir.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i32 0, i32 0), i8* %27)
  call void @exit(i32 1) #7
  unreachable

if.end.46:                                        ; preds = %if.end.40
  %28 = load i16, i16* @printinfected, align 2
  %tobool47 = icmp ne i16 %28, 0
  br i1 %tobool47, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %if.end.46
  %call49 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i32 1)
  store i32 %call49, i32* %fdevnull, align 4
  %29 = load i32, i32* %fdevnull, align 4
  %cmp50 = icmp eq i32 %29, -1
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.then.48
  %call53 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.136, i32 0, i32 0))
  store i16 0, i16* @printinfected, align 2
  br label %if.end.57

if.else.54:                                       ; preds = %if.then.48
  %30 = load i32, i32* %fdevnull, align 4
  %call55 = call i32 @dup2(i32 %30, i32 1) #5
  %31 = load i32, i32* %fdevnull, align 4
  %call56 = call i32 @dup2(i32 %31, i32 2) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.46
  %32 = load i8*, i8** %prog.addr, align 8
  %call59 = call i8* @strchr(i8* %32, i32 47) #8
  %tobool60 = icmp ne i8* %call59, null
  br i1 %tobool60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.58
  %33 = load i8*, i8** %prog.addr, align 8
  %34 = load i8**, i8*** %args.addr, align 8
  %call62 = call i32 @execv(i8* %33, i8** %34) #5
  br label %if.end.65

if.else.63:                                       ; preds = %if.end.58
  %35 = load i8*, i8** %prog.addr, align 8
  %36 = load i8**, i8*** %args.addr, align 8
  %call64 = call i32 @execvp(i8* %35, i8** %36) #5
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i32 0, i32 0))
  call void @abort() #7
  unreachable

sw.default:                                       ; preds = %if.end.21
  %37 = load i32, i32* %maxfiles, align 4
  %tobool66 = icmp ne i32 %37, 0
  br i1 %tobool66, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %38 = load i32, i32* %maxspace, align 4
  %tobool67 = icmp ne i32 %38, 0
  br i1 %tobool67, label %if.then.68, label %if.else.91

if.then.68:                                       ; preds = %lor.lhs.false, %sw.default
  br label %while.cond

while.cond:                                       ; preds = %if.end.90, %if.then.68
  %39 = load i32, i32* %pid, align 4
  %call69 = call i32 @waitpid(i32 %39, i32* %status, i32 1)
  store i32 %call69, i32* %wret, align 4
  %tobool70 = icmp ne i32 %call69, 0
  %lnot = xor i1 %tobool70, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = bitcast %struct.s_du* %n to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false)
  %41 = load i8*, i8** %tmpdir.addr, align 8
  %call71 = call i32 @du(i8* %41, %struct.s_du* %n)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.90, label %if.then.73

if.then.73:                                       ; preds = %while.body
  %42 = load i32, i32* %maxfiles, align 4
  %tobool74 = icmp ne i32 %42, 0
  br i1 %tobool74, label %land.lhs.true.75, label %lor.lhs.false.78

land.lhs.true.75:                                 ; preds = %if.then.73
  %files = getelementptr inbounds %struct.s_du, %struct.s_du* %n, i32 0, i32 0
  %43 = load i32, i32* %files, align 4
  %44 = load i32, i32* %maxfiles, align 4
  %cmp76 = icmp ugt i32 %43, %44
  br i1 %cmp76, label %if.then.84, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.lhs.true.75, %if.then.73
  %45 = load i32, i32* %maxspace, align 4
  %tobool79 = icmp ne i32 %45, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.89

land.lhs.true.80:                                 ; preds = %lor.lhs.false.78
  %space = getelementptr inbounds %struct.s_du, %struct.s_du* %n, i32 0, i32 1
  %46 = load i64, i64* %space, align 8
  %47 = load i32, i32* %maxspace, align 4
  %conv81 = zext i32 %47 to i64
  %cmp82 = icmp ugt i64 %46, %conv81
  br i1 %cmp82, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %land.lhs.true.80, %land.lhs.true.75
  %files85 = getelementptr inbounds %struct.s_du, %struct.s_du* %n, i32 0, i32 0
  %48 = load i32, i32* %files85, align 4
  %space86 = getelementptr inbounds %struct.s_du, %struct.s_du* %n, i32 0, i32 1
  %49 = load i64, i64* %space86, align 8
  %call87 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.138, i32 0, i32 0), i32 %48, i64 %49)
  %50 = load i32, i32* %pid, align 4
  %call88 = call i32 @kill(i32 %50, i32 9) #5
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %land.lhs.true.80, %lor.lhs.false.78
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.93

if.else.91:                                       ; preds = %lor.lhs.false
  %51 = load i32, i32* %pid, align 4
  %call92 = call i32 @waitpid(i32 %51, i32* %status, i32 0)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %while.end
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* %__in, align 4
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %53 = load i32, i32* %__i, align 4
  %and = and i32 %53, 127
  %add = add nsw i32 %and, 1
  %conv94 = trunc i32 %add to i8
  %conv95 = sext i8 %conv94 to i32
  %shr = ashr i32 %conv95, 1
  %cmp96 = icmp sgt i32 %shr, 0
  br i1 %cmp96, label %if.then.98, label %if.else.113

if.then.98:                                       ; preds = %if.end.93
  %__in100 = bitcast %union.anon.0* %.compoundliteral99 to i32*
  %54 = load i32, i32* %status, align 4
  store i32 %54, i32* %__in100, align 4
  %__i101 = bitcast %union.anon.0* %.compoundliteral99 to i32*
  %55 = load i32, i32* %__i101, align 4
  %and102 = and i32 %55, 127
  switch i32 %and102, label %sw.default.107 [
    i32 9, label %sw.bb.103
    i32 6, label %sw.bb.105
  ]

sw.bb.103:                                        ; preds = %if.then.98
  %56 = load i32, i32* %pid, align 4
  %call104 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.139, i32 0, i32 0), i32 %56)
  store i32 0, i32* %retval
  br label %return

sw.bb.105:                                        ; preds = %if.then.98
  %57 = load i8*, i8** %prog.addr, align 8
  %call106 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i8* %57)
  store i32 -2, i32* %retval
  br label %return

sw.default.107:                                   ; preds = %if.then.98
  %__in109 = bitcast %union.anon.1* %.compoundliteral108 to i32*
  %58 = load i32, i32* %status, align 4
  store i32 %58, i32* %__in109, align 4
  %__i110 = bitcast %union.anon.1* %.compoundliteral108 to i32*
  %59 = load i32, i32* %__i110, align 4
  %and111 = and i32 %59, 127
  %call112 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.141, i32 0, i32 0), i32 %and111)
  store i32 -3, i32* %retval
  br label %return

if.else.113:                                      ; preds = %if.end.93
  %__in115 = bitcast %union.anon.2* %.compoundliteral114 to i32*
  %60 = load i32, i32* %status, align 4
  store i32 %60, i32* %__in115, align 4
  %__i116 = bitcast %union.anon.2* %.compoundliteral114 to i32*
  %61 = load i32, i32* %__i116, align 4
  %and117 = and i32 %61, 127
  %cmp118 = icmp eq i32 %and117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.else.113
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.else.113
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.122
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.120, %sw.default.107, %sw.bb.105, %sw.bb.103, %sw.bb
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @setgid(i32) #2

; Function Attrs: nounwind
declare i32 @setuid(i32) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @waitpid(i32, i32*, i32) #1

declare i32 @du(i8*, %struct.s_du*) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
