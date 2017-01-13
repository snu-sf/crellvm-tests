; ModuleID = './MultiSource.Applications.ClamAV/43.libclamav_vba_extract.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vba_version_tag = type { [4 x i8], i8*, i32 }
%struct.vba_project_tag = type { i32, i8**, i32*, i32*, i8*, i8* }
%struct.vba56_header = type <{ [2 x i8], [4 x i8], i16, i32, i32, i16, i16, i32, i32, i16, i16, i16 }>
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.atom_header_tag = type { i64, i16, i8, i16, i16, i32 }
%struct.macro_info_tag = type { i16, %struct.macro_entry_tag* }
%struct.macro_entry_tag = type { i8, i8, i16, i16, i16, i32, i32, i32, i32 }
%struct.mso_fib_tag = type { [12 x i8], i32, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@vba56_dir_read.vba56_signature = internal constant [2 x i8] c"\CCa", align 1
@.str = private unnamed_addr constant [21 x i8] c"in vba56_dir_read()\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/_VBA_PROJECT\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Can't open %s\0A\00", align 1
@vba_version = internal constant [14 x %struct.vba_version_tag] [%struct.vba_version_tag { [4 x i8] c"^\00\00\01", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"_\00\00\01", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"e\00\00\01", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"k\00\00\01", i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"m\00\00\01", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"o\00\00\01", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"p\00\00\01", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"s\00\00\01", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"v\00\00\01", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"y\00\00\01", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0 }, %struct.vba_version_tag { [4 x i8] c"`\00\00\0E", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 1 }, %struct.vba_version_tag { [4 x i8] c"b\00\00\0E", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 1 }, %struct.vba_version_tag { [4 x i8] c"c\00\00\0E", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 1 }, %struct.vba_version_tag { [4 x i8] c"d\00\00\0E", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 1 }], align 16
@.str.3 = private unnamed_addr constant [43 x i8] c"Unknown VBA version signature %x %x %x %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Guessing little-endian\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Guessing big-endian\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to guess VBA type\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"VBA Project: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0AVBA Record count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0AVBA Record count too big\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"zero name length\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"cli_malloc failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"read name failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"clamav-%.10d\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"project name: %s, \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"offset:%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s/_clam_ole_object\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s/PowerPoint Document\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Open PowerPoint Document failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%s/WordDocument\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Open WordDocument failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"No macros detected\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"lseek macro_offset failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"read macro_info failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"unknown type: 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"WordDocument\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Office 97\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Office 97 SR1\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Office 2000 alpha?\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Office 2000 beta?\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Office 2000\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Office XP beta 1/2\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Office XP\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Office 2003\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"MacOffice 98\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"MacOffice 2001\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"MacOffice X\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"MacOffice 2004\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"read name failed - rewinding\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"length: %d, name: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"length: %d, name: [null]\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"*\5C\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"GCHD\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"offset: %u\0A\00", align 1
@vba56_test_middle.middle1_str = internal constant [20 x i8] c"\00\01\0DE.\E1\E0\8F\10\1A\85.\02`\8CM\0B\B4\00\00", align 16
@vba56_test_middle.middle2_str = internal constant [20 x i8] c"\00\00\E1.E\0D\8F\E0\1A\10\85.\02`\8CM\0B\B4\00\00", align 16
@.str.44 = private unnamed_addr constant [18 x i8] c"middle not found\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"middle found\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"get_unicode_name: odd number of bytes %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"ScanOLE2 -> Can't create temporary directory %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"read ole_id failed\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"OleID: %d, length: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"ppt_unlzw failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"read ppt_current_user failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Atom Hdr:\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"  Version: 0x%.2x\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"  Instance: 0x%.4x\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"  Type: 0x%.4x\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"  Length: 0x%.8x\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"%s/ppt%.8lx.doc\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"ppt_unlzw Open outfile failed\0A\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c" ppt_unlzw !Z_OK: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"lseek wm_fib failed\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"read wm_fib failed\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"macro offset: 0x%.4x\0A\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"macro len: 0x%.4x\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"macro count: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"read macro_entry failed\0A\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"read oxo3 record1 failed\0A\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"lseek oxo3 record1 failed\0A\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"oxo3 records1: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"read oxo3 record2 failed\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"read oxo3 failed\0A\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"lseek oxo3 failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"oxo3 records2: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"read menu_info failed\0A\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"menu_info count: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"read macro_extnames failed\0A\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"ext names size: 0x%x\0A\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"read macro_extnames failed to seek\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"read macro_intnames failed\0A\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"int names count: %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"skip_macro_intnames failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.vba_project_tag* @vba56_dir_read(i8* %dir) #0 {
entry:
  %retval = alloca %struct.vba_project_tag*, align 8
  %dir.addr = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %record_count = alloca i16, align 2
  %length = alloca i16, align 2
  %ffff = alloca i16, align 2
  %byte_count = alloca i16, align 2
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %fd = alloca i32, align 4
  %is_mac = alloca i32, align 4
  %vba_project = alloca %struct.vba_project_tag*, align 8
  %v56h = alloca %struct.vba56_header, align 1
  %fullname = alloca [257 x i8], align 16
  store i8* %dir, i8** %dir.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call2 = call i32 (i8*, i32, ...) @open(i8* %arraydecay1, i32 0)
  store i32 %call2, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %3 = bitcast %struct.vba56_header* %v56h to i8*
  %call4 = call i32 @cli_readn(i32 %2, i8* %3, i32 34)
  %conv = sext i32 %call4 to i64
  %cmp5 = icmp ne i64 %conv, 34
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call8 = call i32 @close(i32 %4)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %magic = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %magic, i32 0, i32 0
  %call11 = call i32 @memcmp(i8* %arraydecay10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @vba56_dir_read.vba56_signature, i32 0, i32 0), i64 2) #6
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.9
  %5 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %5)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %6 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %6, 14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %version = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %version, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [14 x %struct.vba_version_tag], [14 x %struct.vba_version_tag]* @vba_version, i32 0, i64 %idxprom
  %signature = getelementptr inbounds %struct.vba_version_tag, %struct.vba_version_tag* %arrayidx, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i32 0
  %call21 = call i32 @memcmp(i8* %arraydecay19, i8* %arraydecay20, i64 4) #6
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %for.end

if.end.25:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  %9 = load i32, i32* %i, align 4
  %cmp26 = icmp eq i32 %9, 14
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.end
  %version29 = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %version29, i32 0, i64 0
  %10 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %10 to i32
  %version32 = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %version32, i32 0, i64 1
  %11 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %11 to i32
  %version35 = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %version35, i32 0, i64 2
  %12 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %12 to i32
  %version38 = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %version38, i32 0, i64 3
  %13 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %13 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i32 %conv31, i32 %conv34, i32 %conv37, i32 %conv40)
  %version41 = getelementptr inbounds %struct.vba56_header, %struct.vba56_header* %v56h, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %version41, i32 0, i64 3
  %14 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %14 to i32
  switch i32 %conv43, label %sw.default [
    i32 1, label %sw.bb
    i32 14, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.then.28
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %is_mac, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.28
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %is_mac, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.28
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  %15 = load i32, i32* %fd, align 4
  %call45 = call i32 @close(i32 %15)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.44, %sw.bb
  br label %if.end.51

if.else:                                          ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %16 to i64
  %arrayidx47 = getelementptr inbounds [14 x %struct.vba_version_tag], [14 x %struct.vba_version_tag]* @vba_version, i32 0, i64 %idxprom46
  %name = getelementptr inbounds %struct.vba_version_tag, %struct.vba_version_tag* %arrayidx47, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* %17)
  %18 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %18 to i64
  %arrayidx49 = getelementptr inbounds [14 x %struct.vba_version_tag], [14 x %struct.vba_version_tag]* @vba_version, i32 0, i64 %idxprom48
  %is_mac50 = getelementptr inbounds %struct.vba_version_tag, %struct.vba_version_tag* %arrayidx49, i32 0, i32 2
  %19 = load i32, i32* %is_mac50, align 4
  store i32 %19, i32* %is_mac, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %sw.epilog
  %20 = load i32, i32* %fd, align 4
  %21 = load i32, i32* %is_mac, align 4
  %call52 = call i32 @vba_read_project_strings(i32 %20, i32 %21)
  %tobool = icmp ne i32 %call52, 0
  br i1 %tobool, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %22 = load i32, i32* %fd, align 4
  %call54 = call i32 @close(i32 %22)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.55
  %23 = load i32, i32* %fd, align 4
  %24 = bitcast i16* %ffff to i8*
  %call56 = call i32 @cli_readn(i32 %23, i8* %24, i32 2)
  %cmp57 = icmp ne i32 %call56, 2
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %do.body
  %25 = load i32, i32* %fd, align 4
  %call60 = call i32 @close(i32 %25)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.61:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.61
  %26 = load i16, i16* %ffff, align 2
  %conv62 = zext i16 %26 to i32
  %cmp63 = icmp ne i32 %conv62, 65535
  br i1 %cmp63, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %fd, align 4
  %call65 = call i64 @lseek(i32 %27, i64 -3, i32 1) #4
  %28 = load i32, i32* %fd, align 4
  %29 = bitcast i16* %ffff to i8*
  %call66 = call i32 @cli_readn(i32 %28, i8* %29, i32 2)
  %cmp67 = icmp ne i32 %call66, 2
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %do.end
  %30 = load i32, i32* %fd, align 4
  %call70 = call i32 @close(i32 %30)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.71:                                        ; preds = %do.end
  %31 = load i16, i16* %ffff, align 2
  %conv72 = zext i16 %31 to i32
  %cmp73 = icmp ne i32 %conv72, 65535
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.71
  %32 = load i32, i32* %fd, align 4
  %call76 = call i64 @lseek(i32 %32, i64 1, i32 1) #4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.71
  %33 = load i32, i32* %fd, align 4
  %34 = bitcast i16* %ffff to i8*
  %call78 = call i32 @cli_readn(i32 %33, i8* %34, i32 2)
  %cmp79 = icmp ne i32 %call78, 2
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.77
  %35 = load i32, i32* %fd, align 4
  %call82 = call i32 @close(i32 %35)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.77
  %36 = load i16, i16* %ffff, align 2
  %conv84 = zext i16 %36 to i32
  %cmp85 = icmp ne i32 %conv84, 65535
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.end.83
  %37 = load i16, i16* %ffff, align 2
  %38 = load i32, i32* %is_mac, align 4
  %call88 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %37, i32 %38)
  store i16 %call88, i16* %ffff, align 2
  %39 = load i32, i32* %fd, align 4
  %40 = load i16, i16* %ffff, align 2
  %conv89 = zext i16 %40 to i64
  %call90 = call i64 @lseek(i32 %39, i64 %conv89, i32 1) #4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %if.end.83
  %41 = load i32, i32* %fd, align 4
  %42 = bitcast i16* %ffff to i8*
  %call92 = call i32 @cli_readn(i32 %41, i8* %42, i32 2)
  %cmp93 = icmp ne i32 %call92, 2
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.91
  %43 = load i32, i32* %fd, align 4
  %call96 = call i32 @close(i32 %43)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.97:                                        ; preds = %if.end.91
  %44 = load i16, i16* %ffff, align 2
  %conv98 = zext i16 %44 to i32
  %cmp99 = icmp ne i32 %conv98, 65535
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %if.end.97
  %45 = load i16, i16* %ffff, align 2
  %46 = load i32, i32* %is_mac, align 4
  %call102 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %45, i32 %46)
  store i16 %call102, i16* %ffff, align 2
  %47 = load i32, i32* %fd, align 4
  %48 = load i16, i16* %ffff, align 2
  %conv103 = zext i16 %48 to i64
  %call104 = call i64 @lseek(i32 %47, i64 %conv103, i32 1) #4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %if.end.97
  %49 = load i32, i32* %fd, align 4
  %call106 = call i64 @lseek(i32 %49, i64 100, i32 1) #4
  %50 = load i32, i32* %fd, align 4
  %51 = bitcast i16* %record_count to i8*
  %call107 = call i32 @cli_readn(i32 %50, i8* %51, i32 2)
  %cmp108 = icmp ne i32 %call107, 2
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.105
  %52 = load i32, i32* %fd, align 4
  %call111 = call i32 @close(i32 %52)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.112:                                       ; preds = %if.end.105
  %53 = load i16, i16* %record_count, align 2
  %54 = load i32, i32* %is_mac, align 4
  %call113 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %53, i32 %54)
  store i16 %call113, i16* %record_count, align 2
  %55 = load i16, i16* %record_count, align 2
  %conv114 = zext i16 %55 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 %conv114)
  %56 = load i16, i16* %record_count, align 2
  %conv115 = zext i16 %56 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.112
  %57 = load i32, i32* %fd, align 4
  %call119 = call i32 @close(i32 %57)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.120:                                       ; preds = %if.end.112
  %58 = load i16, i16* %record_count, align 2
  %conv121 = zext i16 %58 to i32
  %cmp122 = icmp sgt i32 %conv121, 1000
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.120
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  %59 = load i32, i32* %fd, align 4
  %call125 = call i32 @close(i32 %59)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.126:                                       ; preds = %if.end.120
  %call127 = call i8* @cli_malloc(i64 48)
  %60 = bitcast i8* %call127 to %struct.vba_project_tag*
  store %struct.vba_project_tag* %60, %struct.vba_project_tag** %vba_project, align 8
  %61 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %tobool128 = icmp ne %struct.vba_project_tag* %61, null
  br i1 %tobool128, label %if.end.131, label %if.then.129

if.then.129:                                      ; preds = %if.end.126
  %62 = load i32, i32* %fd, align 4
  %call130 = call i32 @close(i32 %62)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.126
  %63 = load i16, i16* %record_count, align 2
  %conv132 = zext i16 %63 to i64
  %mul = mul i64 8, %conv132
  %call133 = call i8* @cli_malloc(i64 %mul)
  %64 = bitcast i8* %call133 to i8**
  %65 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name134 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %65, i32 0, i32 1
  store i8** %64, i8*** %name134, align 8
  %66 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name135 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %66, i32 0, i32 1
  %67 = load i8**, i8*** %name135, align 8
  %tobool136 = icmp ne i8** %67, null
  br i1 %tobool136, label %if.end.139, label %if.then.137

if.then.137:                                      ; preds = %if.end.131
  %68 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %69 = bitcast %struct.vba_project_tag* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load i32, i32* %fd, align 4
  %call138 = call i32 @close(i32 %70)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.139:                                       ; preds = %if.end.131
  %71 = load i8*, i8** %dir.addr, align 8
  %call140 = call i8* @cli_strdup(i8* %71)
  %72 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir141 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %72, i32 0, i32 5
  store i8* %call140, i8** %dir141, align 8
  %73 = load i16, i16* %record_count, align 2
  %conv142 = zext i16 %73 to i64
  %mul143 = mul i64 4, %conv142
  %call144 = call i8* @cli_malloc(i64 %mul143)
  %74 = bitcast i8* %call144 to i32*
  %75 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset145 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %75, i32 0, i32 2
  store i32* %74, i32** %offset145, align 8
  %76 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset146 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %76, i32 0, i32 2
  %77 = load i32*, i32** %offset146, align 8
  %tobool147 = icmp ne i32* %77, null
  br i1 %tobool147, label %if.end.152, label %if.then.148

if.then.148:                                      ; preds = %if.end.139
  %78 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir149 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %78, i32 0, i32 5
  %79 = load i8*, i8** %dir149, align 8
  call void @free(i8* %79) #4
  %80 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name150 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %80, i32 0, i32 1
  %81 = load i8**, i8*** %name150, align 8
  %82 = bitcast i8** %81 to i8*
  call void @free(i8* %82) #4
  %83 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %84 = bitcast %struct.vba_project_tag* %83 to i8*
  call void @free(i8* %84) #4
  %85 = load i32, i32* %fd, align 4
  %call151 = call i32 @close(i32 %85)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.152:                                       ; preds = %if.end.139
  %86 = load i16, i16* %record_count, align 2
  %conv153 = zext i16 %86 to i32
  %87 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %87, i32 0, i32 0
  store i32 %conv153, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.282, %if.end.152
  %88 = load i32, i32* %i, align 4
  %89 = load i16, i16* %record_count, align 2
  %conv155 = zext i16 %89 to i32
  %cmp156 = icmp slt i32 %88, %conv155
  br i1 %cmp156, label %for.body.158, label %for.end.284

for.body.158:                                     ; preds = %for.cond.154
  %90 = load i32, i32* %fd, align 4
  %91 = bitcast i16* %length to i8*
  %call159 = call i32 @cli_readn(i32 %90, i8* %91, i32 2)
  %cmp160 = icmp ne i32 %call159, 2
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.body.158
  br label %for.end.284

if.end.163:                                       ; preds = %for.body.158
  %92 = load i16, i16* %length, align 2
  %93 = load i32, i32* %is_mac, align 4
  %call164 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %92, i32 %93)
  store i16 %call164, i16* %length, align 2
  %94 = load i16, i16* %length, align 2
  %conv165 = zext i16 %94 to i32
  %cmp166 = icmp eq i32 %conv165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.163
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %for.end.284

if.end.169:                                       ; preds = %if.end.163
  %95 = load i16, i16* %length, align 2
  %conv170 = zext i16 %95 to i64
  %call171 = call i8* @cli_malloc(i64 %conv170)
  store i8* %call171, i8** %buff, align 8
  %96 = load i8*, i8** %buff, align 8
  %tobool172 = icmp ne i8* %96, null
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %if.end.169
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %for.end.284

if.end.174:                                       ; preds = %if.end.169
  %97 = load i32, i32* %fd, align 4
  %98 = load i8*, i8** %buff, align 8
  %99 = load i16, i16* %length, align 2
  %conv175 = zext i16 %99 to i32
  %call176 = call i32 @cli_readn(i32 %97, i8* %98, i32 %conv175)
  %100 = load i16, i16* %length, align 2
  %conv177 = zext i16 %100 to i32
  %cmp178 = icmp ne i32 %call176, %conv177
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.174
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %101 = load i8*, i8** %buff, align 8
  call void @free(i8* %101) #4
  br label %for.end.284

if.end.181:                                       ; preds = %if.end.174
  %102 = load i8*, i8** %buff, align 8
  %103 = load i16, i16* %length, align 2
  %conv182 = zext i16 %103 to i32
  %104 = load i32, i32* %is_mac, align 4
  %call183 = call i8* @get_unicode_name(i8* %102, i32 %conv182, i32 %104)
  %105 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name185 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %106, i32 0, i32 1
  %107 = load i8**, i8*** %name185, align 8
  %arrayidx186 = getelementptr inbounds i8*, i8** %107, i64 %idxprom184
  store i8* %call183, i8** %arrayidx186, align 8
  %108 = load i8*, i8** %buff, align 8
  call void @free(i8* %108) #4
  %109 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %109 to i64
  %110 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name188 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %110, i32 0, i32 1
  %111 = load i8**, i8*** %name188, align 8
  %arrayidx189 = getelementptr inbounds i8*, i8** %111, i64 %idxprom187
  %112 = load i8*, i8** %arrayidx189, align 8
  %tobool190 = icmp ne i8* %112, null
  br i1 %tobool190, label %if.end.209, label %if.then.191

if.then.191:                                      ; preds = %if.end.181
  %113 = load i32, i32* %fd, align 4
  %call192 = call i64 @lseek(i32 %113, i64 0, i32 1) #4
  %conv193 = trunc i64 %call192 to i32
  store i32 %conv193, i32* %offset, align 4
  %call194 = call i8* @cli_malloc(i64 18)
  %114 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %114 to i64
  %115 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name196 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %115, i32 0, i32 1
  %116 = load i8**, i8*** %name196, align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %116, i64 %idxprom195
  store i8* %call194, i8** %arrayidx197, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %117 to i64
  %118 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name199 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %118, i32 0, i32 1
  %119 = load i8**, i8*** %name199, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %119, i64 %idxprom198
  %120 = load i8*, i8** %arrayidx200, align 8
  %cmp201 = icmp eq i8* %120, null
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.191
  br label %for.end.284

if.end.204:                                       ; preds = %if.then.191
  %121 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %121 to i64
  %122 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name206 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %122, i32 0, i32 1
  %123 = load i8**, i8*** %name206, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %123, i64 %idxprom205
  %124 = load i8*, i8** %arrayidx207, align 8
  %125 = load i32, i32* %offset, align 4
  %call208 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %124, i64 18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %125) #4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.204, %if.end.181
  %126 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %126 to i64
  %127 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name211 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %127, i32 0, i32 1
  %128 = load i8**, i8*** %name211, align 8
  %arrayidx212 = getelementptr inbounds i8*, i8** %128, i64 %idxprom210
  %129 = load i8*, i8** %arrayidx212, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %129)
  %130 = load i32, i32* %fd, align 4
  %131 = bitcast i16* %length to i8*
  %call213 = call i32 @cli_readn(i32 %130, i8* %131, i32 2)
  %cmp214 = icmp ne i32 %call213, 2
  br i1 %cmp214, label %if.then.216, label %if.end.220

if.then.216:                                      ; preds = %if.end.209
  %132 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %132 to i64
  %133 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name218 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %133, i32 0, i32 1
  %134 = load i8**, i8*** %name218, align 8
  %arrayidx219 = getelementptr inbounds i8*, i8** %134, i64 %idxprom217
  %135 = load i8*, i8** %arrayidx219, align 8
  call void @free(i8* %135) #4
  br label %for.end.284

if.end.220:                                       ; preds = %if.end.209
  %136 = load i16, i16* %length, align 2
  %137 = load i32, i32* %is_mac, align 4
  %call221 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %136, i32 %137)
  store i16 %call221, i16* %length, align 2
  %138 = load i32, i32* %fd, align 4
  %139 = load i16, i16* %length, align 2
  %conv222 = zext i16 %139 to i64
  %call223 = call i64 @lseek(i32 %138, i64 %conv222, i32 1) #4
  %140 = load i32, i32* %fd, align 4
  %141 = bitcast i16* %ffff to i8*
  %call224 = call i32 @cli_readn(i32 %140, i8* %141, i32 2)
  %cmp225 = icmp ne i32 %call224, 2
  br i1 %cmp225, label %if.then.227, label %if.end.231

if.then.227:                                      ; preds = %if.end.220
  %142 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %142 to i64
  %143 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name229 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %143, i32 0, i32 1
  %144 = load i8**, i8*** %name229, align 8
  %arrayidx230 = getelementptr inbounds i8*, i8** %144, i64 %idxprom228
  %145 = load i8*, i8** %arrayidx230, align 8
  call void @free(i8* %145) #4
  br label %for.end.284

if.end.231:                                       ; preds = %if.end.220
  %146 = load i16, i16* %ffff, align 2
  %147 = load i32, i32* %is_mac, align 4
  %call232 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %146, i32 %147)
  store i16 %call232, i16* %ffff, align 2
  %148 = load i16, i16* %ffff, align 2
  %conv233 = zext i16 %148 to i32
  %cmp234 = icmp eq i32 %conv233, 65535
  br i1 %cmp234, label %if.then.236, label %if.else.249

if.then.236:                                      ; preds = %if.end.231
  %149 = load i32, i32* %fd, align 4
  %call237 = call i64 @lseek(i32 %149, i64 2, i32 1) #4
  %150 = load i32, i32* %fd, align 4
  %151 = bitcast i16* %ffff to i8*
  %call238 = call i32 @cli_readn(i32 %150, i8* %151, i32 2)
  %cmp239 = icmp ne i32 %call238, 2
  br i1 %cmp239, label %if.then.241, label %if.end.245

if.then.241:                                      ; preds = %if.then.236
  %152 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %152 to i64
  %153 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name243 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %153, i32 0, i32 1
  %154 = load i8**, i8*** %name243, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %154, i64 %idxprom242
  %155 = load i8*, i8** %arrayidx244, align 8
  call void @free(i8* %155) #4
  br label %for.end.284

if.end.245:                                       ; preds = %if.then.236
  %156 = load i16, i16* %ffff, align 2
  %157 = load i32, i32* %is_mac, align 4
  %call246 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %156, i32 %157)
  store i16 %call246, i16* %ffff, align 2
  %158 = load i32, i32* %fd, align 4
  %159 = load i16, i16* %ffff, align 2
  %conv247 = zext i16 %159 to i64
  %call248 = call i64 @lseek(i32 %158, i64 %conv247, i32 1) #4
  br label %if.end.253

if.else.249:                                      ; preds = %if.end.231
  %160 = load i32, i32* %fd, align 4
  %161 = load i16, i16* %ffff, align 2
  %conv250 = zext i16 %161 to i32
  %add = add nsw i32 2, %conv250
  %conv251 = sext i32 %add to i64
  %call252 = call i64 @lseek(i32 %160, i64 %conv251, i32 1) #4
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.249, %if.end.245
  %162 = load i32, i32* %fd, align 4
  %call254 = call i64 @lseek(i32 %162, i64 8, i32 1) #4
  %163 = load i32, i32* %fd, align 4
  %164 = bitcast i16* %byte_count to i8*
  %call255 = call i32 @cli_readn(i32 %163, i8* %164, i32 2)
  %cmp256 = icmp ne i32 %call255, 2
  br i1 %cmp256, label %if.then.258, label %if.end.262

if.then.258:                                      ; preds = %if.end.253
  %165 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %165 to i64
  %166 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name260 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %166, i32 0, i32 1
  %167 = load i8**, i8*** %name260, align 8
  %arrayidx261 = getelementptr inbounds i8*, i8** %167, i64 %idxprom259
  %168 = load i8*, i8** %arrayidx261, align 8
  call void @free(i8* %168) #4
  br label %for.end.284

if.end.262:                                       ; preds = %if.end.253
  %169 = load i16, i16* %byte_count, align 2
  %170 = load i32, i32* %is_mac, align 4
  %call263 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %169, i32 %170)
  store i16 %call263, i16* %byte_count, align 2
  %171 = load i32, i32* %fd, align 4
  %172 = load i16, i16* %byte_count, align 2
  %conv264 = zext i16 %172 to i32
  %mul265 = mul nsw i32 8, %conv264
  %add266 = add nsw i32 %mul265, 5
  %conv267 = sext i32 %add266 to i64
  %call268 = call i64 @lseek(i32 %171, i64 %conv267, i32 1) #4
  %173 = load i32, i32* %fd, align 4
  %174 = bitcast i32* %offset to i8*
  %call269 = call i32 @cli_readn(i32 %173, i8* %174, i32 4)
  %cmp270 = icmp ne i32 %call269, 4
  br i1 %cmp270, label %if.then.272, label %if.end.276

if.then.272:                                      ; preds = %if.end.262
  %175 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %175 to i64
  %176 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name274 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %176, i32 0, i32 1
  %177 = load i8**, i8*** %name274, align 8
  %arrayidx275 = getelementptr inbounds i8*, i8** %177, i64 %idxprom273
  %178 = load i8*, i8** %arrayidx275, align 8
  call void @free(i8* %178) #4
  br label %for.end.284

if.end.276:                                       ; preds = %if.end.262
  %179 = load i32, i32* %offset, align 4
  %180 = load i32, i32* %is_mac, align 4
  %call277 = call i32 @vba_endian_convert_32(i32 %179, i32 %180)
  store i32 %call277, i32* %offset, align 4
  %181 = load i32, i32* %offset, align 4
  %182 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %182 to i64
  %183 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset279 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %183, i32 0, i32 2
  %184 = load i32*, i32** %offset279, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %184, i64 %idxprom278
  store i32 %181, i32* %arrayidx280, align 4
  %185 = load i32, i32* %offset, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* %fd, align 4
  %call281 = call i64 @lseek(i32 %186, i64 2, i32 1) #4
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.276
  %187 = load i32, i32* %i, align 4
  %inc283 = add nsw i32 %187, 1
  store i32 %inc283, i32* %i, align 4
  br label %for.cond.154

for.end.284:                                      ; preds = %if.then.272, %if.then.258, %if.then.241, %if.then.227, %if.then.216, %if.then.203, %if.then.180, %if.then.173, %if.then.168, %if.then.162, %for.cond.154
  %188 = load i32, i32* %fd, align 4
  %call285 = call i32 @close(i32 %188)
  %189 = load i32, i32* %i, align 4
  %190 = load i16, i16* %record_count, align 2
  %conv286 = zext i16 %190 to i32
  %cmp287 = icmp slt i32 %189, %conv286
  br i1 %cmp287, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %for.end.284
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.289
  %191 = load i32, i32* %i, align 4
  %dec = add nsw i32 %191, -1
  store i32 %dec, i32* %i, align 4
  %cmp290 = icmp sge i32 %dec, 0
  br i1 %cmp290, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %192 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %192 to i64
  %193 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name293 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %193, i32 0, i32 1
  %194 = load i8**, i8*** %name293, align 8
  %arrayidx294 = getelementptr inbounds i8*, i8** %194, i64 %idxprom292
  %195 = load i8*, i8** %arrayidx294, align 8
  call void @free(i8* %195) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %196 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name295 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %196, i32 0, i32 1
  %197 = load i8**, i8*** %name295, align 8
  %198 = bitcast i8** %197 to i8*
  call void @free(i8* %198) #4
  %199 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir296 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %199, i32 0, i32 5
  %200 = load i8*, i8** %dir296, align 8
  call void @free(i8* %200) #4
  %201 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset297 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %201, i32 0, i32 2
  %202 = load i32*, i32** %offset297, align 8
  %203 = bitcast i32* %202 to i8*
  call void @free(i8* %203) #4
  %204 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %205 = bitcast %struct.vba_project_tag* %204 to i8*
  call void @free(i8* %205) #4
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.298:                                       ; preds = %for.end.284
  %206 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  store %struct.vba_project_tag* %206, %struct.vba_project_tag** %retval
  br label %return

return:                                           ; preds = %if.end.298, %while.end, %if.then.148, %if.then.137, %if.then.129, %if.then.124, %if.then.118, %if.then.110, %if.then.95, %if.then.81, %if.then.69, %if.then.59, %if.then.53, %sw.default, %if.then.14, %if.then.7, %if.then
  %207 = load %struct.vba_project_tag*, %struct.vba_project_tag** %retval
  ret %struct.vba_project_tag* %207
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #1

declare i32 @cli_readn(i32, i8*, i32) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @vba_read_project_strings(i32 %fd, i32 %is_mac) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %is_mac.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %length = alloca i16, align 2
  %buff = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %is_mac, i32* %is_mac.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.61, %if.then.59, %entry
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i16* %length to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %2 = load i16, i16* %length, align 2
  %3 = load i32, i32* %is_mac.addr, align 4
  %call1 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %2, i32 %3)
  store i16 %call1, i16* %length, align 2
  %4 = load i16, i16* %length, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp slt i32 %conv, 6
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %call5 = call i64 @lseek(i32 %5, i64 -2, i32 1) #4
  br label %for.end

if.end.6:                                         ; preds = %if.end
  %6 = load i16, i16* %length, align 2
  %conv7 = zext i16 %6 to i64
  %call8 = call i8* @cli_malloc(i64 %conv7)
  store i8* %call8, i8** %buff, align 8
  %7 = load i8*, i8** %buff, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %8 = load i32, i32* %fd.addr, align 4
  %call11 = call i64 @lseek(i32 %8, i64 0, i32 1) #4
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %offset, align 4
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i8*, i8** %buff, align 8
  %11 = load i16, i16* %length, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = call i32 @cli_readn(i32 %9, i8* %10, i32 %conv13)
  %12 = load i16, i16* %length, align 2
  %conv15 = zext i16 %12 to i32
  %cmp16 = icmp ne i32 %call14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load i32, i32* %offset, align 4
  %conv19 = zext i32 %14 to i64
  %call20 = call i64 @lseek(i32 %13, i64 %conv19, i32 0) #4
  %15 = load i8*, i8** %buff, align 8
  call void @free(i8* %15) #4
  br label %for.end

if.end.21:                                        ; preds = %if.end.10
  %16 = load i8*, i8** %buff, align 8
  %17 = load i16, i16* %length, align 2
  %conv22 = zext i16 %17 to i32
  %18 = load i32, i32* %is_mac.addr, align 4
  %call23 = call i8* @get_unicode_name(i8* %16, i32 %conv22, i32 %18)
  store i8* %call23, i8** %name, align 8
  %19 = load i8*, i8** %name, align 8
  %tobool24 = icmp ne i8* %19, null
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %20 = load i16, i16* %length, align 2
  %conv26 = zext i16 %20 to i32
  %21 = load i8*, i8** %name, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i32 %conv26, i8* %21)
  br label %if.end.28

if.else:                                          ; preds = %if.end.21
  %22 = load i16, i16* %length, align 2
  %conv27 = zext i16 %22 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i32 %conv27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.25
  %23 = load i8*, i8** %buff, align 8
  call void @free(i8* %23) #4
  %24 = load i8*, i8** %name, align 8
  %cmp29 = icmp eq i8* %24, null
  br i1 %cmp29, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %25 = load i8*, i8** %name, align 8
  %call31 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* %25, i64 2) #6
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx, align 1
  %conv35 = sext i8 %27 to i32
  %call36 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 %conv35) #6
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %if.then.39, label %if.end.46

if.then.39:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false, %if.end.28
  %28 = load i32, i32* %fd.addr, align 4
  %29 = load i16, i16* %length, align 2
  %conv40 = zext i16 %29 to i32
  %add = add nsw i32 %conv40, 2
  %sub = sub nsw i32 0, %add
  %conv41 = sext i32 %sub to i64
  %call42 = call i64 @lseek(i32 %28, i64 %conv41, i32 1) #4
  %30 = load i8*, i8** %name, align 8
  %tobool43 = icmp ne i8* %30, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.39
  %31 = load i8*, i8** %name, align 8
  call void @free(i8* %31) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.39
  br label %for.end

if.end.46:                                        ; preds = %lor.lhs.false.34
  %32 = load i8*, i8** %name, align 8
  call void @free(i8* %32) #4
  %33 = load i32, i32* %fd.addr, align 4
  %34 = bitcast i16* %length to i8*
  %call47 = call i32 @cli_readn(i32 %33, i8* %34, i32 2)
  %cmp48 = icmp ne i32 %call47, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.46
  %35 = load i16, i16* %length, align 2
  %36 = load i32, i32* %is_mac.addr, align 4
  %call52 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %35, i32 %36)
  store i16 %call52, i16* %length, align 2
  %37 = load i16, i16* %length, align 2
  %conv53 = zext i16 %37 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end.51
  %38 = load i16, i16* %length, align 2
  %conv56 = zext i16 %38 to i32
  %cmp57 = icmp ne i32 %conv56, 65535
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %fd.addr, align 4
  %call60 = call i64 @lseek(i32 %39, i64 -2, i32 1) #4
  br label %for.cond

if.end.61:                                        ; preds = %land.lhs.true, %if.end.51
  %40 = load i32, i32* %fd.addr, align 4
  %call62 = call i64 @lseek(i32 %40, i64 10, i32 1) #4
  %conv63 = trunc i64 %call62 to i32
  store i32 %conv63, i32* %offset, align 4
  %41 = load i32, i32* %offset, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 %41)
  %42 = load i32, i32* %fd.addr, align 4
  call void @vba56_test_middle(i32 %42)
  br label %for.cond

for.end:                                          ; preds = %if.end.45, %if.then.18, %if.then.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.50, %if.then.9, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i16 @vba_endian_convert_16(i16 zeroext %value, i32 %is_mac) #0 {
entry:
  %retval = alloca i16, align 2
  %value.addr = alloca i16, align 2
  %is_mac.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  store i32 %is_mac, i32* %is_mac.addr, align 4
  %0 = load i32, i32* %is_mac.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %value.addr, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %2 = load i16, i16* %value.addr, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %value.addr, align 2
  store i16 %3, i16* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_unicode_name(i8* %name, i32 %size, i32 %is_mac) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %is_mac.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %increment = alloca i32, align 4
  %newname = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %x = alloca i16, align 2
  store i8* %name, i8** %name.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %is_mac, i32* %is_mac.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %size.addr, align 4
  %cmp4 = icmp sle i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %4 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %4, 7
  %conv6 = sext i32 %mul to i64
  %call = call i8* @cli_malloc(i64 %conv6)
  store i8* %call, i8** %newname, align 8
  %5 = load i8*, i8** %newname, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %6 = load i32, i32* %is_mac.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.10
  %7 = load i32, i32* %size.addr, align 4
  %and = and i32 %7, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  %8 = load i32, i32* %size.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.10
  %10 = load i32, i32* %is_mac.addr, align 4
  %tobool14 = icmp ne i32 %10, 0
  %cond = select i1 %tobool14, i32 1, i32 2
  store i32 %cond, i32* %increment, align 4
  %11 = load i8*, i8** %newname, align 8
  store i8* %11, i8** %ret, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %size.addr, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %16 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %call19 = call i16** @__ctype_b_loc() #7
  %17 = load i16*, i16** %call19, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %17, i64 %idxprom18
  %18 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %18 to i32
  %and22 = and i32 %conv21, 16384
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i8*, i8** %name.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  %21 = load i8, i8* %arrayidx26, align 1
  %22 = load i8*, i8** %ret, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %ret, align 8
  store i8 %21, i8* %22, align 1
  br label %if.end.73

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load i8*, i8** %name.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %25 to i32
  %cmp30 = icmp slt i32 %conv29, 10
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.45

land.lhs.true.32:                                 ; preds = %if.else
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i8*, i8** %name.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp sge i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %land.lhs.true.32
  %29 = load i8*, i8** %ret, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr39, i8** %ret, align 8
  store i8 95, i8* %29, align 1
  %30 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i8*, i8** %name.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %31, i64 %idxprom40
  %32 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %32 to i32
  %add = add nsw i32 %conv42, 48
  %conv43 = trunc i32 %add to i8
  %33 = load i8*, i8** %ret, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr44, i8** %ret, align 8
  store i8 %conv43, i8* %33, align 1
  br label %if.end.71

if.else.45:                                       ; preds = %land.lhs.true.32, %if.else
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %35 = load i8*, i8** %name.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i64 %idxprom46
  %36 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %36 to i32
  %shl = shl i32 %conv48, 8
  %37 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %37, 1
  %idxprom50 = sext i32 %add49 to i64
  %38 = load i8*, i8** %name.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 %idxprom50
  %39 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %39 to i32
  %or = or i32 %shl, %conv52
  %conv53 = trunc i32 %or to i16
  store i16 %conv53, i16* %x, align 2
  %40 = load i8*, i8** %ret, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr54, i8** %ret, align 8
  store i8 95, i8* %40, align 1
  %41 = load i16, i16* %x, align 2
  %conv55 = zext i16 %41 to i32
  %and56 = and i32 %conv55, 15
  %add57 = add nsw i32 97, %and56
  %conv58 = trunc i32 %add57 to i8
  %42 = load i8*, i8** %ret, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr59, i8** %ret, align 8
  store i8 %conv58, i8* %42, align 1
  %43 = load i16, i16* %x, align 2
  %conv60 = zext i16 %43 to i32
  %shr = ashr i32 %conv60, 4
  %and61 = and i32 %shr, 15
  %add62 = add nsw i32 97, %and61
  %conv63 = trunc i32 %add62 to i8
  %44 = load i8*, i8** %ret, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr64, i8** %ret, align 8
  store i8 %conv63, i8* %44, align 1
  %45 = load i16, i16* %x, align 2
  %conv65 = zext i16 %45 to i32
  %shr66 = ashr i32 %conv65, 8
  %and67 = and i32 %shr66, 15
  %add68 = add nsw i32 97, %and67
  %conv69 = trunc i32 %add68 to i8
  %46 = load i8*, i8** %ret, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr70, i8** %ret, align 8
  store i8 %conv69, i8* %46, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.45, %if.then.38
  %47 = load i8*, i8** %ret, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr72, i8** %ret, align 8
  store i8 95, i8* %47, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %48 = load i32, i32* %increment, align 4
  %49 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %49, %48
  store i32 %add74, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i8*, i8** %ret, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %newname, align 8
  store i8* %51, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %52 = load i8*, i8** %retval
  ret i8* %52
}

; Function Attrs: nounwind uwtable
define internal i32 @vba_endian_convert_32(i32 %value, i32 %is_mac) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %is_mac.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %is_mac, i32* %is_mac.addr, align 4
  %0 = load i32, i32* %is_mac.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %shr = lshr i32 %1, 24
  %2 = load i32, i32* %value.addr, align 4
  %and = and i32 %2, 16711680
  %shr1 = lshr i32 %and, 8
  %or = or i32 %shr, %shr1
  %3 = load i32, i32* %value.addr, align 4
  %and2 = and i32 %3, 65280
  %shl = shl i32 %and2, 8
  %or3 = or i32 %or, %shl
  %4 = load i32, i32* %value.addr, align 4
  %shl4 = shl i32 %4, 24
  %or5 = or i32 %or3, %shl4
  store i32 %or5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %value.addr, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @vba_decompress(i32 %fd, i32 %offset, i32* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %shift = alloca i32, align 4
  %win_pos = alloca i32, align 4
  %clean = alloca i32, align 4
  %mask = alloca i32, align 4
  %distance = alloca i32, align 4
  %flag = alloca i8, align 1
  %token = alloca i16, align 2
  %len = alloca i16, align 2
  %s = alloca i64, align 8
  %b = alloca %struct.blob*, align 8
  %ret = alloca i8*, align 8
  %buffer = alloca [4096 x i8], align 16
  %srcpos = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32* %size, i32** %size.addr, align 8
  store i32 0, i32* %pos, align 4
  store i32 1, i32* %clean, align 4
  %call = call %struct.blob* @blobCreate()
  store %struct.blob* %call, %struct.blob** %b, align 8
  %0 = load %struct.blob*, %struct.blob** %b, align 8
  %cmp = icmp eq %struct.blob* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i32, i32* %offset.addr, align 4
  %add = add i32 %2, 3
  %conv = zext i32 %add to i64
  %call1 = call i64 @lseek(i32 %1, i64 %conv, i32 0) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end.95, %if.end
  %3 = load i32, i32* %fd.addr, align 4
  %call2 = call i32 @cli_readn(i32 %3, i8* %flag, i32 1)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %mask, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %while.body
  %4 = load i32, i32* %mask, align 4
  %cmp5 = icmp ult i32 %4, 256
  br i1 %cmp5, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %5 = load i8, i8* %flag, align 1
  %conv7 = zext i8 %5 to i32
  %6 = load i32, i32* %mask, align 4
  %and = and i32 %conv7, %6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else.65

if.then.8:                                        ; preds = %for.body
  %7 = load i32, i32* %fd.addr, align 4
  %8 = bitcast i16* %token to i8*
  %call9 = call i32 @cli_readn(i32 %7, i8* %8, i32 2)
  %cmp10 = icmp ne i32 %call9, 2
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.then.8
  %9 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %9)
  %10 = load i32*, i32** %size.addr, align 8
  %tobool13 = icmp ne i32* %10, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %11 = load i32*, i32** %size.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.8
  %12 = load i16, i16* %token, align 2
  %call17 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %12, i32 0)
  store i16 %call17, i16* %token, align 2
  %13 = load i32, i32* %pos, align 4
  %rem = urem i32 %13, 4096
  store i32 %rem, i32* %win_pos, align 4
  %14 = load i32, i32* %win_pos, align 4
  %cmp18 = icmp ule i32 %14, 128
  br i1 %cmp18, label %if.then.20, label %if.else.30

if.then.20:                                       ; preds = %if.end.16
  %15 = load i32, i32* %win_pos, align 4
  %cmp21 = icmp ule i32 %15, 32
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  %16 = load i32, i32* %win_pos, align 4
  %cmp24 = icmp ule i32 %16, 16
  %cond = select i1 %cmp24, i32 12, i32 11
  store i32 %cond, i32* %shift, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.then.20
  %17 = load i32, i32* %win_pos, align 4
  %cmp26 = icmp ule i32 %17, 64
  %cond28 = select i1 %cmp26, i32 10, i32 9
  store i32 %cond28, i32* %shift, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.23
  br label %if.end.47

if.else.30:                                       ; preds = %if.end.16
  %18 = load i32, i32* %win_pos, align 4
  %cmp31 = icmp ule i32 %18, 512
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else.30
  %19 = load i32, i32* %win_pos, align 4
  %cmp34 = icmp ule i32 %19, 256
  %cond36 = select i1 %cmp34, i32 8, i32 7
  store i32 %cond36, i32* %shift, align 4
  br label %if.end.46

if.else.37:                                       ; preds = %if.else.30
  %20 = load i32, i32* %win_pos, align 4
  %cmp38 = icmp ule i32 %20, 2048
  br i1 %cmp38, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.else.37
  %21 = load i32, i32* %win_pos, align 4
  %cmp41 = icmp ule i32 %21, 1024
  %cond43 = select i1 %cmp41, i32 6, i32 5
  store i32 %cond43, i32* %shift, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %if.else.37
  store i32 4, i32* %shift, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.33
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.29
  %22 = load i16, i16* %token, align 2
  %conv48 = zext i16 %22 to i32
  %23 = load i32, i32* %shift, align 4
  %shl = shl i32 1, %23
  %sub = sub nsw i32 %shl, 1
  %and49 = and i32 %conv48, %sub
  %add50 = add nsw i32 %and49, 3
  %conv51 = trunc i32 %add50 to i16
  store i16 %conv51, i16* %len, align 2
  %24 = load i16, i16* %token, align 2
  %conv52 = zext i16 %24 to i32
  %25 = load i32, i32* %shift, align 4
  %shr = ashr i32 %conv52, %25
  store i32 %shr, i32* %distance, align 4
  store i32 1, i32* %clean, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.end.47
  %26 = load i32, i32* %i, align 4
  %27 = load i16, i16* %len, align 2
  %conv54 = zext i16 %27 to i32
  %cmp55 = icmp ult i32 %26, %conv54
  br i1 %cmp55, label %for.body.57, label %for.end

for.body.57:                                      ; preds = %for.cond.53
  %28 = load i32, i32* %pos, align 4
  %29 = load i32, i32* %distance, align 4
  %sub58 = sub i32 %28, %29
  %sub59 = sub i32 %sub58, 1
  %rem60 = urem i32 %sub59, 4096
  store i32 %rem60, i32* %srcpos, align 4
  %30 = load i32, i32* %srcpos, align 4
  %idxprom = zext i32 %30 to i64
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  store i8 %31, i8* %c, align 1
  %32 = load i8, i8* %c, align 1
  %33 = load i32, i32* %pos, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %pos, align 4
  %rem61 = urem i32 %33, 4096
  %idxprom62 = zext i32 %rem61 to i64
  %arrayidx63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 %idxprom62
  store i8 %32, i8* %arrayidx63, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.57
  %34 = load i32, i32* %i, align 4
  %inc64 = add i32 %34, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.92

if.else.65:                                       ; preds = %for.body
  %35 = load i32, i32* %pos, align 4
  %cmp66 = icmp ne i32 %35, 0
  br i1 %cmp66, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.else.65
  %36 = load i32, i32* %pos, align 4
  %rem68 = urem i32 %36, 4096
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.83

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %clean, align 4
  %tobool72 = icmp ne i32 %37, 0
  br i1 %tobool72, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %land.lhs.true.71
  %38 = load i32, i32* %fd.addr, align 4
  %39 = bitcast i16* %token to i8*
  %call74 = call i32 @cli_readn(i32 %38, i8* %39, i32 2)
  %cmp75 = icmp ne i32 %call74, 2
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.then.73
  %40 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %40)
  %41 = load i32*, i32** %size.addr, align 8
  %tobool78 = icmp ne i32* %41, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.77
  %42 = load i32*, i32** %size.addr, align 8
  store i32 0, i32* %42, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.77
  store i8* null, i8** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.73
  store i32 0, i32* %clean, align 4
  %43 = load %struct.blob*, %struct.blob** %b, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call82 = call i32 @blobAddData(%struct.blob* %43, i8* %arraydecay, i64 4096)
  br label %for.end.95

if.end.83:                                        ; preds = %land.lhs.true.71, %land.lhs.true, %if.else.65
  %44 = load i32, i32* %fd.addr, align 4
  %arraydecay84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %45 = load i32, i32* %pos, align 4
  %rem85 = urem i32 %45, 4096
  %idx.ext = zext i32 %rem85 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay84, i64 %idx.ext
  %call86 = call i32 @cli_readn(i32 %44, i8* %add.ptr, i32 1)
  %cmp87 = icmp eq i32 %call86, 1
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.83
  %46 = load i32, i32* %pos, align 4
  %inc90 = add i32 %46, 1
  store i32 %inc90, i32* %pos, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.83
  store i32 1, i32* %clean, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.end
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %47 = load i32, i32* %mask, align 4
  %shl94 = shl i32 %47, 1
  store i32 %shl94, i32* %mask, align 4
  br label %for.cond

for.end.95:                                       ; preds = %if.end.81, %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* %pos, align 4
  %rem96 = urem i32 %48, 4096
  %tobool97 = icmp ne i32 %rem96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.110

if.then.98:                                       ; preds = %while.end
  %49 = load %struct.blob*, %struct.blob** %b, align 8
  %arraydecay99 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %50 = load i32, i32* %pos, align 4
  %rem100 = urem i32 %50, 4096
  %conv101 = zext i32 %rem100 to i64
  %call102 = call i32 @blobAddData(%struct.blob* %49, i8* %arraydecay99, i64 %conv101)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.109

if.then.105:                                      ; preds = %if.then.98
  %51 = load i32*, i32** %size.addr, align 8
  %tobool106 = icmp ne i32* %51, null
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.105
  %52 = load i32*, i32** %size.addr, align 8
  store i32 0, i32* %52, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.then.105
  %53 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %53)
  store i8* null, i8** %retval
  br label %return

if.end.109:                                       ; preds = %if.then.98
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %while.end
  %54 = load %struct.blob*, %struct.blob** %b, align 8
  %call111 = call i64 @blobGetDataSize(%struct.blob* %54)
  store i64 %call111, i64* %s, align 8
  %55 = load i64, i64* %s, align 8
  %call112 = call i8* @cli_malloc(i64 %55)
  store i8* %call112, i8** %ret, align 8
  %56 = load i8*, i8** %ret, align 8
  %cmp113 = icmp eq i8* %56, null
  br i1 %cmp113, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %if.end.110
  %57 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %57)
  %58 = load i32*, i32** %size.addr, align 8
  %tobool116 = icmp ne i32* %58, null
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.115
  %59 = load i32*, i32** %size.addr, align 8
  store i32 0, i32* %59, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.then.115
  store i8* null, i8** %retval
  br label %return

if.end.119:                                       ; preds = %if.end.110
  %60 = load i32*, i32** %size.addr, align 8
  %tobool120 = icmp ne i32* %60, null
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.119
  %61 = load i64, i64* %s, align 8
  %conv122 = trunc i64 %61 to i32
  %62 = load i32*, i32** %size.addr, align 8
  store i32 %conv122, i32* %62, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.119
  %63 = load i8*, i8** %ret, align 8
  %64 = load %struct.blob*, %struct.blob** %b, align 8
  %call124 = call i8* @blobGetData(%struct.blob* %64)
  %65 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %call124, i64 %65, i32 1, i1 false)
  %66 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %66)
  %67 = load i8*, i8** %ret, align 8
  store i8* %67, i8** %retval
  br label %return

return:                                           ; preds = %if.end.123, %if.end.118, %if.end.108, %if.end.80, %if.end.15, %if.then
  %68 = load i8*, i8** %retval
  ret i8* %68
}

declare %struct.blob* @blobCreate() #1

declare void @blobDestroy(%struct.blob*) #1

declare i32 @blobAddData(%struct.blob*, i8*, i64) #1

declare i64 @blobGetDataSize(%struct.blob*) #1

declare i8* @blobGetData(%struct.blob*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @cli_decode_ole_object(i32 %fd, i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %ofd = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %ch = alloca i8, align 1
  %object_size = alloca i32, align 4
  %fullname = alloca [257 x i8], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %statbuf) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = bitcast i32* %object_size to i8*
  %call1 = call i32 @cli_readn(i32 %1, i8* %2, i32 4)
  %cmp2 = icmp ne i32 %call1, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %object_size, align 4
  %call5 = call i32 @vba_endian_convert_32(i32 %3, i32 0)
  store i32 %call5, i32* %object_size, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %4 = load i64, i64* %st_size, align 8
  %5 = load i32, i32* %object_size, align 4
  %conv = zext i32 %5 to i64
  %sub = sub nsw i64 %4, %conv
  %cmp6 = icmp sge i64 %sub, 4
  br i1 %cmp6, label %if.then.8, label %if.end.48

if.then.8:                                        ; preds = %if.end.4
  %6 = load i32, i32* %fd.addr, align 4
  %call9 = call i64 @lseek(i32 %6, i64 2, i32 1) #4
  %cmp10 = icmp eq i64 %call9, -1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.13
  %7 = load i32, i32* %fd.addr, align 4
  %call14 = call i32 @cli_readn(i32 %7, i8* %ch, i32 1)
  %cmp15 = icmp ne i32 %call14, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %8 = load i8, i8* %ch, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.19

do.body.19:                                       ; preds = %do.cond.25, %do.end
  %9 = load i32, i32* %fd.addr, align 4
  %call20 = call i32 @cli_readn(i32 %9, i8* %ch, i32 1)
  %cmp21 = icmp ne i32 %call20, 1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.19
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %do.body.19
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  %10 = load i8, i8* %ch, align 1
  %tobool26 = icmp ne i8 %10, 0
  br i1 %tobool26, label %do.body.19, label %do.end.27

do.end.27:                                        ; preds = %do.cond.25
  %11 = load i32, i32* %fd.addr, align 4
  %call28 = call i64 @lseek(i32 %11, i64 8, i32 1) #4
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end.27
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %do.end.27
  br label %do.body.33

do.body.33:                                       ; preds = %do.cond.39, %if.end.32
  %12 = load i32, i32* %fd.addr, align 4
  %call34 = call i32 @cli_readn(i32 %12, i8* %ch, i32 1)
  %cmp35 = icmp ne i32 %call34, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.33
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %do.body.33
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  %13 = load i8, i8* %ch, align 1
  %tobool40 = icmp ne i8 %13, 0
  br i1 %tobool40, label %do.body.33, label %do.end.41

do.end.41:                                        ; preds = %do.cond.39
  %14 = load i32, i32* %fd.addr, align 4
  %15 = bitcast i32* %object_size to i8*
  %call42 = call i32 @cli_readn(i32 %14, i8* %15, i32 4)
  %cmp43 = icmp ne i32 %call42, 4
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.41
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %do.end.41
  %16 = load i32, i32* %object_size, align 4
  %call47 = call i32 @vba_endian_convert_32(i32 %16, i32 0)
  store i32 %call47, i32* %object_size, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %if.end.4
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %17 = load i8*, i8** %dir.addr, align 8
  %call49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %17) #4
  %arraydecay50 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call51 = call i32 (i8*, i32, ...) @open(i8* %arraydecay50, i32 578, i32 384)
  store i32 %call51, i32* %ofd, align 4
  %18 = load i32, i32* %ofd, align 4
  %cmp52 = icmp slt i32 %18, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.48
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.48
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load i32, i32* %ofd, align 4
  %21 = load i32, i32* %object_size, align 4
  %call56 = call i32 @ole_copy_file_data(i32 %19, i32 %20, i32 %21)
  %22 = load i32, i32* %ofd, align 4
  %call57 = call i64 @lseek(i32 %22, i64 0, i32 0) #4
  %23 = load i32, i32* %ofd, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.54, %if.then.45, %if.then.37, %if.then.31, %if.then.23, %if.then.17, %if.then.12, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ole_copy_file_data(i32 %ifd, i32 %ofd, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ifd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %rem = alloca i32, align 4
  %data = alloca [8192 x i8], align 16
  %todo = alloca i32, align 4
  store i32 %ifd, i32* %ifd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %rem, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load i32, i32* %rem, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %rem, align 4
  %conv = zext i32 %2 to i64
  %cmp1 = icmp ult i64 8192, %conv
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %3 = load i32, i32* %rem, align 4
  %conv3 = zext i32 %3 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8192, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  store i32 %conv4, i32* %todo, align 4
  %4 = load i32, i32* %ifd.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %5 = load i32, i32* %todo, align 4
  %call = call i32 @cli_readn(i32 %4, i8* %arraydecay, i32 %5)
  store i32 %call, i32* %count, align 4
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %todo, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32, i32* %rem, align 4
  %sub = sub i32 %8, %9
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %ofd.addr, align 4
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %11 = load i32, i32* %count, align 4
  %call8 = call i32 @cli_writen(i32 %10, i8* %arraydecay7, i32 %11)
  %12 = load i32, i32* %count, align 4
  %cmp9 = icmp ne i32 %call8, %12
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %13 = load i32, i32* %len.addr, align 4
  %14 = load i32, i32* %rem, align 4
  %sub12 = sub i32 %13, %14
  %15 = load i32, i32* %count, align 4
  %sub13 = sub i32 %sub12, %15
  store i32 %sub13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %16 = load i32, i32* %count, align 4
  %17 = load i32, i32* %rem, align 4
  %sub15 = sub i32 %17, %16
  store i32 %sub15, i32* %rem, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %len.addr, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i8* @ppt_vba_read(i8* %dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %out_dir = alloca i8*, align 8
  %fd = alloca i32, align 4
  %fullname = alloca [257 x i8], align 16
  store i8* %dir, i8** %dir.addr, align 8
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call2 = call i32 (i8*, i32, ...) @open(i8* %arraydecay1, i32 0)
  store i32 %call2, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call3 = call i8* @ppt_stream_iter(i32 %2)
  store i8* %call3, i8** %out_dir, align 8
  %3 = load i32, i32* %fd, align 4
  %call4 = call i32 @close(i32 %3)
  %4 = load i8*, i8** %out_dir, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @ppt_stream_iter(i32 %fd) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %ole_id = alloca i32, align 4
  %out_dir = alloca i8*, align 8
  %offset = alloca i64, align 8
  %atom_header = alloca %struct.atom_header_tag, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %out_dir, align 8
  %0 = load i8*, i8** %out_dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %out_dir, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %out_dir, align 8
  call void @free(i8* %2) #4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end
  %3 = load i32, i32* %fd.addr, align 4
  %call2 = call i32 @ppt_read_atom_header(i32 %3, %struct.atom_header_tag* %atom_header)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @ppt_print_atom_header(%struct.atom_header_tag* %atom_header)
  %length = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 5
  %4 = load i32, i32* %length, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %while.body
  %5 = load i8*, i8** %out_dir, align 8
  %call5 = call i32 @cli_rmdirs(i8* %5)
  %6 = load i8*, i8** %out_dir, align 8
  call void @free(i8* %6) #4
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %while.body
  %type = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 4
  %7 = load i16, i16* %type, align 2
  %conv = zext i16 %7 to i32
  %cmp7 = icmp eq i32 %conv, 4113
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %8 = load i32, i32* %fd.addr, align 4
  %9 = bitcast i32* %ole_id to i8*
  %call10 = call i32 @cli_readn(i32 %8, i8* %9, i32 4)
  %cmp11 = icmp ne i32 %call10, 4
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.9
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0))
  %10 = load i8*, i8** %out_dir, align 8
  %call14 = call i32 @cli_rmdirs(i8* %10)
  %11 = load i8*, i8** %out_dir, align 8
  call void @free(i8* %11) #4
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  %12 = load i32, i32* %ole_id, align 4
  %call16 = call i32 @vba_endian_convert_32(i32 %12, i32 0)
  store i32 %call16, i32* %ole_id, align 4
  %13 = load i32, i32* %ole_id, align 4
  %length17 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 5
  %14 = load i32, i32* %length17, align 4
  %sub = sub nsw i32 %14, 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i32 %13, i32 %sub)
  %15 = load i8*, i8** %out_dir, align 8
  %16 = load i32, i32* %fd.addr, align 4
  %length18 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 5
  %17 = load i32, i32* %length18, align 4
  %sub19 = sub i32 %17, 4
  %call20 = call i32 @ppt_unlzw(i8* %15, i32 %16, i32 %sub19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0))
  %18 = load i8*, i8** %out_dir, align 8
  %call23 = call i32 @cli_rmdirs(i8* %18)
  %19 = load i8*, i8** %out_dir, align 8
  call void @free(i8* %19) #4
  store i8* null, i8** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.15
  br label %if.end.40

if.else:                                          ; preds = %if.end.6
  %20 = load i32, i32* %fd.addr, align 4
  %call25 = call i64 @lseek(i32 %20, i64 0, i32 1) #4
  store i64 %call25, i64* %offset, align 8
  %21 = load i64, i64* %offset, align 8
  %length26 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 5
  %22 = load i32, i32* %length26, align 4
  %conv27 = zext i32 %22 to i64
  %add = add nsw i64 %21, %conv27
  %23 = load i64, i64* %offset, align 8
  %cmp28 = icmp slt i64 %add, %23
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  br label %while.end

if.end.31:                                        ; preds = %if.else
  %length32 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %atom_header, i32 0, i32 5
  %24 = load i32, i32* %length32, align 4
  %conv33 = zext i32 %24 to i64
  %25 = load i64, i64* %offset, align 8
  %add34 = add nsw i64 %25, %conv33
  store i64 %add34, i64* %offset, align 8
  %26 = load i32, i32* %fd.addr, align 4
  %27 = load i64, i64* %offset, align 8
  %call35 = call i64 @lseek(i32 %26, i64 %27, i32 0) #4
  %28 = load i64, i64* %offset, align 8
  %cmp36 = icmp ne i64 %call35, %28
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.31
  br label %while.end

if.end.39:                                        ; preds = %if.end.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.24
  br label %while.cond

while.end:                                        ; preds = %if.then.38, %if.then.30, %while.cond
  %29 = load i8*, i8** %out_dir, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.22, %if.then.13, %if.then.4, %if.then
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define %struct.vba_project_tag* @wm_dir_read(i8* %dir) #0 {
entry:
  %retval = alloca %struct.vba_project_tag*, align 8
  %dir.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %done = alloca i32, align 4
  %end_offset = alloca i64, align 8
  %info_id = alloca i8, align 1
  %macro_info = alloca %struct.macro_info_tag*, align 8
  %vba_project = alloca %struct.vba_project_tag*, align 8
  %fib = alloca %struct.mso_fib_tag, align 4
  %fullname = alloca [257 x i8], align 16
  %i = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 8
  store %struct.macro_info_tag* null, %struct.macro_info_tag** %macro_info, align 8
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call2 = call i32 (i8*, i32, ...) @open(i8* %arraydecay1, i32 0)
  store i32 %call2, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0))
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call3 = call i32 @wm_read_fib(i32 %2, %struct.mso_fib_tag* %fib)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %call5 = call i32 @close(i32 %3)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %macro_len = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %fib, i32 0, i32 2
  %4 = load i32, i32* %macro_len, align 4
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  %5 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %5)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  call void @wm_print_fib(%struct.mso_fib_tag* %fib)
  %6 = load i32, i32* %fd, align 4
  %macro_offset = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %fib, i32 0, i32 1
  %7 = load i32, i32* %macro_offset, align 4
  %add = add i32 %7, 1
  %conv = zext i32 %add to i64
  %call11 = call i64 @lseek(i32 %6, i64 %conv, i32 0) #4
  %macro_offset12 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %fib, i32 0, i32 1
  %8 = load i32, i32* %macro_offset12, align 4
  %add13 = add i32 %8, 1
  %conv14 = zext i32 %add13 to i64
  %cmp15 = icmp ne i64 %call11, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0))
  %9 = load i32, i32* %fd, align 4
  %call18 = call i32 @close(i32 %9)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %macro_offset20 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %fib, i32 0, i32 1
  %10 = load i32, i32* %macro_offset20, align 4
  %macro_len21 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %fib, i32 0, i32 2
  %11 = load i32, i32* %macro_len21, align 4
  %add22 = add i32 %10, %11
  %conv23 = zext i32 %add22 to i64
  store i64 %conv23, i64* %end_offset, align 8
  store i32 0, i32* %done, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.19
  %12 = load i32, i32* %fd, align 4
  %call24 = call i64 @lseek(i32 %12, i64 0, i32 1) #4
  %13 = load i64, i64* %end_offset, align 8
  %cmp25 = icmp slt i64 %call24, %13
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i32, i32* %done, align 4
  %tobool27 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool27, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %fd, align 4
  %call28 = call i32 @cli_readn(i32 %16, i8* %info_id, i32 1)
  %cmp29 = icmp ne i32 %call28, 1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  %17 = load i32, i32* %fd, align 4
  %call32 = call i32 @close(i32 %17)
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %retval
  br label %return

if.end.33:                                        ; preds = %while.body
  %18 = load i8, i8* %info_id, align 1
  %conv34 = zext i8 %18 to i32
  switch i32 %conv34, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.43
    i32 5, label %sw.bb.48
    i32 16, label %sw.bb.53
    i32 17, label %sw.bb.58
    i32 18, label %sw.bb.63
    i32 64, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %if.end.33
  %19 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %tobool35 = icmp ne %struct.macro_info_tag* %19, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb
  %20 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  call void @wm_free_macro_info(%struct.macro_info_tag* %20)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb
  %21 = load i32, i32* %fd, align 4
  %call38 = call %struct.macro_info_tag* @wm_read_macro_info(i32 %21)
  store %struct.macro_info_tag* %call38, %struct.macro_info_tag** %macro_info, align 8
  %22 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %cmp39 = icmp eq %struct.macro_info_tag* %22, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  store i32 1, i32* %done, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.37
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.33
  %23 = load i32, i32* %fd, align 4
  %call44 = call i32 @wm_read_oxo3(i32 %23)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %sw.bb.43
  store i32 1, i32* %done, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %sw.bb.43
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.33
  %24 = load i32, i32* %fd, align 4
  %call49 = call i32 @wm_skip_menu_info(i32 %24)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.48
  store i32 1, i32* %done, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %sw.bb.48
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.33
  %25 = load i32, i32* %fd, align 4
  %call54 = call i32 @wm_skip_macro_extnames(i32 %25)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %sw.bb.53
  store i32 1, i32* %done, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %sw.bb.53
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.33
  %26 = load i32, i32* %fd, align 4
  %call59 = call i32 @wm_skip_macro_intnames(i32 %26)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %sw.bb.58
  store i32 1, i32* %done, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %sw.bb.58
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.33
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.33
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.33
  %27 = load i8, i8* %info_id, align 1
  %conv65 = zext i8 %27 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 %conv65)
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.64, %sw.bb.63, %if.end.62, %if.end.57, %if.end.52, %if.end.47, %if.end.42
  br label %while.cond

while.end:                                        ; preds = %land.end
  %28 = load i32, i32* %fd, align 4
  %call66 = call i32 @close(i32 %28)
  %29 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %tobool67 = icmp ne %struct.macro_info_tag* %29, null
  br i1 %tobool67, label %if.then.68, label %if.else.146

if.then.68:                                       ; preds = %while.end
  %call69 = call i8* @cli_malloc(i64 48)
  %30 = bitcast i8* %call69 to %struct.vba_project_tag*
  store %struct.vba_project_tag* %30, %struct.vba_project_tag** %vba_project, align 8
  %31 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %tobool70 = icmp ne %struct.vba_project_tag* %31, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.then.68
  br label %abort

if.end.72:                                        ; preds = %if.then.68
  %32 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %32, i32 0, i32 0
  %33 = load i16, i16* %count, align 2
  %conv73 = zext i16 %33 to i64
  %mul = mul i64 8, %conv73
  %call74 = call i8* @cli_malloc(i64 %mul)
  %34 = bitcast i8* %call74 to i8**
  %35 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %35, i32 0, i32 1
  store i8** %34, i8*** %name, align 8
  %36 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name75 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %36, i32 0, i32 1
  %37 = load i8**, i8*** %name75, align 8
  %tobool76 = icmp ne i8** %37, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.72
  %38 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %39 = bitcast %struct.vba_project_tag* %38 to i8*
  call void @free(i8* %39) #4
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %vba_project, align 8
  br label %abort

if.end.78:                                        ; preds = %if.end.72
  %40 = load i8*, i8** %dir.addr, align 8
  %call79 = call i8* @cli_strdup(i8* %40)
  %41 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir80 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %41, i32 0, i32 5
  store i8* %call79, i8** %dir80, align 8
  %42 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count81 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %42, i32 0, i32 0
  %43 = load i16, i16* %count81, align 2
  %conv82 = zext i16 %43 to i64
  %mul83 = mul i64 4, %conv82
  %call84 = call i8* @cli_malloc(i64 %mul83)
  %44 = bitcast i8* %call84 to i32*
  %45 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %45, i32 0, i32 2
  store i32* %44, i32** %offset, align 8
  %46 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset85 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %46, i32 0, i32 2
  %47 = load i32*, i32** %offset85, align 8
  %tobool86 = icmp ne i32* %47, null
  br i1 %tobool86, label %if.end.94, label %if.then.87

if.then.87:                                       ; preds = %if.end.78
  %48 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name88 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %48, i32 0, i32 1
  %49 = load i8**, i8*** %name88, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #4
  %51 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir89 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %51, i32 0, i32 5
  %52 = load i8*, i8** %dir89, align 8
  %tobool90 = icmp ne i8* %52, null
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.then.87
  %53 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir92 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %53, i32 0, i32 5
  %54 = load i8*, i8** %dir92, align 8
  call void @free(i8* %54) #4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.then.87
  %55 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %56 = bitcast %struct.vba_project_tag* %55 to i8*
  call void @free(i8* %56) #4
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %vba_project, align 8
  br label %abort

if.end.94:                                        ; preds = %if.end.78
  %57 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count95 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %57, i32 0, i32 0
  %58 = load i16, i16* %count95, align 2
  %conv96 = zext i16 %58 to i64
  %mul97 = mul i64 4, %conv96
  %call98 = call i8* @cli_malloc(i64 %mul97)
  %59 = bitcast i8* %call98 to i32*
  %60 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %60, i32 0, i32 3
  store i32* %59, i32** %length, align 8
  %61 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length99 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %61, i32 0, i32 3
  %62 = load i32*, i32** %length99, align 8
  %tobool100 = icmp ne i32* %62, null
  br i1 %tobool100, label %if.end.105, label %if.then.101

if.then.101:                                      ; preds = %if.end.94
  %63 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset102 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %63, i32 0, i32 2
  %64 = load i32*, i32** %offset102, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65) #4
  %66 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name103 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %66, i32 0, i32 1
  %67 = load i8**, i8*** %name103, align 8
  %68 = bitcast i8** %67 to i8*
  call void @free(i8* %68) #4
  %69 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir104 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %69, i32 0, i32 5
  %70 = load i8*, i8** %dir104, align 8
  call void @free(i8* %70) #4
  %71 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %72 = bitcast %struct.vba_project_tag* %71 to i8*
  call void @free(i8* %72) #4
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %vba_project, align 8
  br label %abort

if.end.105:                                       ; preds = %if.end.94
  %73 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count106 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %73, i32 0, i32 0
  %74 = load i16, i16* %count106, align 2
  %conv107 = zext i16 %74 to i64
  %mul108 = mul i64 1, %conv107
  %call109 = call i8* @cli_malloc(i64 %mul108)
  %75 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %75, i32 0, i32 4
  store i8* %call109, i8** %key, align 8
  %76 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key110 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %76, i32 0, i32 4
  %77 = load i8*, i8** %key110, align 8
  %tobool111 = icmp ne i8* %77, null
  br i1 %tobool111, label %if.else, label %if.then.112

if.then.112:                                      ; preds = %if.end.105
  %78 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length113 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %78, i32 0, i32 3
  %79 = load i32*, i32** %length113, align 8
  %80 = bitcast i32* %79 to i8*
  call void @free(i8* %80) #4
  %81 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset114 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %81, i32 0, i32 2
  %82 = load i32*, i32** %offset114, align 8
  %83 = bitcast i32* %82 to i8*
  call void @free(i8* %83) #4
  %84 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name115 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %84, i32 0, i32 1
  %85 = load i8**, i8*** %name115, align 8
  %86 = bitcast i8** %85 to i8*
  call void @free(i8* %86) #4
  %87 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir116 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %87, i32 0, i32 5
  %88 = load i8*, i8** %dir116, align 8
  call void @free(i8* %88) #4
  %89 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %90 = bitcast %struct.vba_project_tag* %89 to i8*
  call void @free(i8* %90) #4
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %vba_project, align 8
  br label %if.end.145

if.else:                                          ; preds = %if.end.105
  %91 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count117 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %91, i32 0, i32 0
  %92 = load i16, i16* %count117, align 2
  %conv118 = zext i16 %92 to i32
  %93 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count119 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %93, i32 0, i32 0
  store i32 %conv118, i32* %count119, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %94 = load i32, i32* %i, align 4
  %95 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count120 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %95, i32 0, i32 0
  %96 = load i16, i16* %count120, align 2
  %conv121 = zext i16 %96 to i32
  %cmp122 = icmp slt i32 %94, %conv121
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call124 = call i8* @cli_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  %97 = load i32, i32* %i, align 4
  %idxprom = sext i32 %97 to i64
  %98 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name125 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %98, i32 0, i32 1
  %99 = load i8**, i8*** %name125, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %99, i64 %idxprom
  store i8* %call124, i8** %arrayidx, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %100 to i64
  %101 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %101, i32 0, i32 1
  %102 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry, align 8
  %arrayidx127 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %102, i64 %idxprom126
  %offset128 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %arrayidx127, i32 0, i32 8
  %103 = load i32, i32* %offset128, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %104 to i64
  %105 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset130 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %105, i32 0, i32 2
  %106 = load i32*, i32** %offset130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %106, i64 %idxprom129
  store i32 %103, i32* %arrayidx131, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %107 to i64
  %108 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry133 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %108, i32 0, i32 1
  %109 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry133, align 8
  %arrayidx134 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %109, i64 %idxprom132
  %len = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %arrayidx134, i32 0, i32 6
  %110 = load i32, i32* %len, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %111 to i64
  %112 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length136 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %112, i32 0, i32 3
  %113 = load i32*, i32** %length136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %113, i64 %idxprom135
  store i32 %110, i32* %arrayidx137, align 4
  %114 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %114 to i64
  %115 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry139 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %115, i32 0, i32 1
  %116 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry139, align 8
  %arrayidx140 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %116, i64 %idxprom138
  %key141 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %arrayidx140, i32 0, i32 1
  %117 = load i8, i8* %key141, align 1
  %118 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %118 to i64
  %119 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key143 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %119, i32 0, i32 4
  %120 = load i8*, i8** %key143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %120, i64 %idxprom142
  store i8 %117, i8* %arrayidx144, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %121 = load i32, i32* %i, align 4
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.145

if.end.145:                                       ; preds = %for.end, %if.then.112
  br label %abort

abort:                                            ; preds = %if.end.145, %if.then.101, %if.end.93, %if.then.77, %if.then.71
  %122 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  call void @wm_free_macro_info(%struct.macro_info_tag* %122)
  br label %if.end.147

if.else.146:                                      ; preds = %while.end
  store %struct.vba_project_tag* null, %struct.vba_project_tag** %vba_project, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %abort
  %123 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  store %struct.vba_project_tag* %123, %struct.vba_project_tag** %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.then.31, %if.then.17, %if.then.8, %if.then.4, %if.then
  %124 = load %struct.vba_project_tag*, %struct.vba_project_tag** %retval
  ret %struct.vba_project_tag* %124
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_read_fib(i32 %fd, %struct.mso_fib_tag* %fib) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %fib.addr = alloca %struct.mso_fib_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.mso_fib_tag* %fib, %struct.mso_fib_tag** %fib.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 280, i32 0) #4
  %cmp = icmp ne i64 %call, 280
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_offset = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %2, i32 0, i32 1
  %3 = bitcast i32* %macro_offset to i8*
  %call1 = call i32 @cli_readn(i32 %1, i8* %3, i32 4)
  %cmp2 = icmp ne i32 %call1, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_len = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %5, i32 0, i32 2
  %6 = bitcast i32* %macro_len to i8*
  %call5 = call i32 @cli_readn(i32 %4, i8* %6, i32 4)
  %cmp6 = icmp ne i32 %call5, 4
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %7 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_offset9 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %7, i32 0, i32 1
  %8 = load i32, i32* %macro_offset9, align 4
  %call10 = call i32 @vba_endian_convert_32(i32 %8, i32 0)
  %9 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_offset11 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %9, i32 0, i32 1
  store i32 %call10, i32* %macro_offset11, align 4
  %10 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_len12 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %10, i32 0, i32 2
  %11 = load i32, i32* %macro_len12, align 4
  %call13 = call i32 @vba_endian_convert_32(i32 %11, i32 0)
  %12 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_len14 = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %12, i32 0, i32 2
  store i32 %call13, i32* %macro_len14, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @wm_print_fib(%struct.mso_fib_tag* %fib) #0 {
entry:
  %fib.addr = alloca %struct.mso_fib_tag*, align 8
  store %struct.mso_fib_tag* %fib, %struct.mso_fib_tag** %fib.addr, align 8
  %0 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_offset = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %0, i32 0, i32 1
  %1 = load i32, i32* %macro_offset, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), i32 %1)
  %2 = load %struct.mso_fib_tag*, %struct.mso_fib_tag** %fib.addr, align 8
  %macro_len = getelementptr inbounds %struct.mso_fib_tag, %struct.mso_fib_tag* %2, i32 0, i32 2
  %3 = load i32, i32* %macro_len, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wm_free_macro_info(%struct.macro_info_tag* %macro_info) #0 {
entry:
  %macro_info.addr = alloca %struct.macro_info_tag*, align 8
  store %struct.macro_info_tag* %macro_info, %struct.macro_info_tag** %macro_info.addr, align 8
  %0 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info.addr, align 8
  %tobool = icmp ne %struct.macro_info_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info.addr, align 8
  %macro_entry = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %1, i32 0, i32 1
  %2 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry, align 8
  %3 = bitcast %struct.macro_entry_tag* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info.addr, align 8
  %5 = bitcast %struct.macro_info_tag* %4 to i8*
  call void @free(i8* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.macro_info_tag* @wm_read_macro_info(i32 %fd) #0 {
entry:
  %retval = alloca %struct.macro_info_tag*, align 8
  %fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %macro_info = alloca %struct.macro_info_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %call = call i8* @cli_malloc(i64 16)
  %0 = bitcast i8* %call to %struct.macro_info_tag*
  store %struct.macro_info_tag* %0, %struct.macro_info_tag** %macro_info, align 8
  %1 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %tobool = icmp ne %struct.macro_info_tag* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.macro_info_tag* null, %struct.macro_info_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %3, i32 0, i32 0
  %4 = bitcast i16* %count to i8*
  %call1 = call i32 @cli_readn(i32 %2, i8* %4, i32 2)
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  %5 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %6 = bitcast %struct.macro_info_tag* %5 to i8*
  call void @free(i8* %6) #4
  store %struct.macro_info_tag* null, %struct.macro_info_tag** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count4 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %7, i32 0, i32 0
  %8 = load i16, i16* %count4, align 2
  %call5 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %8, i32 0)
  %9 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count6 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %9, i32 0, i32 0
  store i16 %call5, i16* %count6, align 2
  %10 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count7 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %10, i32 0, i32 0
  %11 = load i16, i16* %count7, align 2
  %conv = zext i16 %11 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i32 %conv)
  %12 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count8 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %12, i32 0, i32 0
  %13 = load i16, i16* %count8, align 2
  %conv9 = zext i16 %13 to i64
  %mul = mul i64 24, %conv9
  %call10 = call i8* @cli_malloc(i64 %mul)
  %14 = bitcast i8* %call10 to %struct.macro_entry_tag*
  %15 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %15, i32 0, i32 1
  store %struct.macro_entry_tag* %14, %struct.macro_entry_tag** %macro_entry, align 8
  %16 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry11 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %16, i32 0, i32 1
  %17 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry11, align 8
  %tobool12 = icmp ne %struct.macro_entry_tag* %17, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.3
  %18 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %19 = bitcast %struct.macro_info_tag* %18 to i8*
  call void @free(i8* %19) #4
  store %struct.macro_info_tag* null, %struct.macro_info_tag** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %count15 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %21, i32 0, i32 0
  %22 = load i16, i16* %count15, align 2
  %conv16 = zext i16 %22 to i32
  %cmp17 = icmp slt i32 %20, %conv16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %fd.addr, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  %macro_entry19 = getelementptr inbounds %struct.macro_info_tag, %struct.macro_info_tag* %25, i32 0, i32 1
  %26 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry19, align 8
  %arrayidx = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %26, i64 %idxprom
  %call20 = call i32 @wm_read_macro_entry(i32 %23, %struct.macro_entry_tag* %arrayidx)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  %27 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  call void @wm_free_macro_info(%struct.macro_info_tag* %27)
  store %struct.macro_info_tag* null, %struct.macro_info_tag** %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.macro_info_tag*, %struct.macro_info_tag** %macro_info, align 8
  store %struct.macro_info_tag* %29, %struct.macro_info_tag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.22, %if.then.13, %if.then.2, %if.then
  %30 = load %struct.macro_info_tag*, %struct.macro_info_tag** %retval
  ret %struct.macro_info_tag* %30
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_read_oxo3(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %count = alloca i8, align 1
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @cli_readn(i32 %0, i8* %count, i32 1)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8, i8* %count, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 %conv, 14
  %conv1 = sext i32 %mul to i64
  %call2 = call i64 @lseek(i32 %1, i64 %conv1, i32 1) #4
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load i8, i8* %count, align 1
  %conv7 = zext i8 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 %conv7)
  %4 = load i32, i32* %fd.addr, align 4
  %call8 = call i32 @cli_readn(i32 %4, i8* %count, i32 1)
  %cmp9 = icmp ne i32 %call8, 1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %5 = load i8, i8* %count, align 1
  %conv13 = zext i8 %5 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %if.end.12
  %6 = load i32, i32* %fd.addr, align 4
  %call17 = call i32 @cli_readn(i32 %6, i8* %count, i32 1)
  %cmp18 = icmp ne i32 %call17, 1
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  %7 = load i8, i8* %count, align 1
  %conv22 = zext i8 %7 to i32
  %cmp23 = icmp ne i32 %conv22, 2
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %8 = load i32, i32* %fd.addr, align 4
  %call26 = call i64 @lseek(i32 %8, i64 -1, i32 1) #4
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.21
  %9 = load i32, i32* %fd.addr, align 4
  %call28 = call i32 @cli_readn(i32 %9, i8* %count, i32 1)
  %cmp29 = icmp ne i32 %call28, 1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.12
  %10 = load i8, i8* %count, align 1
  %conv34 = zext i8 %10 to i32
  %cmp35 = icmp sgt i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %if.end.33
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load i8, i8* %count, align 1
  %conv38 = zext i8 %12 to i32
  %mul39 = mul nsw i32 %conv38, 4
  %add = add nsw i32 %mul39, 1
  %conv40 = sext i32 %add to i64
  %call41 = call i64 @lseek(i32 %11, i64 %conv40, i32 1) #4
  %cmp42 = icmp eq i64 %call41, -1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.37
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.33
  %13 = load i8, i8* %count, align 1
  %conv47 = zext i8 %13 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0), i32 %conv47)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.44, %if.then.31, %if.then.25, %if.then.20, %if.then.11, %if.then.5, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_skip_menu_info(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %count = alloca i16, align 2
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i16* %count to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 2)
  %conv = sext i32 %call to i64
  %cmp = icmp ne i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %count, align 2
  %call2 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %2, i32 0)
  store i16 %call2, i16* %count, align 2
  %3 = load i16, i16* %count, align 2
  %conv3 = zext i16 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), i32 %conv3)
  %4 = load i16, i16* %count, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i16, i16* %count, align 2
  %conv5 = zext i16 %6 to i32
  %mul = mul nsw i32 %conv5, 12
  %conv6 = sext i32 %mul to i64
  %call7 = call i64 @lseek(i32 %5, i64 %conv6, i32 1) #4
  %cmp8 = icmp eq i64 %call7, -1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_skip_macro_extnames(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %is_unicode = alloca i32, align 4
  %size = alloca i16, align 2
  %offset_end = alloca i64, align 8
  %length = alloca i8, align 1
  %offset = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 0, i32 1) #4
  store i64 %call, i64* %offset_end, align 8
  %1 = load i32, i32* %fd.addr, align 4
  %2 = bitcast i16* %size to i8*
  %call1 = call i32 @cli_readn(i32 %1, i8* %2, i32 2)
  %conv = sext i32 %call1 to i64
  %cmp = icmp ne i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %size, align 2
  %call3 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %3, i32 0)
  store i16 %call3, i16* %size, align 2
  %4 = load i16, i16* %size, align 2
  %conv4 = sext i16 %4 to i32
  %cmp5 = icmp eq i32 %conv4, -1
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = bitcast i16* %size to i8*
  %call8 = call i32 @cli_readn(i32 %5, i8* %6, i32 2)
  %conv9 = sext i32 %call8 to i64
  %cmp10 = icmp ne i64 %conv9, 2
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  %7 = load i16, i16* %size, align 2
  %call14 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %7, i32 0)
  store i16 %call14, i16* %size, align 2
  store i32 1, i32* %is_unicode, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  store i32 0, i32* %is_unicode, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end.13
  %8 = load i16, i16* %size, align 2
  %conv16 = sext i16 %8 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i32 %conv16)
  %9 = load i16, i16* %size, align 2
  %conv17 = sext i16 %9 to i64
  %10 = load i64, i64* %offset_end, align 8
  %add = add nsw i64 %10, %conv17
  store i64 %add, i64* %offset_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.15
  %11 = load i32, i32* %fd.addr, align 4
  %call18 = call i64 @lseek(i32 %11, i64 0, i32 1) #4
  %12 = load i64, i64* %offset_end, align 8
  %cmp19 = icmp slt i64 %call18, %12
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %fd.addr, align 4
  %call21 = call i32 @cli_readn(i32 %13, i8* %length, i32 1)
  %cmp22 = icmp ne i32 %call21, 1
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.body
  %14 = load i32, i32* %is_unicode, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.25
  %15 = load i8, i8* %length, align 1
  %conv27 = zext i8 %15 to i64
  %mul = mul nsw i64 %conv27, 2
  %add28 = add nsw i64 %mul, 1
  store i64 %add28, i64* %offset, align 8
  br label %if.end.31

if.else.29:                                       ; preds = %if.end.25
  %16 = load i8, i8* %length, align 1
  %conv30 = zext i8 %16 to i64
  store i64 %conv30, i64* %offset, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.26
  %17 = load i64, i64* %offset, align 8
  %add32 = add i64 %17, 2
  store i64 %add32, i64* %offset, align 8
  %18 = load i32, i32* %fd.addr, align 4
  %19 = load i64, i64* %offset, align 8
  %call33 = call i64 @lseek(i32 %18, i64 %19, i32 1) #4
  %cmp34 = icmp eq i64 %call33, -1
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.36, %if.then.24, %if.then.12, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_skip_macro_intnames(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %i = alloca i16, align 2
  %count = alloca i16, align 2
  %length = alloca i8, align 1
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i16* %count to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 2)
  %conv = sext i32 %call to i64
  %cmp = icmp ne i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %count, align 2
  %call2 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %2, i32 0)
  store i16 %call2, i16* %count, align 2
  %3 = load i16, i16* %count, align 2
  %conv3 = zext i16 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i32 %conv3)
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i16, i16* %i, align 2
  %conv4 = zext i16 %4 to i32
  %5 = load i16, i16* %count, align 2
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp slt i32 %conv4, %conv5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %fd.addr, align 4
  %call8 = call i64 @lseek(i32 %6, i64 2, i32 1) #4
  %cmp9 = icmp eq i64 %call8, -1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  %7 = load i32, i32* %fd.addr, align 4
  %call13 = call i32 @cli_readn(i32 %7, i8* %length, i32 1)
  %conv14 = sext i32 %call13 to i64
  %cmp15 = icmp ne i64 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %8 = load i32, i32* %fd.addr, align 4
  %9 = load i8, i8* %length, align 1
  %conv19 = zext i8 %9 to i32
  %add = add nsw i32 %conv19, 1
  %conv20 = sext i32 %add to i64
  %call21 = call i64 @lseek(i32 %8, i64 %conv20, i32 1) #4
  %cmp22 = icmp eq i64 %call21, -1
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %10 = load i16, i16* %i, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.17, %if.then.11, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i8* @wm_decrypt_macro(i32 %fd, i32 %offset, i32 %len, i8 zeroext %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %key.addr = alloca i8, align 1
  %buff = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i8 %key, i8* %key.addr, align 1
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %offset.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i64 @lseek(i32 %0, i64 %conv, i32 0) #4
  %2 = load i32, i32* %offset.addr, align 4
  %conv1 = zext i32 %2 to i64
  %cmp = icmp ne i64 %call, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4
  %conv3 = zext i32 %3 to i64
  %call4 = call i8* @cli_malloc(i64 %conv3)
  store i8* %call4, i8** %buff, align 8
  %4 = load i8*, i8** %buff, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i8*, i8** %buff, align 8
  %7 = load i32, i32* %len.addr, align 4
  %call7 = call i32 @cli_readn(i32 %5, i8* %6, i32 %7)
  %8 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp ne i32 %call7, %8
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %9 = load i8*, i8** %buff, align 8
  call void @free(i8* %9) #4
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %10 = load i8, i8* %key.addr, align 1
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp16 = icmp ult i32 %11, %12
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8, i8* %key.addr, align 1
  %conv18 = zext i8 %13 to i32
  %14 = load i32, i32* %i, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load i8*, i8** %buff, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %16 to i32
  %xor = xor i32 %conv19, %conv18
  %conv20 = trunc i32 %xor to i8
  store i8 %conv20, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.end.11
  %18 = load i8*, i8** %buff, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.10, %if.then.5, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @vba56_test_middle(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %test_middle = alloca [20 x i8], align 16
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast [20 x i8]* %test_middle to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 20)
  %cmp = icmp ne i32 %call, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %test_middle, i32 0, i32 0
  %call1 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @vba56_test_middle.middle1_str, i32 0, i32 0), i64 20) #6
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %test_middle, i32 0, i32 0
  %call4 = call i32 @memcmp(i8* %arraydecay3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @vba56_test_middle.middle2_str, i32 0, i32 0), i64 20) #6
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  %2 = load i32, i32* %fd.addr, align 4
  %call7 = call i64 @lseek(i32 %2, i64 -20, i32 1) #4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @cli_writen(i32, i8*, i32) #1

declare i8* @cli_gentemp(i8*) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ppt_read_atom_header(i32 %fd, %struct.atom_header_tag* %atom_header) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %atom_header.addr = alloca %struct.atom_header_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.atom_header_tag* %atom_header, %struct.atom_header_tag** %atom_header.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 0, i32 1) #4
  %1 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %foffset = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %1, i32 0, i32 0
  store i64 %call, i64* %foffset, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %ver_inst = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %3, i32 0, i32 1
  %4 = bitcast i16* %ver_inst to i8*
  %call1 = call i32 @cli_readn(i32 %2, i8* %4, i32 2)
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %ver_inst2 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %5, i32 0, i32 1
  %6 = load i16, i16* %ver_inst2, align 2
  %call3 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %6, i32 0)
  %7 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %ver_inst4 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %7, i32 0, i32 1
  store i16 %call3, i16* %ver_inst4, align 2
  %8 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %ver_inst5 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %8, i32 0, i32 1
  %9 = load i16, i16* %ver_inst5, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 15
  %conv6 = trunc i32 %and to i8
  %10 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %version = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %10, i32 0, i32 2
  store i8 %conv6, i8* %version, align 1
  %11 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %ver_inst7 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %11, i32 0, i32 1
  %12 = load i16, i16* %ver_inst7, align 2
  %conv8 = zext i16 %12 to i32
  %shr = ashr i32 %conv8, 4
  %conv9 = trunc i32 %shr to i16
  %13 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %instance = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %13, i32 0, i32 3
  store i16 %conv9, i16* %instance, align 2
  %14 = load i32, i32* %fd.addr, align 4
  %15 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %type = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %15, i32 0, i32 4
  %16 = bitcast i16* %type to i8*
  %call10 = call i32 @cli_readn(i32 %14, i8* %16, i32 2)
  %conv11 = sext i32 %call10 to i64
  %cmp12 = icmp ne i64 %conv11, 2
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %17 = load i32, i32* %fd.addr, align 4
  %18 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %length = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %18, i32 0, i32 5
  %19 = bitcast i32* %length to i8*
  %call16 = call i32 @cli_readn(i32 %17, i8* %19, i32 4)
  %cmp17 = icmp ne i32 %call16, 4
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %20 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %type21 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %20, i32 0, i32 4
  %21 = load i16, i16* %type21, align 2
  %call22 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %21, i32 0)
  %22 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %type23 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %22, i32 0, i32 4
  store i16 %call22, i16* %type23, align 2
  %23 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %length24 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %23, i32 0, i32 5
  %24 = load i32, i32* %length24, align 4
  %call25 = call i32 @vba_endian_convert_32(i32 %24, i32 0)
  %25 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %length26 = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %25, i32 0, i32 5
  store i32 %call25, i32* %length26, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @ppt_print_atom_header(%struct.atom_header_tag* %atom_header) #0 {
entry:
  %atom_header.addr = alloca %struct.atom_header_tag*, align 8
  store %struct.atom_header_tag* %atom_header, %struct.atom_header_tag** %atom_header.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0))
  %0 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %version = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %0, i32 0, i32 2
  %1 = load i8, i8* %version, align 1
  %conv = zext i8 %1 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i32 %conv)
  %2 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %instance = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %2, i32 0, i32 3
  %3 = load i16, i16* %instance, align 2
  %conv1 = zext i16 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i32 %conv1)
  %4 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %type = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %4, i32 0, i32 4
  %5 = load i16, i16* %type, align 2
  %conv2 = zext i16 %5 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 %conv2)
  %6 = load %struct.atom_header_tag*, %struct.atom_header_tag** %atom_header.addr, align 8
  %length = getelementptr inbounds %struct.atom_header_tag, %struct.atom_header_tag* %6, i32 0, i32 5
  %7 = load i32, i32* %length, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i32 %7)
  ret void
}

declare i32 @cli_rmdirs(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ppt_unlzw(i8* %dir, i32 %fd, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %ofd = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %inbuff = alloca [8192 x i8], align 16
  %outbuff = alloca [8192 x i8], align 16
  %bufflen = alloca i32, align 4
  %stream = alloca %struct.z_stream_s, align 8
  %fullname = alloca [257 x i8], align 16
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %0 = load i8*, i8** %dir.addr, align 8
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %1, i64 0, i32 1) #4
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* %0, i64 %call) #4
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call4 = call i32 (i8*, i32, ...) @open(i8* %arraydecay3, i32 577, i32 384)
  store i32 %call4, i32* %ofd, align 4
  %2 = load i32, i32* %ofd, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %arraydecay5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %inbuff, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %arraydecay5, i8** %next_in, align 8
  %3 = load i32, i32* %length.addr, align 4
  %cmp6 = icmp ult i32 %3, 8192
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %length.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 8192, %cond.false ]
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 %cond, i32* %avail_in, align 4
  store i32 %cond, i32* %bufflen, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %inbuff, i32 0, i32 0
  %avail_in8 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %6 = load i32, i32* %avail_in8, align 4
  %call9 = call i32 @cli_readn(i32 %5, i8* %arraydecay7, i32 %6)
  %conv = sext i32 %call9 to i64
  %avail_in10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %7 = load i32, i32* %avail_in10, align 4
  %conv11 = zext i32 %7 to i64
  %cmp12 = icmp ne i64 %conv, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %cond.end
  %8 = load i32, i32* %ofd, align 4
  %call15 = call i32 @close(i32 %8)
  %arraydecay16 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call17 = call i32 @unlink(i8* %arraydecay16) #4
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  %avail_in19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %9 = load i32, i32* %avail_in19, align 4
  %10 = load i32, i32* %length.addr, align 4
  %sub = sub i32 %10, %9
  store i32 %sub, i32* %length.addr, align 4
  %call20 = call i32 @inflateInit_(%struct.z_stream_s* %stream, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 112)
  store i32 %call20, i32* %retval1, align 4
  %11 = load i32, i32* %retval1, align 4
  %cmp21 = icmp ne i32 %11, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %12 = load i32, i32* %retval1, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i32 %12)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.18
  %arraydecay25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outbuff, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arraydecay25, i8** %next_out, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 8192, i32* %avail_out, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.24
  %avail_out26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  %13 = load i32, i32* %avail_out26, align 4
  %cmp27 = icmp eq i32 %13, 0
  br i1 %cmp27, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %do.body
  %14 = load i32, i32* %ofd, align 4
  %arraydecay30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outbuff, i32 0, i32 0
  %call31 = call i32 @cli_writen(i32 %14, i8* %arraydecay30, i32 8192)
  %cmp32 = icmp ne i32 %call31, 8192
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.29
  %15 = load i32, i32* %ofd, align 4
  %call35 = call i32 @close(i32 %15)
  %call36 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.29
  %arraydecay38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outbuff, i32 0, i32 0
  %next_out39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arraydecay38, i8** %next_out39, align 8
  %avail_out40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 8192, i32* %avail_out40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.37, %do.body
  %avail_in42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %16 = load i32, i32* %avail_in42, align 4
  %cmp43 = icmp eq i32 %16, 0
  br i1 %cmp43, label %if.then.45, label %if.end.69

if.then.45:                                       ; preds = %if.end.41
  %arraydecay46 = getelementptr inbounds [8192 x i8], [8192 x i8]* %inbuff, i32 0, i32 0
  %next_in47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %arraydecay46, i8** %next_in47, align 8
  %17 = load i32, i32* %length.addr, align 4
  %cmp48 = icmp ult i32 %17, 8192
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %if.then.45
  %18 = load i32, i32* %length.addr, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.then.45
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %18, %cond.true.50 ], [ 8192, %cond.false.51 ]
  %avail_in54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 %cond53, i32* %avail_in54, align 4
  store i32 %cond53, i32* %bufflen, align 4
  %19 = load i32, i32* %fd.addr, align 4
  %arraydecay55 = getelementptr inbounds [8192 x i8], [8192 x i8]* %inbuff, i32 0, i32 0
  %avail_in56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %20 = load i32, i32* %avail_in56, align 4
  %call57 = call i32 @cli_readn(i32 %19, i8* %arraydecay55, i32 %20)
  %conv58 = sext i32 %call57 to i64
  %avail_in59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %21 = load i32, i32* %avail_in59, align 4
  %conv60 = zext i32 %21 to i64
  %cmp61 = icmp ne i64 %conv58, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %cond.end.52
  %22 = load i32, i32* %ofd, align 4
  %call64 = call i32 @close(i32 %22)
  %call65 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %cond.end.52
  %avail_in67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %23 = load i32, i32* %avail_in67, align 4
  %24 = load i32, i32* %length.addr, align 4
  %sub68 = sub i32 %24, %23
  store i32 %sub68, i32* %length.addr, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %if.end.41
  %call70 = call i32 @inflate(%struct.z_stream_s* %stream, i32 0)
  store i32 %call70, i32* %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.69
  %25 = load i32, i32* %retval1, align 4
  %cmp71 = icmp eq i32 %25, 0
  br i1 %cmp71, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %ofd, align 4
  %arraydecay73 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outbuff, i32 0, i32 0
  %27 = load i32, i32* %bufflen, align 4
  %call74 = call i32 @cli_writen(i32 %26, i8* %arraydecay73, i32 %27)
  %conv75 = sext i32 %call74 to i64
  %28 = load i32, i32* %bufflen, align 4
  %conv76 = zext i32 %28 to i64
  %cmp77 = icmp ne i64 %conv75, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %do.end
  %29 = load i32, i32* %ofd, align 4
  %call80 = call i32 @close(i32 %29)
  %call81 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %do.end
  %call83 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  %30 = load i32, i32* %ofd, align 4
  %call84 = call i32 @close(i32 %30)
  store i32 %call84, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.79, %if.then.63, %if.then.34, %if.then.14, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #1

declare i32 @inflateEnd(%struct.z_stream_s*) #1

declare i32 @inflate(%struct.z_stream_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @wm_read_macro_entry(i32 %fd, %struct.macro_entry_tag* %macro_entry) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %macro_entry.addr = alloca %struct.macro_entry_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.macro_entry_tag* %macro_entry, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %version = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %1, i32 0, i32 0
  %call = call i32 @cli_readn(i32 %0, i8* %version, i32 1)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %key = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %3, i32 0, i32 1
  %call1 = call i32 @cli_readn(i32 %2, i8* %key, i32 1)
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %intname_i = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %5, i32 0, i32 2
  %6 = bitcast i16* %intname_i to i8*
  %call5 = call i32 @cli_readn(i32 %4, i8* %6, i32 2)
  %cmp6 = icmp ne i32 %call5, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %7 = load i32, i32* %fd.addr, align 4
  %8 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %extname_i = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %8, i32 0, i32 3
  %9 = bitcast i16* %extname_i to i8*
  %call9 = call i32 @cli_readn(i32 %7, i8* %9, i32 2)
  %cmp10 = icmp ne i32 %call9, 2
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %10 = load i32, i32* %fd.addr, align 4
  %11 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %xname_i = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %11, i32 0, i32 4
  %12 = bitcast i16* %xname_i to i8*
  %call13 = call i32 @cli_readn(i32 %10, i8* %12, i32 2)
  %cmp14 = icmp ne i32 %call13, 2
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %unknown = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %14, i32 0, i32 5
  %15 = bitcast i32* %unknown to i8*
  %call17 = call i32 @cli_readn(i32 %13, i8* %15, i32 4)
  %cmp18 = icmp ne i32 %call17, 4
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %len = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %17, i32 0, i32 6
  %18 = bitcast i32* %len to i8*
  %call21 = call i32 @cli_readn(i32 %16, i8* %18, i32 4)
  %cmp22 = icmp ne i32 %call21, 4
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %state = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %20, i32 0, i32 7
  %21 = bitcast i32* %state to i8*
  %call25 = call i32 @cli_readn(i32 %19, i8* %21, i32 4)
  %cmp26 = icmp ne i32 %call25, 4
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %22 = load i32, i32* %fd.addr, align 4
  %23 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %offset = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %23, i32 0, i32 8
  %24 = bitcast i32* %offset to i8*
  %call29 = call i32 @cli_readn(i32 %22, i8* %24, i32 4)
  %cmp30 = icmp ne i32 %call29, 4
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %25 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %intname_i33 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %25, i32 0, i32 2
  %26 = load i16, i16* %intname_i33, align 2
  %call34 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %26, i32 0)
  %27 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %intname_i35 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %27, i32 0, i32 2
  store i16 %call34, i16* %intname_i35, align 2
  %28 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %extname_i36 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %28, i32 0, i32 3
  %29 = load i16, i16* %extname_i36, align 2
  %call37 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %29, i32 0)
  %30 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %extname_i38 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %30, i32 0, i32 3
  store i16 %call37, i16* %extname_i38, align 2
  %31 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %xname_i39 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %31, i32 0, i32 4
  %32 = load i16, i16* %xname_i39, align 2
  %call40 = call zeroext i16 @vba_endian_convert_16(i16 zeroext %32, i32 0)
  %33 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %xname_i41 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %33, i32 0, i32 4
  store i16 %call40, i16* %xname_i41, align 2
  %34 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %len42 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %34, i32 0, i32 6
  %35 = load i32, i32* %len42, align 4
  %call43 = call i32 @vba_endian_convert_32(i32 %35, i32 0)
  %36 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %len44 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %36, i32 0, i32 6
  store i32 %call43, i32* %len44, align 4
  %37 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %state45 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %37, i32 0, i32 7
  %38 = load i32, i32* %state45, align 4
  %call46 = call i32 @vba_endian_convert_32(i32 %38, i32 0)
  %39 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %state47 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %39, i32 0, i32 7
  store i32 %call46, i32* %state47, align 4
  %40 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %offset48 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %40, i32 0, i32 8
  %41 = load i32, i32* %offset48, align 4
  %call49 = call i32 @vba_endian_convert_32(i32 %41, i32 0)
  %42 = load %struct.macro_entry_tag*, %struct.macro_entry_tag** %macro_entry.addr, align 8
  %offset50 = getelementptr inbounds %struct.macro_entry_tag, %struct.macro_entry_tag* %42, i32 0, i32 8
  store i32 %call49, i32* %offset50, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
