; ModuleID = './MultiSource.Applications.ClamAV/41.libclamav_dconf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dconf_module = type { i8*, i8*, i32, i8 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@modules = internal global [44 x %struct.dconf_module] [%struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 2, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 4, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 8, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 16, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 32, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 64, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 256, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 512, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 1024, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 2048, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 4096, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 8192, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 16384, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 32768, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 2, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 4, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 8, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 4096, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 16, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 32, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 64, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 128, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 256, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 512, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 1024, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 2048, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 8192, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 2, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 4, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 2, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i32 4, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 2, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i32 4, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 8, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 16, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 1, i8 1 }, %struct.dconf_module { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 2, i8 0 }, %struct.dconf_module zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"PE\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ELF\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ARCHIVE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DOCUMENT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"PHISHING\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Dynamic engine configuration settings:\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Module PE: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"   * Submodule %10s:\09%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"** Off **\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Module ELF: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Module ARCHIVE: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Module DOCUMENT: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Module MAIL: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Module OTHER: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Module PHISHING %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"PE:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ELF:\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"ARCHIVE:\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"DOCUMENT:\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"MAIL:\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"OTHER:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"PHISHING:\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Problem parsing configuration file at line %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"PARITE\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"KRIZ\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"MAGISTR\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"POLIPOS\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"MD5SECT\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"UPX\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"FSG\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"PETITE\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"PESPIN\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"YC\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"WWPACK\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"NSPACK\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"MEW\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"UPACK\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"ASPACK\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"RAR\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"GZIP\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ARJ\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"SZDD\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"CAB\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"CHM\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"OLE2\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"TAR\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"BINHEX\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"SIS\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"NSIS\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"AUTOIT\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"RTF\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"MBOX\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"TNEF\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"UUENCODED\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"SCRENC\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"CRYPTFF\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ENGINE\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"ENTCONV\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cli_dconf* @cli_dconf_init() #0 {
entry:
  %retval = alloca %struct.cli_dconf*, align 8
  %i = alloca i32, align 4
  %dconf = alloca %struct.cli_dconf*, align 8
  %call = call i8* @cli_calloc(i64 28, i64 1)
  %0 = bitcast i8* %call to %struct.cli_dconf*
  store %struct.cli_dconf* %0, %struct.cli_dconf** %dconf, align 8
  %1 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %tobool = icmp ne %struct.cli_dconf* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.cli_dconf* null, %struct.cli_dconf** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom
  %mname = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %mname, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom2
  %mname4 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %mname4, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom8
  %state = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx9, i32 0, i32 3
  %7 = load i8, i8* %state, align 1
  %tobool10 = icmp ne i8 %7, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.7
  %8 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom12
  %bflag = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx13, i32 0, i32 2
  %9 = load i32, i32* %bflag, align 4
  %10 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %pe = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %10, i32 0, i32 0
  %11 = load i32, i32* %pe, align 4
  %or = or i32 %11, %9
  store i32 %or, i32* %pe, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.7
  br label %if.end.122

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom15
  %mname17 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx16, i32 0, i32 0
  %13 = load i8*, i8** %mname17, align 8
  %call18 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else.31, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %14 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom21
  %state23 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx22, i32 0, i32 3
  %15 = load i8, i8* %state23, align 1
  %tobool24 = icmp ne i8 %15, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.then.20
  %16 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom26
  %bflag28 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx27, i32 0, i32 2
  %17 = load i32, i32* %bflag28, align 4
  %18 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %elf = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %18, i32 0, i32 1
  %19 = load i32, i32* %elf, align 4
  %or29 = or i32 %19, %17
  store i32 %or29, i32* %elf, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.then.20
  br label %if.end.121

if.else.31:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom32
  %mname34 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx33, i32 0, i32 0
  %21 = load i8*, i8** %mname34, align 8
  %call35 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.48, label %if.then.37

if.then.37:                                       ; preds = %if.else.31
  %22 = load i32, i32* %i, align 4
  %idxprom38 = zext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom38
  %state40 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx39, i32 0, i32 3
  %23 = load i8, i8* %state40, align 1
  %tobool41 = icmp ne i8 %23, 0
  br i1 %tobool41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.then.37
  %24 = load i32, i32* %i, align 4
  %idxprom43 = zext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom43
  %bflag45 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx44, i32 0, i32 2
  %25 = load i32, i32* %bflag45, align 4
  %26 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %archive = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %26, i32 0, i32 2
  %27 = load i32, i32* %archive, align 4
  %or46 = or i32 %27, %25
  store i32 %or46, i32* %archive, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %if.then.37
  br label %if.end.120

if.else.48:                                       ; preds = %if.else.31
  %28 = load i32, i32* %i, align 4
  %idxprom49 = zext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom49
  %mname51 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx50, i32 0, i32 0
  %29 = load i8*, i8** %mname51, align 8
  %call52 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.65, label %if.then.54

if.then.54:                                       ; preds = %if.else.48
  %30 = load i32, i32* %i, align 4
  %idxprom55 = zext i32 %30 to i64
  %arrayidx56 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom55
  %state57 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx56, i32 0, i32 3
  %31 = load i8, i8* %state57, align 1
  %tobool58 = icmp ne i8 %31, 0
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.then.54
  %32 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %32 to i64
  %arrayidx61 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom60
  %bflag62 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx61, i32 0, i32 2
  %33 = load i32, i32* %bflag62, align 4
  %34 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %doc = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %34, i32 0, i32 3
  %35 = load i32, i32* %doc, align 4
  %or63 = or i32 %35, %33
  store i32 %or63, i32* %doc, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.then.54
  br label %if.end.119

if.else.65:                                       ; preds = %if.else.48
  %36 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %36 to i64
  %arrayidx67 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom66
  %mname68 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx67, i32 0, i32 0
  %37 = load i8*, i8** %mname68, align 8
  %call69 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else.82, label %if.then.71

if.then.71:                                       ; preds = %if.else.65
  %38 = load i32, i32* %i, align 4
  %idxprom72 = zext i32 %38 to i64
  %arrayidx73 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom72
  %state74 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx73, i32 0, i32 3
  %39 = load i8, i8* %state74, align 1
  %tobool75 = icmp ne i8 %39, 0
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.then.71
  %40 = load i32, i32* %i, align 4
  %idxprom77 = zext i32 %40 to i64
  %arrayidx78 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom77
  %bflag79 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx78, i32 0, i32 2
  %41 = load i32, i32* %bflag79, align 4
  %42 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %mail = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %42, i32 0, i32 4
  %43 = load i32, i32* %mail, align 4
  %or80 = or i32 %43, %41
  store i32 %or80, i32* %mail, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.then.71
  br label %if.end.118

if.else.82:                                       ; preds = %if.else.65
  %44 = load i32, i32* %i, align 4
  %idxprom83 = zext i32 %44 to i64
  %arrayidx84 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom83
  %mname85 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx84, i32 0, i32 0
  %45 = load i8*, i8** %mname85, align 8
  %call86 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.else.99, label %if.then.88

if.then.88:                                       ; preds = %if.else.82
  %46 = load i32, i32* %i, align 4
  %idxprom89 = zext i32 %46 to i64
  %arrayidx90 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom89
  %state91 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx90, i32 0, i32 3
  %47 = load i8, i8* %state91, align 1
  %tobool92 = icmp ne i8 %47, 0
  br i1 %tobool92, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %if.then.88
  %48 = load i32, i32* %i, align 4
  %idxprom94 = zext i32 %48 to i64
  %arrayidx95 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom94
  %bflag96 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx95, i32 0, i32 2
  %49 = load i32, i32* %bflag96, align 4
  %50 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %other = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %50, i32 0, i32 5
  %51 = load i32, i32* %other, align 4
  %or97 = or i32 %51, %49
  store i32 %or97, i32* %other, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %if.then.88
  br label %if.end.117

if.else.99:                                       ; preds = %if.else.82
  %52 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %52 to i64
  %arrayidx101 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom100
  %mname102 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx101, i32 0, i32 0
  %53 = load i8*, i8** %mname102, align 8
  %call103 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.116, label %if.then.105

if.then.105:                                      ; preds = %if.else.99
  %54 = load i32, i32* %i, align 4
  %idxprom106 = zext i32 %54 to i64
  %arrayidx107 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom106
  %state108 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx107, i32 0, i32 3
  %55 = load i8, i8* %state108, align 1
  %tobool109 = icmp ne i8 %55, 0
  br i1 %tobool109, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %if.then.105
  %56 = load i32, i32* %i, align 4
  %idxprom111 = zext i32 %56 to i64
  %arrayidx112 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom111
  %bflag113 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx112, i32 0, i32 2
  %57 = load i32, i32* %bflag113, align 4
  %58 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %58, i32 0, i32 6
  %59 = load i32, i32* %phishing, align 4
  %or114 = or i32 %59, %57
  store i32 %or114, i32* %phishing, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.110, %if.then.105
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.99
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.98
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.81
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.64
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.47
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.30
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.122
  %60 = load i32, i32* %i, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  store %struct.cli_dconf* %61, %struct.cli_dconf** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %62 = load %struct.cli_dconf*, %struct.cli_dconf** %retval
  ret %struct.cli_dconf* %62
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @cli_dconf_print(%struct.cli_dconf* %dconf) #0 {
entry:
  %dconf.addr = alloca %struct.cli_dconf*, align 8
  %pe = alloca i8, align 1
  %elf = alloca i8, align 1
  %arch = alloca i8, align 1
  %doc = alloca i8, align 1
  %mail = alloca i8, align 1
  %other = alloca i8, align 1
  %phishing = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.cli_dconf* %dconf, %struct.cli_dconf** %dconf.addr, align 8
  store i8 0, i8* %pe, align 1
  store i8 0, i8* %elf, align 1
  store i8 0, i8* %arch, align 1
  store i8 0, i8* %doc, align 1
  store i8 0, i8* %mail, align 1
  store i8 0, i8* %other, align 1
  store i8 0, i8* %phishing, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom
  %mname = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %mname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom1
  %mname3 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx2, i32 0, i32 0
  %3 = load i8*, i8** %mname3, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.else.20, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i8, i8* %pe, align 1
  %tobool5 = icmp ne i8 %4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %5 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %pe7 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %5, i32 0, i32 0
  %6 = load i32, i32* %pe7, align 4
  %tobool8 = icmp ne i32 %6, 0
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %cond)
  store i8 1, i8* %pe, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %7 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %pe9 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %7, i32 0, i32 0
  %8 = load i32, i32* %pe9, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom12
  %sname = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx13, i32 0, i32 1
  %10 = load i8*, i8** %sname, align 8
  %11 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %pe14 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %11, i32 0, i32 0
  %12 = load i32, i32* %pe14, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom15
  %bflag = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx16, i32 0, i32 2
  %14 = load i32, i32* %bflag, align 4
  %and = and i32 %12, %14
  %tobool17 = icmp ne i32 %and, 0
  %cond18 = select i1 %tobool17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %10, i8* %cond18)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  br label %for.inc

if.end.19:                                        ; preds = %if.then.11
  br label %if.end.178

if.else.20:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom21
  %mname23 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx22, i32 0, i32 0
  %16 = load i8*, i8** %mname23, align 8
  %call24 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.33, label %if.then.26

if.then.26:                                       ; preds = %if.else.20
  %17 = load i8, i8* %elf, align 1
  %tobool27 = icmp ne i8 %17, 0
  br i1 %tobool27, label %if.end.32, label %if.then.28

if.then.28:                                       ; preds = %if.then.26
  %18 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %elf29 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %18, i32 0, i32 1
  %19 = load i32, i32* %elf29, align 4
  %tobool30 = icmp ne i32 %19, 0
  %cond31 = select i1 %tobool30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* %cond31)
  store i8 1, i8* %elf, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.then.26
  br label %if.end.177

if.else.33:                                       ; preds = %if.else.20
  %20 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom34
  %mname36 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx35, i32 0, i32 0
  %21 = load i8*, i8** %mname36, align 8
  %call37 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else.60, label %if.then.39

if.then.39:                                       ; preds = %if.else.33
  %22 = load i8, i8* %arch, align 1
  %tobool40 = icmp ne i8 %22, 0
  br i1 %tobool40, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %if.then.39
  %23 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %archive = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %23, i32 0, i32 2
  %24 = load i32, i32* %archive, align 4
  %tobool42 = icmp ne i32 %24, 0
  %cond43 = select i1 %tobool42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* %cond43)
  store i8 1, i8* %arch, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.then.39
  %25 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %archive45 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %25, i32 0, i32 2
  %26 = load i32, i32* %archive45, align 4
  %tobool46 = icmp ne i32 %26, 0
  br i1 %tobool46, label %if.then.47, label %if.else.58

if.then.47:                                       ; preds = %if.end.44
  %27 = load i32, i32* %i, align 4
  %idxprom48 = zext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom48
  %sname50 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx49, i32 0, i32 1
  %28 = load i8*, i8** %sname50, align 8
  %29 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %archive51 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %29, i32 0, i32 2
  %30 = load i32, i32* %archive51, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom52 = zext i32 %31 to i64
  %arrayidx53 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom52
  %bflag54 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx53, i32 0, i32 2
  %32 = load i32, i32* %bflag54, align 4
  %and55 = and i32 %30, %32
  %tobool56 = icmp ne i32 %and55, 0
  %cond57 = select i1 %tobool56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %28, i8* %cond57)
  br label %if.end.59

if.else.58:                                       ; preds = %if.end.44
  br label %for.inc

if.end.59:                                        ; preds = %if.then.47
  br label %if.end.176

if.else.60:                                       ; preds = %if.else.33
  %33 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %33 to i64
  %arrayidx62 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom61
  %mname63 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx62, i32 0, i32 0
  %34 = load i8*, i8** %mname63, align 8
  %call64 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.88, label %if.then.66

if.then.66:                                       ; preds = %if.else.60
  %35 = load i8, i8* %doc, align 1
  %tobool67 = icmp ne i8 %35, 0
  br i1 %tobool67, label %if.end.72, label %if.then.68

if.then.68:                                       ; preds = %if.then.66
  %36 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %doc69 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %36, i32 0, i32 3
  %37 = load i32, i32* %doc69, align 4
  %tobool70 = icmp ne i32 %37, 0
  %cond71 = select i1 %tobool70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* %cond71)
  store i8 1, i8* %doc, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.66
  %38 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %doc73 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %38, i32 0, i32 3
  %39 = load i32, i32* %doc73, align 4
  %tobool74 = icmp ne i32 %39, 0
  br i1 %tobool74, label %if.then.75, label %if.else.86

if.then.75:                                       ; preds = %if.end.72
  %40 = load i32, i32* %i, align 4
  %idxprom76 = zext i32 %40 to i64
  %arrayidx77 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom76
  %sname78 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx77, i32 0, i32 1
  %41 = load i8*, i8** %sname78, align 8
  %42 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %doc79 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %42, i32 0, i32 3
  %43 = load i32, i32* %doc79, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %44 to i64
  %arrayidx81 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom80
  %bflag82 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx81, i32 0, i32 2
  %45 = load i32, i32* %bflag82, align 4
  %and83 = and i32 %43, %45
  %tobool84 = icmp ne i32 %and83, 0
  %cond85 = select i1 %tobool84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %41, i8* %cond85)
  br label %if.end.87

if.else.86:                                       ; preds = %if.end.72
  br label %for.inc

if.end.87:                                        ; preds = %if.then.75
  br label %if.end.175

if.else.88:                                       ; preds = %if.else.60
  %46 = load i32, i32* %i, align 4
  %idxprom89 = zext i32 %46 to i64
  %arrayidx90 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom89
  %mname91 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx90, i32 0, i32 0
  %47 = load i8*, i8** %mname91, align 8
  %call92 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.else.116, label %if.then.94

if.then.94:                                       ; preds = %if.else.88
  %48 = load i8, i8* %mail, align 1
  %tobool95 = icmp ne i8 %48, 0
  br i1 %tobool95, label %if.end.100, label %if.then.96

if.then.96:                                       ; preds = %if.then.94
  %49 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %mail97 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %49, i32 0, i32 4
  %50 = load i32, i32* %mail97, align 4
  %tobool98 = icmp ne i32 %50, 0
  %cond99 = select i1 %tobool98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* %cond99)
  store i8 1, i8* %mail, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %if.then.94
  %51 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %mail101 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %51, i32 0, i32 4
  %52 = load i32, i32* %mail101, align 4
  %tobool102 = icmp ne i32 %52, 0
  br i1 %tobool102, label %if.then.103, label %if.else.114

if.then.103:                                      ; preds = %if.end.100
  %53 = load i32, i32* %i, align 4
  %idxprom104 = zext i32 %53 to i64
  %arrayidx105 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom104
  %sname106 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx105, i32 0, i32 1
  %54 = load i8*, i8** %sname106, align 8
  %55 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %mail107 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %55, i32 0, i32 4
  %56 = load i32, i32* %mail107, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom108 = zext i32 %57 to i64
  %arrayidx109 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom108
  %bflag110 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx109, i32 0, i32 2
  %58 = load i32, i32* %bflag110, align 4
  %and111 = and i32 %56, %58
  %tobool112 = icmp ne i32 %and111, 0
  %cond113 = select i1 %tobool112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %54, i8* %cond113)
  br label %if.end.115

if.else.114:                                      ; preds = %if.end.100
  br label %for.inc

if.end.115:                                       ; preds = %if.then.103
  br label %if.end.174

if.else.116:                                      ; preds = %if.else.88
  %59 = load i32, i32* %i, align 4
  %idxprom117 = zext i32 %59 to i64
  %arrayidx118 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom117
  %mname119 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx118, i32 0, i32 0
  %60 = load i8*, i8** %mname119, align 8
  %call120 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.else.144, label %if.then.122

if.then.122:                                      ; preds = %if.else.116
  %61 = load i8, i8* %other, align 1
  %tobool123 = icmp ne i8 %61, 0
  br i1 %tobool123, label %if.end.128, label %if.then.124

if.then.124:                                      ; preds = %if.then.122
  %62 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %other125 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %62, i32 0, i32 5
  %63 = load i32, i32* %other125, align 4
  %tobool126 = icmp ne i32 %63, 0
  %cond127 = select i1 %tobool126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %cond127)
  store i8 1, i8* %other, align 1
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.124, %if.then.122
  %64 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %other129 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %64, i32 0, i32 5
  %65 = load i32, i32* %other129, align 4
  %tobool130 = icmp ne i32 %65, 0
  br i1 %tobool130, label %if.then.131, label %if.else.142

if.then.131:                                      ; preds = %if.end.128
  %66 = load i32, i32* %i, align 4
  %idxprom132 = zext i32 %66 to i64
  %arrayidx133 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom132
  %sname134 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx133, i32 0, i32 1
  %67 = load i8*, i8** %sname134, align 8
  %68 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %other135 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %68, i32 0, i32 5
  %69 = load i32, i32* %other135, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom136 = zext i32 %70 to i64
  %arrayidx137 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom136
  %bflag138 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx137, i32 0, i32 2
  %71 = load i32, i32* %bflag138, align 4
  %and139 = and i32 %69, %71
  %tobool140 = icmp ne i32 %and139, 0
  %cond141 = select i1 %tobool140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %67, i8* %cond141)
  br label %if.end.143

if.else.142:                                      ; preds = %if.end.128
  br label %for.inc

if.end.143:                                       ; preds = %if.then.131
  br label %if.end.173

if.else.144:                                      ; preds = %if.else.116
  %72 = load i32, i32* %i, align 4
  %idxprom145 = zext i32 %72 to i64
  %arrayidx146 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom145
  %mname147 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx146, i32 0, i32 0
  %73 = load i8*, i8** %mname147, align 8
  %call148 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end.172, label %if.then.150

if.then.150:                                      ; preds = %if.else.144
  %74 = load i8, i8* %phishing, align 1
  %tobool151 = icmp ne i8 %74, 0
  br i1 %tobool151, label %if.end.156, label %if.then.152

if.then.152:                                      ; preds = %if.then.150
  %75 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %phishing153 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %75, i32 0, i32 6
  %76 = load i32, i32* %phishing153, align 4
  %tobool154 = icmp ne i32 %76, 0
  %cond155 = select i1 %tobool154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %cond155)
  store i8 1, i8* %phishing, align 1
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %if.then.150
  %77 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %phishing157 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %77, i32 0, i32 6
  %78 = load i32, i32* %phishing157, align 4
  %tobool158 = icmp ne i32 %78, 0
  br i1 %tobool158, label %if.then.159, label %if.else.170

if.then.159:                                      ; preds = %if.end.156
  %79 = load i32, i32* %i, align 4
  %idxprom160 = zext i32 %79 to i64
  %arrayidx161 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom160
  %sname162 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx161, i32 0, i32 1
  %80 = load i8*, i8** %sname162, align 8
  %81 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %phishing163 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %81, i32 0, i32 6
  %82 = load i32, i32* %phishing163, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom164 = zext i32 %83 to i64
  %arrayidx165 = getelementptr inbounds [44 x %struct.dconf_module], [44 x %struct.dconf_module]* @modules, i32 0, i64 %idxprom164
  %bflag166 = getelementptr inbounds %struct.dconf_module, %struct.dconf_module* %arrayidx165, i32 0, i32 2
  %84 = load i32, i32* %bflag166, align 4
  %and167 = and i32 %82, %84
  %tobool168 = icmp ne i32 %and167, 0
  %cond169 = select i1 %tobool168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %80, i8* %cond169)
  br label %if.end.171

if.else.170:                                      ; preds = %if.end.156
  br label %for.inc

if.end.171:                                       ; preds = %if.then.159
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.else.144
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.143
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.115
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.87
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.59
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.32
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.178, %if.else.170, %if.else.142, %if.else.114, %if.else.86, %if.else.58, %if.else
  %85 = load i32, i32* %i, align 4
  %inc = add i32 %85, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @cli_dconf_load(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %options.addr = alloca i32, align 4
  %buffer = alloca [8192 x i8], align 16
  %line = alloca i32, align 4
  %ret = alloca i32, align 4
  %dconf = alloca %struct.cli_dconf*, align 8
  %val = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %line, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %6 = load %struct.cl_engine*, %struct.cl_engine** %5, align 8
  %dconf1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 11
  %7 = load i8*, i8** %dconf1, align 8
  %8 = bitcast i8* %7 to %struct.cli_dconf*
  store %struct.cli_dconf* %8, %struct.cli_dconf** %dconf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %9)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %line, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call5 = call i32 @cli_chomp(i8* %arraydecay4)
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call7 = call i32 @strncmp(i8* %arraydecay6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i64 3) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %arraydecay9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call10 = call i32 @chkflevel(i8* %arraydecay9, i32 2)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %land.lhs.true
  %arraydecay13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 3
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp = icmp eq i32 %call14, 1
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %11 = load i32, i32* %val, align 4
  %12 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %pe = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %12, i32 0, i32 0
  store i32 %11, i32* %pe, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.12
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.16:                                        ; preds = %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %while.body
  %arraydecay18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4) #5
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.33, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %if.end.17
  %arraydecay22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call23 = call i32 @chkflevel(i8* %arraydecay22, i32 2)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %land.lhs.true.21
  %arraydecay26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr27 = getelementptr inbounds i8, i8* %arraydecay26, i64 4
  %call28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.25
  %13 = load i32, i32* %val, align 4
  %14 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %elf = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %14, i32 0, i32 1
  store i32 %13, i32* %elf, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.then.25
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.32:                                        ; preds = %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true.21, %if.end.17
  %arraydecay34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call35 = call i32 @strncmp(i8* %arraydecay34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i64 8) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.49, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.33
  %arraydecay38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call39 = call i32 @chkflevel(i8* %arraydecay38, i32 2)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %land.lhs.true.37
  %arraydecay42 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr43 = getelementptr inbounds i8, i8* %arraydecay42, i64 8
  %call44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.then.41
  %15 = load i32, i32* %val, align 4
  %16 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %archive = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %16, i32 0, i32 2
  store i32 %15, i32* %archive, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.then.41
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.48:                                        ; preds = %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.37, %if.end.33
  %arraydecay50 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call51 = call i32 @strncmp(i8* %arraydecay50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 9) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.65, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %if.end.49
  %arraydecay54 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call55 = call i32 @chkflevel(i8* %arraydecay54, i32 2)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %land.lhs.true.53
  %arraydecay58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr59 = getelementptr inbounds i8, i8* %arraydecay58, i64 9
  %call60 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp61 = icmp eq i32 %call60, 1
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.57
  %17 = load i32, i32* %val, align 4
  %18 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %doc = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %18, i32 0, i32 3
  store i32 %17, i32* %doc, align 4
  br label %if.end.64

if.else.63:                                       ; preds = %if.then.57
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.64:                                        ; preds = %if.then.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.53, %if.end.49
  %arraydecay66 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call67 = call i32 @strncmp(i8* %arraydecay66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 5) #5
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.81, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.end.65
  %arraydecay70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call71 = call i32 @chkflevel(i8* %arraydecay70, i32 2)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %land.lhs.true.69
  %arraydecay74 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr75 = getelementptr inbounds i8, i8* %arraydecay74, i64 5
  %call76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp77 = icmp eq i32 %call76, 1
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.then.73
  %19 = load i32, i32* %val, align 4
  %20 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %mail = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %20, i32 0, i32 4
  store i32 %19, i32* %mail, align 4
  br label %if.end.80

if.else.79:                                       ; preds = %if.then.73
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.80:                                        ; preds = %if.then.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %land.lhs.true.69, %if.end.65
  %arraydecay82 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call83 = call i32 @strncmp(i8* %arraydecay82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i64 6) #5
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.97, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %if.end.81
  %arraydecay86 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call87 = call i32 @chkflevel(i8* %arraydecay86, i32 2)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %land.lhs.true.85
  %arraydecay90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr91 = getelementptr inbounds i8, i8* %arraydecay90, i64 6
  %call92 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp93 = icmp eq i32 %call92, 1
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.then.89
  %21 = load i32, i32* %val, align 4
  %22 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %other = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %22, i32 0, i32 5
  store i32 %21, i32* %other, align 4
  br label %if.end.96

if.else.95:                                       ; preds = %if.then.89
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.96:                                        ; preds = %if.then.94
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %land.lhs.true.85, %if.end.81
  %arraydecay98 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call99 = call i32 @strncmp(i8* %arraydecay98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i64 9) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.113, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %if.end.97
  %arraydecay102 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call103 = call i32 @chkflevel(i8* %arraydecay102, i32 2)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.113

if.then.105:                                      ; preds = %land.lhs.true.101
  %arraydecay106 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr107 = getelementptr inbounds i8, i8* %arraydecay106, i64 9
  %call108 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32* %val) #6
  %cmp109 = icmp eq i32 %call108, 1
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.then.105
  %23 = load i32, i32* %val, align 4
  %24 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %24, i32 0, i32 6
  store i32 %23, i32* %phishing, align 4
  br label %if.end.112

if.else.111:                                      ; preds = %if.then.105
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.112:                                       ; preds = %if.then.110
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %land.lhs.true.101, %if.end.97
  br label %while.cond

while.end:                                        ; preds = %if.else.111, %if.else.95, %if.else.79, %if.else.63, %if.else.47, %if.else.31, %if.else, %while.cond
  %25 = load i32, i32* %ret, align 4
  %tobool114 = icmp ne i32 %25, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.end
  %26 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), i32 %26)
  %27 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %28 = load %struct.cl_engine*, %struct.cl_engine** %27, align 8
  call void @cl_free(%struct.cl_engine* %28)
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.116:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.then.115, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @cli_initengine(%struct.cl_engine**, i32) #1

declare void @cl_free(%struct.cl_engine*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @cli_chomp(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @chkflevel(i8* %entry1, i32 %field) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca i8*, align 8
  %field.addr = alloca i32, align 4
  %pt = alloca i8*, align 8
  store i8* %entry1, i8** %entry.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  %0 = load i8*, i8** %entry.addr, align 8
  %1 = load i32, i32* %field.addr, align 4
  %call = call i8* @cli_strtok(i8* %0, i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  store i8* %call, i8** %pt, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pt, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call2 = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call2, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 2048
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %6 = load i8*, i8** %pt, align 8
  call void @free(i8* %6) #6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** %pt, align 8
  %call6 = call i32 @atoi(i8* %7) #5
  %call7 = call i32 @cl_retflevel()
  %cmp = icmp ugt i32 %call6, %call7
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %8 = load i8*, i8** %pt, align 8
  call void @free(i8* %8) #6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %9 = load i8*, i8** %pt, align 8
  call void @free(i8* %9) #6
  %10 = load i8*, i8** %entry.addr, align 8
  %11 = load i32, i32* %field.addr, align 4
  %add = add nsw i32 %11, 1
  %call11 = call i8* @cli_strtok(i8* %10, i32 %add, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  store i8* %call11, i8** %pt, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.10
  %12 = load i8*, i8** %pt, align 8
  %13 = load i8, i8* %12, align 1
  %conv14 = sext i8 %13 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %14, i64 %idxprom15
  %15 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %15 to i32
  %and19 = and i32 %conv18, 2048
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.13
  %16 = load i8*, i8** %pt, align 8
  call void @free(i8* %16) #6
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.13
  %17 = load i8*, i8** %pt, align 8
  %call23 = call i32 @atoi(i8* %17) #5
  %call24 = call i32 @cl_retflevel()
  %cmp25 = icmp ult i32 %call23, %call24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  %18 = load i8*, i8** %pt, align 8
  call void @free(i8* %18) #6
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %19 = load i8*, i8** %pt, align 8
  call void @free(i8* %19) #6
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.10
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.27, %if.then.21, %if.then.9, %if.then.5
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @cli_errmsg(i8*, ...) #1

declare i8* @cli_strtok(i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @cl_retflevel() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
