; ModuleID = './MultiSource.Applications.ClamAV/57.shared_cdiff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdiff_cmd = type { i8*, i16, i32 (i8*, %struct.cdiff_ctx*)* }
%struct.cdiff_ctx = type { i8*, %struct.cdiff_node*, %struct.cdiff_node*, %struct.cdiff_node*, %struct.cdiff_node* }
%struct.cdiff_node = type { i32, i8*, i8*, %struct.cdiff_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"!cdiff_apply: Can't duplicate descriptor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"!cdiff_apply: lseek(desc, %d, SEEK_END) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"!cdiff_apply: Can't read %d bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"!cdiff_apply: No digital signature in cdiff file\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"!cdiff_apply: Can't fstat file\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"!cdiff_apply: compressed data end offset < 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"!cdiff_apply: lseek(desc, 0, SEEK_SET) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ClamAV-Diff:%*u:%u:\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"!cdiff_apply: Incorrect file format\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"!cdiff_apply: Can't gzdopen descriptor %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"!cdiff_apply: Premature EOF at line %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"!cdiff_apply: Error executing command at line %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"!cdiff_apply: fdopen() failed for descriptor %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"*cdiff_apply: File %s was not properly closed\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"*cdiff_apply: Parsed %d lines and executed %d commands\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"!cdiff_apply: Problem parsing line\0A\00", align 1
@commands = internal global [8 x %struct.cdiff_cmd] [%struct.cdiff_cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 1, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_open }, %struct.cdiff_cmd { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i16 1, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_add }, %struct.cdiff_cmd { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i16 2, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_del }, %struct.cdiff_cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i16 3, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_xchg }, %struct.cdiff_cmd { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i16 0, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_close }, %struct.cdiff_cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i16 6, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_move }, %struct.cdiff_cmd { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i16 1, i32 (i8*, %struct.cdiff_ctx*)* @cdiff_cmd_unlink }, %struct.cdiff_cmd zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [34 x i8] c"!cdiff_apply: Unknown command %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"!cdiff_apply: Not enough arguments for %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"!cdiff_apply: Can't execute command %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"XCHG\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"UNLINK\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_open: Can't get first argument\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_open: %s not closed before opening %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"/\5C\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"!cdiff_cmd_open: Forbidden characters found in database name\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"!cdiff_cmd_add: Can't get first argument\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"!cdiff_cmd_add: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"!cdiff_cmd_del: Can't get first argument\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_del: Can't get second argument\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"!cdiff_cmd_del: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_xchg: Can't get first argument\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_xchg: Can't get second argument\0A\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"!cdiff_cmd_xchg: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_close: No database to close\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_close: Can't open file %s for reading\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"!cdiff_cmd_close: Can't generate temporary name\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_close: Can't open file %s for writing\0A\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"!cdiff_cmd_close: Can't apply DEL at line %d of %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"!cdiff_cmd_close: Can't apply XCHG at line %d of %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"!cdiff_cmd_close: Can't write to %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"!cdiff_cmd_close: Not all DEL/XCHG have been executed\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"!cdiff_cmd_close: Can't unlink %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"!cdiff_cmd_close: Can't rename %s to %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"!cdiff_cmd_close: Can't open file %s for appending\0A\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Database %s is still open\0A\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get third argument\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get fifth argument\0A\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_move: end_line < start_line\0A\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't get fourth argument\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get sixth argument\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get first argument\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't open %s for reading\0A\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't get second argument\0A\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"!cdiff_cmd_move: Can't open %s for appending\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"!cdiff_cmd_move: Can't generate temporary name\0A\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"!cdiff_cmd_move: Can't open file %s for writing\0A\00", align 1
@.str.66 = private unnamed_addr constant [63 x i8] c"!cdiff_cmd_close: Can't apply MOVE due to conflict at line %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"!cdiff_cmd_move: Can't write to %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_move: No data was moved from %s to %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"!cdiff_cmd_move: Can't unlink %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_move: Can't rename %s to %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"!cdiff_cmd_unlink: Database %s is still open\0A\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"!cdiff_cmd_unlink: Can't get first argument\0A\00", align 1
@.str.73 = private unnamed_addr constant [64 x i8] c"!cdiff_cmd_unlink: Forbidden characters found in database name\0A\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"!cdiff_cmd_unlink: Can't unlink %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cdiff_apply(i32 %fd, i16 zeroext %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %ctx = alloca %struct.cdiff_ctx, align 8
  %fh = alloca %struct._IO_FILE*, align 8
  %gzh = alloca %struct.gzFile_s**, align 8
  %line = alloca [1024 x i8], align 16
  %buff = alloca [8192 x i8], align 16
  %dsig = alloca i8*, align 8
  %lines = alloca i32, align 4
  %cmds = alloca i32, align 4
  %difflen = alloca i32, align 4
  %diffremain = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %desc = alloca i32, align 4
  %bufsize = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i16 %mode, i16* %mode.addr, align 2
  store i8* null, i8** %dsig, align 8
  store i32 0, i32* %lines, align 4
  store i32 0, i32* %cmds, align 4
  %0 = bitcast %struct.cdiff_ctx* %ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 @dup(i32 %1) #1
  store i32 %call, i32* %desc, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %mode.addr, align 2
  %conv = zext i16 %3 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then.4, label %if.else.142

if.then.4:                                        ; preds = %if.end
  %4 = load i32, i32* %desc, align 4
  %call5 = call i64 @lseek(i32 %4, i64 -350, i32 2) #1
  %cmp6 = icmp eq i64 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.4
  %call9 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 -350)
  %5 = load i32, i32* %desc, align 4
  %call10 = call i32 @close(i32 %5)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.4
  %6 = bitcast [1024 x i8]* %line to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1024, i32 16, i1 false)
  %7 = load i32, i32* %desc, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call12 = call i64 @read(i32 %7, i8* %arraydecay, i64 350)
  %cmp13 = icmp ne i64 %call12, 350
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.11
  %call16 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 350)
  %8 = load i32, i32* %desc, align 4
  %call17 = call i32 @close(i32 %8)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.11
  store i32 349, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %9 = load i32, i32* %i, align 4
  %cmp19 = icmp sge i32 %9, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv21 = sext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 58
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 %idxprom25
  store i8* %arrayidx26, i8** %dsig, align 8
  br label %for.end

if.end.27:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  %14 = load i8*, i8** %dsig, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %for.end
  %call29 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  %15 = load i32, i32* %desc, align 4
  %call30 = call i32 @close(i32 %15)
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %for.end
  %16 = load i32, i32* %desc, align 4
  %call32 = call i32 @fstat(i32 %16, %struct.stat* %sb) #1
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.31
  %call36 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  %17 = load i32, i32* %desc, align 4
  %call37 = call i32 @close(i32 %17)
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.31
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %18 = load i64, i64* %st_size, align 8
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 350, %19
  %conv39 = sext i32 %sub to i64
  %sub40 = sub nsw i64 %18, %conv39
  %conv41 = trunc i64 %sub40 to i32
  store i32 %conv41, i32* %end, align 4
  %20 = load i32, i32* %end, align 4
  %cmp42 = icmp slt i32 %20, 0
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.38
  %call45 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  %21 = load i32, i32* %desc, align 4
  %call46 = call i32 @close(i32 %21)
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.38
  %22 = load i32, i32* %desc, align 4
  %call48 = call i64 @lseek(i32 %22, i64 0, i32 0) #1
  %cmp49 = icmp eq i64 %call48, -1
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.47
  %call52 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0))
  %23 = load i32, i32* %desc, align 4
  %call53 = call i32 @close(i32 %23)
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.47
  %24 = load i32, i32* %desc, align 4
  %call55 = call i64 @lseek(i32 %24, i64 0, i32 0) #1
  %cmp56 = icmp eq i64 %call55, -1
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.54
  %call59 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0))
  %25 = load i32, i32* %desc, align 4
  %call60 = call i32 @close(i32 %25)
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.54
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %if.end.61
  %26 = load i32, i32* %n, align 4
  %cmp62 = icmp slt i32 %26, 8191
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i32, i32* %desc, align 4
  %28 = load i32, i32* %n, align 4
  %idxprom64 = sext i32 %28 to i64
  %arrayidx65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i64 %idxprom64
  %call66 = call i64 @read(i32 %27, i8* %arrayidx65, i64 1)
  %cmp67 = icmp sgt i64 %call66, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp67, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load i32, i32* %n, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %n, align 4
  %idxprom69 = sext i32 %30 to i64
  %arrayidx70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i64 %idxprom69
  %31 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %31 to i32
  %cmp72 = icmp eq i32 %conv71, 58
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %while.body
  %32 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %32, 1
  store i32 %inc75, i32* %i, align 4
  %cmp76 = icmp eq i32 %inc75, 3
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.74
  br label %while.end

if.end.79:                                        ; preds = %if.then.74
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.78, %land.end
  %33 = load i32, i32* %n, align 4
  %idxprom81 = sext i32 %33 to i64
  %arrayidx82 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i64 %idxprom81
  store i8 0, i8* %arrayidx82, align 1
  %arraydecay83 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %call84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32* %difflen) #1
  %cmp85 = icmp ne i32 %call84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %while.end
  %call88 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  %34 = load i32, i32* %desc, align 4
  %call89 = call i32 @close(i32 %34)
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %while.end
  %35 = load i32, i32* %desc, align 4
  %call91 = call %struct.gzFile_s* @gzdopen(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %36 = bitcast %struct.gzFile_s* %call91 to %struct.gzFile_s**
  store %struct.gzFile_s** %36, %struct.gzFile_s*** %gzh, align 8
  %tobool92 = icmp ne %struct.gzFile_s** %36, null
  br i1 %tobool92, label %if.end.96, label %if.then.93

if.then.93:                                       ; preds = %if.end.90
  %37 = load i32, i32* %desc, align 4
  %call94 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %desc, align 4
  %call95 = call i32 @close(i32 %38)
  store i32 -1, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.90
  %39 = load i32, i32* %difflen, align 4
  store i32 %39, i32* %diffremain, align 4
  br label %while.cond.97

while.cond.97:                                    ; preds = %if.end.139, %if.then.129, %if.end.96
  %40 = load i32, i32* %diffremain, align 4
  %tobool98 = icmp ne i32 %40, 0
  br i1 %tobool98, label %while.body.99, label %while.end.140

while.body.99:                                    ; preds = %while.cond.97
  %41 = load i32, i32* %diffremain, align 4
  %conv100 = zext i32 %41 to i64
  %cmp101 = icmp ult i64 %conv100, 1024
  br i1 %cmp101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.99
  %42 = load i32, i32* %diffremain, align 4
  %add103 = add i32 %42, 1
  %conv104 = zext i32 %add103 to i64
  br label %cond.end

cond.false:                                       ; preds = %while.body.99
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv104, %cond.true ], [ 1024, %cond.false ]
  %conv105 = trunc i64 %cond to i32
  store i32 %conv105, i32* %bufsize, align 4
  %43 = load %struct.gzFile_s**, %struct.gzFile_s*** %gzh, align 8
  %44 = bitcast %struct.gzFile_s** %43 to %struct.gzFile_s*
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %45 = load i32, i32* %bufsize, align 4
  %call107 = call i8* @gzgets(%struct.gzFile_s* %44, i8* %arraydecay106, i32 %45)
  %tobool108 = icmp ne i8* %call107, null
  br i1 %tobool108, label %if.end.113, label %if.then.109

if.then.109:                                      ; preds = %cond.end
  %46 = load i32, i32* %lines, align 4
  %add110 = add i32 %46, 1
  %call111 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %add110)
  call void @cdiff_ctx_free(%struct.cdiff_ctx* %ctx)
  %47 = load %struct.gzFile_s**, %struct.gzFile_s*** %gzh, align 8
  %48 = bitcast %struct.gzFile_s** %47 to %struct.gzFile_s*
  %call112 = call i32 @gzclose(%struct.gzFile_s* %48)
  store i32 -1, i32* %retval
  br label %return

if.end.113:                                       ; preds = %cond.end
  %arraydecay114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call115 = call i64 @strlen(i8* %arraydecay114) #6
  %49 = load i32, i32* %diffremain, align 4
  %conv116 = zext i32 %49 to i64
  %sub117 = sub i64 %conv116, %call115
  %conv118 = trunc i64 %sub117 to i32
  store i32 %conv118, i32* %diffremain, align 4
  %50 = load i32, i32* %lines, align 4
  %inc119 = add i32 %50, 1
  store i32 %inc119, i32* %lines, align 4
  %arraydecay120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call121 = call i32 @cli_chomp(i8* %arraydecay120)
  %arrayidx122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  %51 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %51 to i32
  %cmp124 = icmp eq i32 %conv123, 35
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.113
  %arraydecay126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call127 = call i64 @strlen(i8* %arraydecay126) #6
  %tobool128 = icmp ne i64 %call127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %lor.lhs.false, %if.end.113
  br label %while.cond.97

if.end.130:                                       ; preds = %lor.lhs.false
  %arraydecay131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call132 = call i32 @cdiff_execute(i8* %arraydecay131, %struct.cdiff_ctx* %ctx)
  %cmp133 = icmp eq i32 %call132, -1
  br i1 %cmp133, label %if.then.135, label %if.else

if.then.135:                                      ; preds = %if.end.130
  %52 = load i32, i32* %lines, align 4
  %call136 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0), i32 %52)
  call void @cdiff_ctx_free(%struct.cdiff_ctx* %ctx)
  %53 = load %struct.gzFile_s**, %struct.gzFile_s*** %gzh, align 8
  %54 = bitcast %struct.gzFile_s** %53 to %struct.gzFile_s*
  %call137 = call i32 @gzclose(%struct.gzFile_s* %54)
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.130
  %55 = load i32, i32* %cmds, align 4
  %inc138 = add i32 %55, 1
  store i32 %inc138, i32* %cmds, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else
  br label %while.cond.97

while.end.140:                                    ; preds = %while.cond.97
  %56 = load %struct.gzFile_s**, %struct.gzFile_s*** %gzh, align 8
  %57 = bitcast %struct.gzFile_s** %56 to %struct.gzFile_s*
  %call141 = call i32 @gzclose(%struct.gzFile_s* %57)
  br label %if.end.179

if.else.142:                                      ; preds = %if.end
  %58 = load i32, i32* %desc, align 4
  %call143 = call %struct._IO_FILE* @fdopen(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #1
  store %struct._IO_FILE* %call143, %struct._IO_FILE** %fh, align 8
  %tobool144 = icmp ne %struct._IO_FILE* %call143, null
  br i1 %tobool144, label %if.end.148, label %if.then.145

if.then.145:                                      ; preds = %if.else.142
  %59 = load i32, i32* %desc, align 4
  %call146 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i32 0, i32 0), i32 %59)
  %60 = load i32, i32* %desc, align 4
  %call147 = call i32 @close(i32 %60)
  store i32 -1, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.else.142
  br label %while.cond.149

while.cond.149:                                   ; preds = %if.end.176, %if.then.165, %if.end.148
  %arraydecay150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call151 = call i8* @fgets(i8* %arraydecay150, i32 1024, %struct._IO_FILE* %61)
  %tobool152 = icmp ne i8* %call151, null
  br i1 %tobool152, label %while.body.153, label %while.end.177

while.body.153:                                   ; preds = %while.cond.149
  %62 = load i32, i32* %lines, align 4
  %inc154 = add i32 %62, 1
  store i32 %inc154, i32* %lines, align 4
  %arraydecay155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call156 = call i32 @cli_chomp(i8* %arraydecay155)
  %arrayidx157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  %63 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %63 to i32
  %cmp159 = icmp eq i32 %conv158, 35
  br i1 %cmp159, label %if.then.165, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %while.body.153
  %arraydecay162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call163 = call i64 @strlen(i8* %arraydecay162) #6
  %tobool164 = icmp ne i64 %call163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %lor.lhs.false.161, %while.body.153
  br label %while.cond.149

if.end.166:                                       ; preds = %lor.lhs.false.161
  %arraydecay167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call168 = call i32 @cdiff_execute(i8* %arraydecay167, %struct.cdiff_ctx* %ctx)
  %cmp169 = icmp eq i32 %call168, -1
  br i1 %cmp169, label %if.then.171, label %if.else.174

if.then.171:                                      ; preds = %if.end.166
  %64 = load i32, i32* %lines, align 4
  %call172 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0), i32 %64)
  call void @cdiff_ctx_free(%struct.cdiff_ctx* %ctx)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call173 = call i32 @fclose(%struct._IO_FILE* %65)
  store i32 -1, i32* %retval
  br label %return

if.else.174:                                      ; preds = %if.end.166
  %66 = load i32, i32* %cmds, align 4
  %inc175 = add i32 %66, 1
  store i32 %inc175, i32* %cmds, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.174
  br label %while.cond.149

while.end.177:                                    ; preds = %while.cond.149
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call178 = call i32 @fclose(%struct._IO_FILE* %67)
  br label %if.end.179

if.end.179:                                       ; preds = %while.end.177, %while.end.140
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %ctx, i32 0, i32 0
  %68 = load i8*, i8** %open_db, align 8
  %tobool180 = icmp ne i8* %68, null
  br i1 %tobool180, label %if.then.181, label %if.end.184

if.then.181:                                      ; preds = %if.end.179
  %open_db182 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %ctx, i32 0, i32 0
  %69 = load i8*, i8** %open_db182, align 8
  %call183 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i32 0, i32 0), i8* %69)
  call void @cdiff_ctx_free(%struct.cdiff_ctx* %ctx)
  store i32 -1, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.179
  %70 = load i32, i32* %lines, align 4
  %71 = load i32, i32* %cmds, align 4
  %call185 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0), i32 %70, i32 %71)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.then.181, %if.then.171, %if.then.145, %if.then.135, %if.then.109, %if.then.93, %if.then.87, %if.then.58, %if.then.51, %if.then.44, %if.then.35, %if.then.28, %if.then.15, %if.then.8, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @dup(i32) #2

declare i32 @logg(i8*, ...) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i32 @close(i32) #3

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare %struct.gzFile_s* @gzdopen(i32, i8*) #3

declare i8* @gzgets(%struct.gzFile_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @cdiff_ctx_free(%struct.cdiff_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %pt = alloca %struct.cdiff_node*, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %0, i32 0, i32 0
  %1 = load i8*, i8** %open_db, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db1 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %2, i32 0, i32 0
  %3 = load i8*, i8** %open_db1, align 8
  call void @free(i8* %3) #1
  %4 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db2 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %4, i32 0, i32 0
  store i8* null, i8** %open_db2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %5, i32 0, i32 1
  %6 = load %struct.cdiff_node*, %struct.cdiff_node** %add_start, align 8
  %tobool3 = icmp ne %struct.cdiff_node* %6, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start4 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %7, i32 0, i32 1
  %8 = load %struct.cdiff_node*, %struct.cdiff_node** %add_start4, align 8
  %str = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %8, i32 0, i32 1
  %9 = load i8*, i8** %str, align 8
  call void @free(i8* %9) #1
  %10 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start5 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %10, i32 0, i32 1
  %11 = load %struct.cdiff_node*, %struct.cdiff_node** %add_start5, align 8
  store %struct.cdiff_node* %11, %struct.cdiff_node** %pt, align 8
  %12 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start6 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %12, i32 0, i32 1
  %13 = load %struct.cdiff_node*, %struct.cdiff_node** %add_start6, align 8
  %next = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %13, i32 0, i32 3
  %14 = load %struct.cdiff_node*, %struct.cdiff_node** %next, align 8
  %15 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start7 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %15, i32 0, i32 1
  store %struct.cdiff_node* %14, %struct.cdiff_node** %add_start7, align 8
  %16 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %17 = bitcast %struct.cdiff_node* %16 to i8*
  call void @free(i8* %17) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_last = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %18, i32 0, i32 2
  store %struct.cdiff_node* null, %struct.cdiff_node** %add_last, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.10, %while.end
  %19 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %19, i32 0, i32 3
  %20 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start, align 8
  %tobool9 = icmp ne %struct.cdiff_node* %20, null
  br i1 %tobool9, label %while.body.10, label %while.end.17

while.body.10:                                    ; preds = %while.cond.8
  %21 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start11 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %21, i32 0, i32 3
  %22 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start11, align 8
  %str12 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %22, i32 0, i32 1
  %23 = load i8*, i8** %str12, align 8
  call void @free(i8* %23) #1
  %24 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start13 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %24, i32 0, i32 3
  %25 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start13, align 8
  store %struct.cdiff_node* %25, %struct.cdiff_node** %pt, align 8
  %26 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start14 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %26, i32 0, i32 3
  %27 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start14, align 8
  %next15 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %27, i32 0, i32 3
  %28 = load %struct.cdiff_node*, %struct.cdiff_node** %next15, align 8
  %29 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start16 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %29, i32 0, i32 3
  store %struct.cdiff_node* %28, %struct.cdiff_node** %del_start16, align 8
  %30 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %31 = bitcast %struct.cdiff_node* %30 to i8*
  call void @free(i8* %31) #1
  br label %while.cond.8

while.end.17:                                     ; preds = %while.cond.8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %while.end.17
  %32 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %32, i32 0, i32 4
  %33 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start, align 8
  %tobool19 = icmp ne %struct.cdiff_node* %33, null
  br i1 %tobool19, label %while.body.20, label %while.end.28

while.body.20:                                    ; preds = %while.cond.18
  %34 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start21 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %34, i32 0, i32 4
  %35 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start21, align 8
  %str22 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %35, i32 0, i32 1
  %36 = load i8*, i8** %str22, align 8
  call void @free(i8* %36) #1
  %37 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start23 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %37, i32 0, i32 4
  %38 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start23, align 8
  %str2 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %38, i32 0, i32 2
  %39 = load i8*, i8** %str2, align 8
  call void @free(i8* %39) #1
  %40 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start24 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %40, i32 0, i32 4
  %41 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start24, align 8
  store %struct.cdiff_node* %41, %struct.cdiff_node** %pt, align 8
  %42 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start25 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %42, i32 0, i32 4
  %43 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start25, align 8
  %next26 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %43, i32 0, i32 3
  %44 = load %struct.cdiff_node*, %struct.cdiff_node** %next26, align 8
  %45 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start27 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %45, i32 0, i32 4
  store %struct.cdiff_node* %44, %struct.cdiff_node** %xchg_start27, align 8
  %46 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %47 = bitcast %struct.cdiff_node* %46 to i8*
  call void @free(i8* %47) #1
  br label %while.cond.18

while.end.28:                                     ; preds = %while.cond.18
  ret void
}

declare i32 @gzclose(%struct.gzFile_s*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @cli_chomp(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_execute(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %cmd_name = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %cmd_handler = alloca i32 (i8*, %struct.cdiff_ctx*)*, align 8
  %i = alloca i32, align 4
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  store i32 (i8*, %struct.cdiff_ctx*)* null, i32 (i8*, %struct.cdiff_ctx*)** %cmd_handler, align 8
  %0 = load i8*, i8** %cmdstr.addr, align 8
  %call = call i8* @cdiff_token(i8* %0, i32 0, i32 0)
  store i8* %call, i8** %cmd_name, align 8
  %1 = load i8*, i8** %cmd_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.cdiff_cmd], [8 x %struct.cdiff_cmd]* @commands, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.cdiff_cmd, %struct.cdiff_cmd* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [8 x %struct.cdiff_cmd], [8 x %struct.cdiff_cmd]* @commands, i32 0, i64 %idxprom5
  %name7 = getelementptr inbounds %struct.cdiff_cmd, %struct.cdiff_cmd* %arrayidx6, i32 0, i32 0
  %5 = load i8*, i8** %name7, align 8
  %6 = load i8*, i8** %cmd_name, align 8
  %call8 = call i32 @strcmp(i8* %5, i8* %6) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [8 x %struct.cdiff_cmd], [8 x %struct.cdiff_cmd]* @commands, i32 0, i64 %idxprom11
  %handler = getelementptr inbounds %struct.cdiff_cmd, %struct.cdiff_cmd* %arrayidx12, i32 0, i32 2
  %8 = load i32 (i8*, %struct.cdiff_ctx*)*, i32 (i8*, %struct.cdiff_ctx*)** %handler, align 8
  store i32 (i8*, %struct.cdiff_ctx*)* %8, i32 (i8*, %struct.cdiff_ctx*)** %cmd_handler, align 8
  br label %for.end

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %10 = load i32 (i8*, %struct.cdiff_ctx*)*, i32 (i8*, %struct.cdiff_ctx*)** %cmd_handler, align 8
  %tobool14 = icmp ne i32 (i8*, %struct.cdiff_ctx*)* %10, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %for.end
  %11 = load i8*, i8** %cmd_name, align 8
  %call16 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %cmd_name, align 8
  call void @free(i8* %12) #1
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %for.end
  %13 = load i8*, i8** %cmdstr.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [8 x %struct.cdiff_cmd], [8 x %struct.cdiff_cmd]* @commands, i32 0, i64 %idxprom18
  %argc = getelementptr inbounds %struct.cdiff_cmd, %struct.cdiff_cmd* %arrayidx19, i32 0, i32 1
  %15 = load i16, i16* %argc, align 2
  %conv = zext i16 %15 to i32
  %call20 = call i8* @cdiff_token(i8* %13, i32 %conv, i32 1)
  store i8* %call20, i8** %tmp, align 8
  %tobool21 = icmp ne i8* %call20, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.end.17
  %16 = load i8*, i8** %cmd_name, align 8
  %call23 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i8* %16)
  %17 = load i8*, i8** %cmd_name, align 8
  call void @free(i8* %17) #1
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %18 = load i8*, i8** %tmp, align 8
  call void @free(i8* %18) #1
  %19 = load i32 (i8*, %struct.cdiff_ctx*)*, i32 (i8*, %struct.cdiff_ctx*)** %cmd_handler, align 8
  %20 = load i8*, i8** %cmdstr.addr, align 8
  %21 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %call25 = call i32 %19(i8* %20, %struct.cdiff_ctx* %21)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %22 = load i8*, i8** %cmd_name, align 8
  %call28 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i8* %22)
  %23 = load i8*, i8** %cmd_name, align 8
  call void @free(i8* %23) #1
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %24 = load i8*, i8** %cmd_name, align 8
  call void @free(i8* %24) #1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %if.then.22, %if.then.15, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @cdiff_token(i8* %line, i32 %token, i32 %last) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %token.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %counter, align 4
  %4 = load i32, i32* %token.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %7 = load i8*, i8** %line.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 32
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %counter, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %11 to i64
  %12 = load i8*, i8** %line.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %tobool10 = icmp ne i8 %13, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  %14 = load i32, i32* %last.addr, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %15 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %15 to i64
  %16 = load i8*, i8** %line.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %idxprom15
  %call = call noalias i8* @strdup(i8* %arrayidx16) #1
  store i8* %call, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.30, %if.end.17
  %18 = load i32, i32* %j, align 4
  %idxprom19 = zext i32 %18 to i64
  %19 = load i8*, i8** %line.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  %20 = load i8, i8* %arrayidx20, align 1
  %tobool21 = icmp ne i8 %20, 0
  br i1 %tobool21, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.18
  %21 = load i32, i32* %j, align 4
  %idxprom23 = zext i32 %21 to i64
  %22 = load i8*, i8** %line.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 %idxprom23
  %23 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 32
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.22
  br label %for.end.32

if.end.29:                                        ; preds = %for.body.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %24 = load i32, i32* %j, align 4
  %inc31 = add i32 %24, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.18

for.end.32:                                       ; preds = %if.then.28, %for.cond.18
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %cmp33 = icmp eq i32 %25, %26
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.end.32
  store i8* null, i8** %retval
  br label %return

if.end.36:                                        ; preds = %for.end.32
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %i, align 4
  %sub = sub i32 %27, %28
  %add = add i32 %sub, 1
  %conv37 = zext i32 %add to i64
  %call38 = call noalias i8* @malloc(i64 %conv37) #1
  store i8* %call38, i8** %buffer, align 8
  %29 = load i8*, i8** %buffer, align 8
  %tobool39 = icmp ne i8* %29, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.36
  store i8* null, i8** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.36
  %30 = load i8*, i8** %buffer, align 8
  %31 = load i8*, i8** %line.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %sub42 = sub i32 %33, %34
  %conv43 = zext i32 %sub42 to i64
  %call44 = call i8* @strncpy(i8* %30, i8* %add.ptr, i64 %conv43) #1
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %sub45 = sub i32 %35, %36
  %idxprom46 = zext i32 %sub45 to i64
  %37 = load i8*, i8** %buffer, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %37, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  %38 = load i8*, i8** %buffer, align 8
  store i8* %38, i8** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.40, %if.then.35, %if.then.14, %if.then.11
  %39 = load i8*, i8** %retval
  ret i8* %39
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_open(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %db = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %cmdstr.addr, align 8
  %call = call i8* @cdiff_token(i8* %0, i32 1, i32 1)
  store i8* %call, i8** %db, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %1, i32 0, i32 0
  %2 = load i8*, i8** %open_db, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db4 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %3, i32 0, i32 0
  %4 = load i8*, i8** %open_db4, align 8
  %5 = load i8*, i8** %db, align 8
  %call5 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), i8* %4, i8* %5)
  %6 = load i8*, i8** %db, align 8
  call void @free(i8* %6) #1
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %7 = load i32, i32* %i, align 4
  %conv = zext i32 %7 to i64
  %8 = load i8*, i8** %db, align 8
  %call7 = call i64 @strlen(i8* %8) #6
  %cmp = icmp ult i64 %conv, %call7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i8*, i8** %db, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv9, 46
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %12 to i64
  %13 = load i8*, i8** %db, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %idxprom12
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %15, i64 %idxprom15
  %16 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %16 to i32
  %and = and i32 %conv18, 8
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %17 to i64
  %18 = load i8*, i8** %db, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %call23 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %conv22) #6
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call26 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i32 0, i32 0))
  %20 = load i8*, i8** %db, align 8
  call void @free(i8* %20) #1
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %db, align 8
  %23 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db28 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %23, i32 0, i32 0
  store i8* %22, i8** %open_db28, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.25, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_add(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %sig = alloca i8*, align 8
  %new = alloca %struct.cdiff_node*, align 8
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %cmdstr.addr, align 8
  %call = call i8* @cdiff_token(i8* %0, i32 1, i32 1)
  store i8* %call, i8** %sig, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @calloc(i64 1, i64 32) #1
  %1 = bitcast i8* %call2 to %struct.cdiff_node*
  store %struct.cdiff_node* %1, %struct.cdiff_node** %new, align 8
  %2 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %tobool3 = icmp ne %struct.cdiff_node* %2, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0))
  %3 = load i8*, i8** %sig, align 8
  call void @free(i8* %3) #1
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %sig, align 8
  %5 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %str = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %5, i32 0, i32 1
  store i8* %4, i8** %str, align 8
  %6 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_last = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %6, i32 0, i32 2
  %7 = load %struct.cdiff_node*, %struct.cdiff_node** %add_last, align 8
  %tobool7 = icmp ne %struct.cdiff_node* %7, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %9 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_last9 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %9, i32 0, i32 2
  store %struct.cdiff_node* %8, %struct.cdiff_node** %add_last9, align 8
  %10 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %10, i32 0, i32 1
  store %struct.cdiff_node* %8, %struct.cdiff_node** %add_start, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.6
  %11 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %12 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_last10 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %12, i32 0, i32 2
  %13 = load %struct.cdiff_node*, %struct.cdiff_node** %add_last10, align 8
  %next = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %13, i32 0, i32 3
  store %struct.cdiff_node* %11, %struct.cdiff_node** %next, align 8
  %14 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %15 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_last11 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %15, i32 0, i32 2
  store %struct.cdiff_node* %14, %struct.cdiff_node** %add_last11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_del(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %arg = alloca i8*, align 8
  %pt = alloca %struct.cdiff_node*, align 8
  %last = alloca %struct.cdiff_node*, align 8
  %new = alloca %struct.cdiff_node*, align 8
  %lineno = alloca i32, align 4
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %cmdstr.addr, align 8
  %call = call i8* @cdiff_token(i8* %0, i32 1, i32 0)
  store i8* %call, i8** %arg, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %arg, align 8
  %call2 = call i32 @atoi(i8* %1) #6
  store i32 %call2, i32* %lineno, align 4
  %2 = load i8*, i8** %arg, align 8
  call void @free(i8* %2) #1
  %3 = load i8*, i8** %cmdstr.addr, align 8
  %call3 = call i8* @cdiff_token(i8* %3, i32 2, i32 1)
  store i8* %call3, i8** %arg, align 8
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %call8 = call noalias i8* @calloc(i64 1, i64 32) #1
  %4 = bitcast i8* %call8 to %struct.cdiff_node*
  store %struct.cdiff_node* %4, %struct.cdiff_node** %new, align 8
  %5 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %tobool9 = icmp ne %struct.cdiff_node* %5, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %call11 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0))
  %6 = load i8*, i8** %arg, align 8
  call void @free(i8* %6) #1
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %7 = load i8*, i8** %arg, align 8
  %8 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %str = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %8, i32 0, i32 1
  store i8* %7, i8** %str, align 8
  %9 = load i32, i32* %lineno, align 4
  %10 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %lineno13 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %10, i32 0, i32 0
  store i32 %9, i32* %lineno13, align 4
  %11 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %11, i32 0, i32 3
  %12 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start, align 8
  %tobool14 = icmp ne %struct.cdiff_node* %12, null
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %13 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %14 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start16 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %14, i32 0, i32 3
  store %struct.cdiff_node* %13, %struct.cdiff_node** %del_start16, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.end.12
  %15 = load i32, i32* %lineno, align 4
  %16 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start17 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %16, i32 0, i32 3
  %17 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start17, align 8
  %lineno18 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %17, i32 0, i32 0
  %18 = load i32, i32* %lineno18, align 4
  %cmp = icmp ult i32 %15, %18
  br i1 %cmp, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %19 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start20 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %19, i32 0, i32 3
  %20 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start20, align 8
  %21 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %next = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %21, i32 0, i32 3
  store %struct.cdiff_node* %20, %struct.cdiff_node** %next, align 8
  %22 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %23 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start21 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %23, i32 0, i32 3
  store %struct.cdiff_node* %22, %struct.cdiff_node** %del_start21, align 8
  br label %if.end.38

if.else.22:                                       ; preds = %if.else
  %24 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start23 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %24, i32 0, i32 3
  %25 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start23, align 8
  store %struct.cdiff_node* %25, %struct.cdiff_node** %pt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.else.22
  %26 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %tobool24 = icmp ne %struct.cdiff_node* %26, null
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  store %struct.cdiff_node* %27, %struct.cdiff_node** %last, align 8
  %28 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %lineno25 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %28, i32 0, i32 0
  %29 = load i32, i32* %lineno25, align 4
  %30 = load i32, i32* %lineno, align 4
  %cmp26 = icmp ult i32 %29, %30
  br i1 %cmp26, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %while.body
  %31 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next27 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %31, i32 0, i32 3
  %32 = load %struct.cdiff_node*, %struct.cdiff_node** %next27, align 8
  %tobool28 = icmp ne %struct.cdiff_node* %32, null
  br i1 %tobool28, label %lor.lhs.false, label %if.then.32

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load i32, i32* %lineno, align 4
  %34 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next29 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %34, i32 0, i32 3
  %35 = load %struct.cdiff_node*, %struct.cdiff_node** %next29, align 8
  %lineno30 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %35, i32 0, i32 0
  %36 = load i32, i32* %lineno30, align 4
  %cmp31 = icmp ult i32 %33, %36
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.end

if.end.33:                                        ; preds = %lor.lhs.false, %while.body
  %37 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next34 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %37, i32 0, i32 3
  %38 = load %struct.cdiff_node*, %struct.cdiff_node** %next34, align 8
  store %struct.cdiff_node* %38, %struct.cdiff_node** %pt, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.32, %while.cond
  %39 = load %struct.cdiff_node*, %struct.cdiff_node** %last, align 8
  %next35 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %39, i32 0, i32 3
  %40 = load %struct.cdiff_node*, %struct.cdiff_node** %next35, align 8
  %41 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %next36 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %41, i32 0, i32 3
  store %struct.cdiff_node* %40, %struct.cdiff_node** %next36, align 8
  %42 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %43 = load %struct.cdiff_node*, %struct.cdiff_node** %last, align 8
  %next37 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %43, i32 0, i32 3
  store %struct.cdiff_node* %42, %struct.cdiff_node** %next37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %while.end, %if.then.19
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.10, %if.then.5, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_xchg(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %arg = alloca i8*, align 8
  %arg2 = alloca i8*, align 8
  %pt = alloca %struct.cdiff_node*, align 8
  %last = alloca %struct.cdiff_node*, align 8
  %new = alloca %struct.cdiff_node*, align 8
  %lineno = alloca i32, align 4
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %cmdstr.addr, align 8
  %call = call i8* @cdiff_token(i8* %0, i32 1, i32 0)
  store i8* %call, i8** %arg, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %arg, align 8
  %call2 = call i32 @atoi(i8* %1) #6
  store i32 %call2, i32* %lineno, align 4
  %2 = load i8*, i8** %arg, align 8
  call void @free(i8* %2) #1
  %3 = load i8*, i8** %cmdstr.addr, align 8
  %call3 = call i8* @cdiff_token(i8* %3, i32 2, i32 0)
  store i8* %call3, i8** %arg, align 8
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i8*, i8** %cmdstr.addr, align 8
  %call8 = call i8* @cdiff_token(i8* %4, i32 3, i32 1)
  store i8* %call8, i8** %arg2, align 8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %5 = load i8*, i8** %arg, align 8
  call void @free(i8* %5) #1
  %call11 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %call13 = call noalias i8* @calloc(i64 1, i64 32) #1
  %6 = bitcast i8* %call13 to %struct.cdiff_node*
  store %struct.cdiff_node* %6, %struct.cdiff_node** %new, align 8
  %7 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %tobool14 = icmp ne %struct.cdiff_node* %7, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i32 0, i32 0))
  %8 = load i8*, i8** %arg, align 8
  call void @free(i8* %8) #1
  %9 = load i8*, i8** %arg2, align 8
  call void @free(i8* %9) #1
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %10 = load i8*, i8** %arg, align 8
  %11 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %str = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %11, i32 0, i32 1
  store i8* %10, i8** %str, align 8
  %12 = load i8*, i8** %arg2, align 8
  %13 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %str2 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %13, i32 0, i32 2
  store i8* %12, i8** %str2, align 8
  %14 = load i32, i32* %lineno, align 4
  %15 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %lineno18 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %15, i32 0, i32 0
  store i32 %14, i32* %lineno18, align 4
  %16 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %16, i32 0, i32 4
  %17 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start, align 8
  %tobool19 = icmp ne %struct.cdiff_node* %17, null
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %18 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %19 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start21 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %19, i32 0, i32 4
  store %struct.cdiff_node* %18, %struct.cdiff_node** %xchg_start21, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.end.17
  %20 = load i32, i32* %lineno, align 4
  %21 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start22 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %21, i32 0, i32 4
  %22 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start22, align 8
  %lineno23 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %22, i32 0, i32 0
  %23 = load i32, i32* %lineno23, align 4
  %cmp = icmp ult i32 %20, %23
  br i1 %cmp, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.else
  %24 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start25 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %24, i32 0, i32 4
  %25 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start25, align 8
  %26 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %next = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %26, i32 0, i32 3
  store %struct.cdiff_node* %25, %struct.cdiff_node** %next, align 8
  %27 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %28 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start26 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %28, i32 0, i32 4
  store %struct.cdiff_node* %27, %struct.cdiff_node** %xchg_start26, align 8
  br label %if.end.43

if.else.27:                                       ; preds = %if.else
  %29 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start28 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %29, i32 0, i32 4
  %30 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start28, align 8
  store %struct.cdiff_node* %30, %struct.cdiff_node** %pt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.else.27
  %31 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %tobool29 = icmp ne %struct.cdiff_node* %31, null
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  store %struct.cdiff_node* %32, %struct.cdiff_node** %last, align 8
  %33 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %lineno30 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %33, i32 0, i32 0
  %34 = load i32, i32* %lineno30, align 4
  %35 = load i32, i32* %lineno, align 4
  %cmp31 = icmp ult i32 %34, %35
  br i1 %cmp31, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %while.body
  %36 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next32 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %36, i32 0, i32 3
  %37 = load %struct.cdiff_node*, %struct.cdiff_node** %next32, align 8
  %tobool33 = icmp ne %struct.cdiff_node* %37, null
  br i1 %tobool33, label %lor.lhs.false, label %if.then.37

lor.lhs.false:                                    ; preds = %land.lhs.true
  %38 = load i32, i32* %lineno, align 4
  %39 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next34 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %39, i32 0, i32 3
  %40 = load %struct.cdiff_node*, %struct.cdiff_node** %next34, align 8
  %lineno35 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %40, i32 0, i32 0
  %41 = load i32, i32* %lineno35, align 4
  %cmp36 = icmp ult i32 %38, %41
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.end

if.end.38:                                        ; preds = %lor.lhs.false, %while.body
  %42 = load %struct.cdiff_node*, %struct.cdiff_node** %pt, align 8
  %next39 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %42, i32 0, i32 3
  %43 = load %struct.cdiff_node*, %struct.cdiff_node** %next39, align 8
  store %struct.cdiff_node* %43, %struct.cdiff_node** %pt, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.37, %while.cond
  %44 = load %struct.cdiff_node*, %struct.cdiff_node** %last, align 8
  %next40 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %44, i32 0, i32 3
  %45 = load %struct.cdiff_node*, %struct.cdiff_node** %next40, align 8
  %46 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %next41 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %46, i32 0, i32 3
  store %struct.cdiff_node* %45, %struct.cdiff_node** %next41, align 8
  %47 = load %struct.cdiff_node*, %struct.cdiff_node** %new, align 8
  %48 = load %struct.cdiff_node*, %struct.cdiff_node** %last, align 8
  %next42 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %48, i32 0, i32 3
  store %struct.cdiff_node* %47, %struct.cdiff_node** %next42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %while.end, %if.then.24
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.15, %if.then.10, %if.then.5, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_close(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %add = alloca %struct.cdiff_node*, align 8
  %del = alloca %struct.cdiff_node*, align 8
  %xchg = alloca %struct.cdiff_node*, align 8
  %lines = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %line = alloca [1024 x i8], align 16
  %fh = alloca %struct._IO_FILE*, align 8
  %tmpfh = alloca %struct._IO_FILE*, align 8
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  store i32 0, i32* %lines, align 4
  %0 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %0, i32 0, i32 0
  %1 = load i8*, i8** %open_db, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %add_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %2, i32 0, i32 1
  %3 = load %struct.cdiff_node*, %struct.cdiff_node** %add_start, align 8
  store %struct.cdiff_node* %3, %struct.cdiff_node** %add, align 8
  %4 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %del_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %4, i32 0, i32 3
  %5 = load %struct.cdiff_node*, %struct.cdiff_node** %del_start, align 8
  store %struct.cdiff_node* %5, %struct.cdiff_node** %del, align 8
  %6 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %xchg_start = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %6, i32 0, i32 4
  %7 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg_start, align 8
  store %struct.cdiff_node* %7, %struct.cdiff_node** %xchg, align 8
  %8 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %tobool4 = icmp ne %struct.cdiff_node* %8, null
  br i1 %tobool4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %tobool5 = icmp ne %struct.cdiff_node* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.108

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db7 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %10, i32 0, i32 0
  %11 = load i8*, i8** %open_db7, align 8
  %call8 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fh, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %call8, null
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then.6
  %12 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db11 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %12, i32 0, i32 0
  %13 = load i8*, i8** %open_db11, align 8
  %call12 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i8* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.6
  %call14 = call i8* @cli_gentemp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  store i8* %call14, i8** %tmp, align 8
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %call17 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.43, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  %15 = load i8*, i8** %tmp, align 8
  %call20 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %tmpfh, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %call20, null
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %16 = load i8*, i8** %tmp, align 8
  %call23 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i32 0, i32 0), i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load i8*, i8** %tmp, align 8
  call void @free(i8* %18) #1
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.82, %if.end.71, %if.end.41, %if.end.25
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call26 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %19)
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %lines, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %lines, align 4
  %21 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %tobool28 = icmp ne %struct.cdiff_node* %21, null
  br i1 %tobool28, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %while.body
  %22 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %lineno = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %22, i32 0, i32 0
  %23 = load i32, i32* %lineno, align 4
  %24 = load i32, i32* %lines, align 4
  %cmp = icmp eq i32 %23, %24
  br i1 %cmp, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %land.lhs.true
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %25 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %str = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %25, i32 0, i32 1
  %26 = load i8*, i8** %str, align 8
  %27 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %str31 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %27, i32 0, i32 1
  %28 = load i8*, i8** %str31, align 8
  %call32 = call i64 @strlen(i8* %28) #6
  %call33 = call i32 @strncmp(i8* %arraydecay30, i8* %26, i64 %call32) #6
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.then.29
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call37 = call i32 @fclose(%struct._IO_FILE* %30)
  %31 = load i8*, i8** %tmp, align 8
  %call38 = call i32 @unlink(i8* %31) #1
  %32 = load i8*, i8** %tmp, align 8
  call void @free(i8* %32) #1
  %33 = load i32, i32* %lines, align 4
  %34 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db39 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %34, i32 0, i32 0
  %35 = load i8*, i8** %open_db39, align 8
  %call40 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0), i32 %33, i8* %35)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.29
  %36 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %next = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %36, i32 0, i32 3
  %37 = load %struct.cdiff_node*, %struct.cdiff_node** %next, align 8
  store %struct.cdiff_node* %37, %struct.cdiff_node** %del, align 8
  br label %while.cond

if.end.42:                                        ; preds = %land.lhs.true, %while.body
  %38 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %tobool43 = icmp ne %struct.cdiff_node* %38, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.73

land.lhs.true.44:                                 ; preds = %if.end.42
  %39 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %lineno45 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %39, i32 0, i32 0
  %40 = load i32, i32* %lineno45, align 4
  %41 = load i32, i32* %lines, align 4
  %cmp46 = icmp eq i32 %40, %41
  br i1 %cmp46, label %if.then.47, label %if.end.73

if.then.47:                                       ; preds = %land.lhs.true.44
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %42 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %str49 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %42, i32 0, i32 1
  %43 = load i8*, i8** %str49, align 8
  %44 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %str50 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %44, i32 0, i32 1
  %45 = load i8*, i8** %str50, align 8
  %call51 = call i64 @strlen(i8* %45) #6
  %call52 = call i32 @strncmp(i8* %arraydecay48, i8* %43, i64 %call51) #6
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.then.47
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call55 = call i32 @fclose(%struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %47)
  %48 = load i8*, i8** %tmp, align 8
  %call57 = call i32 @unlink(i8* %48) #1
  %49 = load i8*, i8** %tmp, align 8
  call void @free(i8* %49) #1
  %50 = load i32, i32* %lines, align 4
  %51 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db58 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %51, i32 0, i32 0
  %52 = load i8*, i8** %open_db58, align 8
  %call59 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0), i32 %50, i8* %52)
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.47
  %53 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %str2 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %53, i32 0, i32 2
  %54 = load i8*, i8** %str2, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call61 = call i32 @fputs(i8* %54, %struct._IO_FILE* %55)
  %cmp62 = icmp eq i32 %call61, -1
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.end.60
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call64 = call i32 @fputc(i32 10, %struct._IO_FILE* %56)
  %cmp65 = icmp eq i32 %call64, -1
  br i1 %cmp65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %lor.lhs.false.63, %if.end.60
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %58)
  %59 = load i8*, i8** %tmp, align 8
  %call69 = call i32 @unlink(i8* %59) #1
  %60 = load i8*, i8** %tmp, align 8
  %call70 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0), i8* %60)
  %61 = load i8*, i8** %tmp, align 8
  call void @free(i8* %61) #1
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %lor.lhs.false.63
  %62 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %next72 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %62, i32 0, i32 3
  %63 = load %struct.cdiff_node*, %struct.cdiff_node** %next72, align 8
  store %struct.cdiff_node* %63, %struct.cdiff_node** %xchg, align 8
  br label %while.cond

if.end.73:                                        ; preds = %land.lhs.true.44, %if.end.42
  %arraydecay74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call75 = call i32 @fputs(i8* %arraydecay74, %struct._IO_FILE* %64)
  %cmp76 = icmp eq i32 %call75, -1
  br i1 %cmp76, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %if.end.73
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call78 = call i32 @fclose(%struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call79 = call i32 @fclose(%struct._IO_FILE* %66)
  %67 = load i8*, i8** %tmp, align 8
  %call80 = call i32 @unlink(i8* %67) #1
  %68 = load i8*, i8** %tmp, align 8
  %call81 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0), i8* %68)
  %69 = load i8*, i8** %tmp, align 8
  call void @free(i8* %69) #1
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.end.73
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call83 = call i32 @fclose(%struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfh, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* %71)
  %72 = load %struct.cdiff_node*, %struct.cdiff_node** %del, align 8
  %tobool85 = icmp ne %struct.cdiff_node* %72, null
  br i1 %tobool85, label %if.then.88, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %while.end
  %73 = load %struct.cdiff_node*, %struct.cdiff_node** %xchg, align 8
  %tobool87 = icmp ne %struct.cdiff_node* %73, null
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %lor.lhs.false.86, %while.end
  %call89 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i32 0, i32 0))
  %74 = load i8*, i8** %tmp, align 8
  %call90 = call i32 @unlink(i8* %74) #1
  %75 = load i8*, i8** %tmp, align 8
  call void @free(i8* %75) #1
  store i32 -1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.86
  %76 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db92 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %76, i32 0, i32 0
  %77 = load i8*, i8** %open_db92, align 8
  %call93 = call i32 @unlink(i8* %77) #1
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.end.91
  %78 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db96 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %78, i32 0, i32 0
  %79 = load i8*, i8** %open_db96, align 8
  %call97 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* %79)
  %80 = load i8*, i8** %tmp, align 8
  %call98 = call i32 @unlink(i8* %80) #1
  %81 = load i8*, i8** %tmp, align 8
  call void @free(i8* %81) #1
  store i32 -1, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.91
  %82 = load i8*, i8** %tmp, align 8
  %83 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db100 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %83, i32 0, i32 0
  %84 = load i8*, i8** %open_db100, align 8
  %call101 = call i32 @rename(i8* %82, i8* %84) #1
  %cmp102 = icmp eq i32 %call101, -1
  br i1 %cmp102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %if.end.99
  %85 = load i8*, i8** %tmp, align 8
  %86 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db104 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %86, i32 0, i32 0
  %87 = load i8*, i8** %open_db104, align 8
  %call105 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), i8* %85, i8* %87)
  %88 = load i8*, i8** %tmp, align 8
  %call106 = call i32 @unlink(i8* %88) #1
  %89 = load i8*, i8** %tmp, align 8
  call void @free(i8* %89) #1
  store i32 -1, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.end.99
  %90 = load i8*, i8** %tmp, align 8
  call void @free(i8* %90) #1
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %lor.lhs.false
  %91 = load %struct.cdiff_node*, %struct.cdiff_node** %add, align 8
  %tobool109 = icmp ne %struct.cdiff_node* %91, null
  br i1 %tobool109, label %if.then.110, label %if.end.135

if.then.110:                                      ; preds = %if.end.108
  %92 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db111 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %92, i32 0, i32 0
  %93 = load i8*, i8** %open_db111, align 8
  %call112 = call %struct._IO_FILE* @fopen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  store %struct._IO_FILE* %call112, %struct._IO_FILE** %fh, align 8
  %tobool113 = icmp ne %struct._IO_FILE* %call112, null
  br i1 %tobool113, label %if.end.117, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  %94 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db115 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %94, i32 0, i32 0
  %95 = load i8*, i8** %open_db115, align 8
  %call116 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i32 0, i32 0), i8* %95)
  store i32 -1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.then.110
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.131, %if.end.117
  %96 = load %struct.cdiff_node*, %struct.cdiff_node** %add, align 8
  %tobool119 = icmp ne %struct.cdiff_node* %96, null
  br i1 %tobool119, label %while.body.120, label %while.end.133

while.body.120:                                   ; preds = %while.cond.118
  %97 = load %struct.cdiff_node*, %struct.cdiff_node** %add, align 8
  %str121 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %97, i32 0, i32 1
  %98 = load i8*, i8** %str121, align 8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call122 = call i32 @fputs(i8* %98, %struct._IO_FILE* %99)
  %cmp123 = icmp eq i32 %call122, -1
  br i1 %cmp123, label %if.then.127, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %while.body.120
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call125 = call i32 @fputc(i32 10, %struct._IO_FILE* %100)
  %cmp126 = icmp eq i32 %call125, -1
  br i1 %cmp126, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %lor.lhs.false.124, %while.body.120
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call128 = call i32 @fclose(%struct._IO_FILE* %101)
  %102 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db129 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %102, i32 0, i32 0
  %103 = load i8*, i8** %open_db129, align 8
  %call130 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0), i8* %103)
  store i32 -1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %lor.lhs.false.124
  %104 = load %struct.cdiff_node*, %struct.cdiff_node** %add, align 8
  %next132 = getelementptr inbounds %struct.cdiff_node, %struct.cdiff_node* %104, i32 0, i32 3
  %105 = load %struct.cdiff_node*, %struct.cdiff_node** %next132, align 8
  store %struct.cdiff_node* %105, %struct.cdiff_node** %add, align 8
  br label %while.cond.118

while.end.133:                                    ; preds = %while.cond.118
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call134 = call i32 @fclose(%struct._IO_FILE* %106)
  br label %if.end.135

if.end.135:                                       ; preds = %while.end.133, %if.end.108
  %107 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  call void @cdiff_ctx_free(%struct.cdiff_ctx* %107)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.then.127, %if.then.114, %if.then.103, %if.then.95, %if.then.88, %if.then.77, %if.then.66, %if.then.54, %if.then.35, %if.then.22, %if.then.16, %if.then.10, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_move(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %lines = alloca i32, align 4
  %start_line = alloca i32, align 4
  %end_line = alloca i32, align 4
  %arg = alloca i8*, align 8
  %srcdb = alloca i8*, align 8
  %dstdb = alloca i8*, align 8
  %tmpdb = alloca i8*, align 8
  %line = alloca [1024 x i8], align 16
  %start_str = alloca i8*, align 8
  %end_str = alloca i8*, align 8
  %src = alloca %struct._IO_FILE*, align 8
  %dst = alloca %struct._IO_FILE*, align 8
  %tmp = alloca %struct._IO_FILE*, align 8
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  store i32 0, i32* %lines, align 4
  %0 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %0, i32 0, i32 0
  %1 = load i8*, i8** %open_db, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db1 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %2, i32 0, i32 0
  %3 = load i8*, i8** %open_db1, align 8
  %call = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i32 0, i32 0), i8* %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %cmdstr.addr, align 8
  %call2 = call i8* @cdiff_token(i8* %4, i32 3, i32 0)
  store i8* %call2, i8** %arg, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i8*, i8** %arg, align 8
  %call7 = call i32 @atoi(i8* %5) #6
  store i32 %call7, i32* %start_line, align 4
  %6 = load i8*, i8** %arg, align 8
  call void @free(i8* %6) #1
  %7 = load i8*, i8** %cmdstr.addr, align 8
  %call8 = call i8* @cdiff_token(i8* %7, i32 5, i32 0)
  store i8* %call8, i8** %arg, align 8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %arg, align 8
  %call13 = call i32 @atoi(i8* %8) #6
  store i32 %call13, i32* %end_line, align 4
  %9 = load i8*, i8** %arg, align 8
  call void @free(i8* %9) #1
  %10 = load i32, i32* %end_line, align 4
  %11 = load i32, i32* %start_line, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %12 = load i8*, i8** %cmdstr.addr, align 8
  %call17 = call i8* @cdiff_token(i8* %12, i32 4, i32 0)
  store i8* %call17, i8** %start_str, align 8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %call20 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  %13 = load i8*, i8** %cmdstr.addr, align 8
  %call22 = call i8* @cdiff_token(i8* %13, i32 6, i32 0)
  store i8* %call22, i8** %end_str, align 8
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %call25 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0))
  %14 = load i8*, i8** %start_str, align 8
  call void @free(i8* %14) #1
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %cmdstr.addr, align 8
  %call27 = call i8* @cdiff_token(i8* %15, i32 1, i32 0)
  store i8* %call27, i8** %srcdb, align 8
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i32 0, i32 0))
  %16 = load i8*, i8** %start_str, align 8
  call void @free(i8* %16) #1
  %17 = load i8*, i8** %end_str, align 8
  call void @free(i8* %17) #1
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %18 = load i8*, i8** %srcdb, align 8
  %call32 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %src, align 8
  %tobool33 = icmp ne %struct._IO_FILE* %call32, null
  br i1 %tobool33, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  %19 = load i8*, i8** %srcdb, align 8
  %call35 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i8* %19)
  %20 = load i8*, i8** %start_str, align 8
  call void @free(i8* %20) #1
  %21 = load i8*, i8** %end_str, align 8
  call void @free(i8* %21) #1
  %22 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %22) #1
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.31
  %23 = load i8*, i8** %cmdstr.addr, align 8
  %call37 = call i8* @cdiff_token(i8* %23, i32 2, i32 0)
  store i8* %call37, i8** %dstdb, align 8
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i32 0, i32 0))
  %24 = load i8*, i8** %start_str, align 8
  call void @free(i8* %24) #1
  %25 = load i8*, i8** %end_str, align 8
  call void @free(i8* %25) #1
  %26 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %26) #1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call41 = call i32 @fclose(%struct._IO_FILE* %27)
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  %28 = load i8*, i8** %dstdb, align 8
  %call43 = call %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  store %struct._IO_FILE* %call43, %struct._IO_FILE** %dst, align 8
  %tobool44 = icmp ne %struct._IO_FILE* %call43, null
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  %29 = load i8*, i8** %dstdb, align 8
  %call46 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0), i8* %29)
  %30 = load i8*, i8** %start_str, align 8
  call void @free(i8* %30) #1
  %31 = load i8*, i8** %end_str, align 8
  call void @free(i8* %31) #1
  %32 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %32) #1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call47 = call i32 @fclose(%struct._IO_FILE* %33)
  %34 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %34) #1
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  %call49 = call i8* @cli_gentemp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  store i8* %call49, i8** %tmpdb, align 8
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.end.55, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  %call52 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i32 0, i32 0))
  %35 = load i8*, i8** %start_str, align 8
  call void @free(i8* %35) #1
  %36 = load i8*, i8** %end_str, align 8
  call void @free(i8* %36) #1
  %37 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %37) #1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %38)
  %39 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %39) #1
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* %40)
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.48
  %41 = load i8*, i8** %tmpdb, align 8
  %call56 = call %struct._IO_FILE* @fopen(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  store %struct._IO_FILE* %call56, %struct._IO_FILE** %tmp, align 8
  %tobool57 = icmp ne %struct._IO_FILE* %call56, null
  br i1 %tobool57, label %if.end.62, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %42 = load i8*, i8** %tmpdb, align 8
  %call59 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i32 0, i32 0), i8* %42)
  %43 = load i8*, i8** %start_str, align 8
  call void @free(i8* %43) #1
  %44 = load i8*, i8** %end_str, align 8
  call void @free(i8* %44) #1
  %45 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %45) #1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %46)
  %47 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %47) #1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call61 = call i32 @fclose(%struct._IO_FILE* %48)
  %49 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %49) #1
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.55
  br label %while.cond

while.cond:                                       ; preds = %if.end.114, %if.end.104, %if.end.62
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call63 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %50)
  %tobool64 = icmp ne i8* %call63, null
  br i1 %tobool64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i32, i32* %lines, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* %lines, align 4
  %52 = load i32, i32* %lines, align 4
  %53 = load i32, i32* %start_line, align 4
  %cmp65 = icmp eq i32 %52, %53
  br i1 %cmp65, label %if.then.66, label %if.end.105

if.then.66:                                       ; preds = %while.body
  %arraydecay67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %54 = load i8*, i8** %start_str, align 8
  %55 = load i8*, i8** %start_str, align 8
  %call68 = call i64 @strlen(i8* %55) #6
  %call69 = call i32 @strncmp(i8* %arraydecay67, i8* %54, i64 %call68) #6
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %if.then.66
  %56 = load i8*, i8** %start_str, align 8
  call void @free(i8* %56) #1
  %57 = load i8*, i8** %end_str, align 8
  call void @free(i8* %57) #1
  %58 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %58) #1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call72 = call i32 @fclose(%struct._IO_FILE* %59)
  %60 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %60) #1
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call73 = call i32 @fclose(%struct._IO_FILE* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call74 = call i32 @fclose(%struct._IO_FILE* %62)
  %63 = load i8*, i8** %tmpdb, align 8
  %call75 = call i32 @unlink(i8* %63) #1
  %64 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %64) #1
  %65 = load i32, i32* %lines, align 4
  %call76 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.66, i32 0, i32 0), i32 %65)
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.66
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.77
  %arraydecay78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call79 = call i32 @fputs(i8* %arraydecay78, %struct._IO_FILE* %66)
  %cmp80 = icmp eq i32 %call79, -1
  br i1 %cmp80, label %if.then.81, label %if.end.87

if.then.81:                                       ; preds = %do.body
  %67 = load i8*, i8** %start_str, align 8
  call void @free(i8* %67) #1
  %68 = load i8*, i8** %end_str, align 8
  call void @free(i8* %68) #1
  %69 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %69) #1
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call82 = call i32 @fclose(%struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call83 = call i32 @fclose(%struct._IO_FILE* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* %72)
  %73 = load i8*, i8** %tmpdb, align 8
  %call85 = call i32 @unlink(i8* %73) #1
  %74 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %74) #1
  %75 = load i8*, i8** %dstdb, align 8
  %call86 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i8* %75)
  %76 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %76) #1
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.87
  %77 = load i32, i32* %lines, align 4
  %78 = load i32, i32* %end_line, align 4
  %cmp88 = icmp ult i32 %77, %78
  br i1 %cmp88, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %arraydecay89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call90 = call i8* @fgets(i8* %arraydecay89, i32 1024, %struct._IO_FILE* %79)
  %tobool91 = icmp ne i8* %call90, null
  br i1 %tobool91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %80 = load i32, i32* %lines, align 4
  %inc92 = add i32 %80, 1
  store i32 %inc92, i32* %lines, align 4
  %tobool93 = icmp ne i32 %80, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %81 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool93, %land.rhs ]
  br i1 %81, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call94 = call i32 @fclose(%struct._IO_FILE* %82)
  %83 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %83) #1
  store i8* null, i8** %dstdb, align 8
  %84 = load i8*, i8** %start_str, align 8
  call void @free(i8* %84) #1
  %arraydecay95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %85 = load i8*, i8** %end_str, align 8
  %86 = load i8*, i8** %end_str, align 8
  %call96 = call i64 @strlen(i8* %86) #6
  %call97 = call i32 @strncmp(i8* %arraydecay95, i8* %85, i64 %call96) #6
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %do.end
  %87 = load i8*, i8** %end_str, align 8
  call void @free(i8* %87) #1
  %88 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %88) #1
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call100 = call i32 @fclose(%struct._IO_FILE* %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call101 = call i32 @fclose(%struct._IO_FILE* %90)
  %91 = load i8*, i8** %tmpdb, align 8
  %call102 = call i32 @unlink(i8* %91) #1
  %92 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %92) #1
  %93 = load i32, i32* %lines, align 4
  %call103 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.66, i32 0, i32 0), i32 %93)
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %do.end
  %94 = load i8*, i8** %end_str, align 8
  call void @free(i8* %94) #1
  br label %while.cond

if.end.105:                                       ; preds = %while.body
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call107 = call i32 @fputs(i8* %arraydecay106, %struct._IO_FILE* %95)
  %cmp108 = icmp eq i32 %call107, -1
  br i1 %cmp108, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %if.end.105
  %96 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %96) #1
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call110 = call i32 @fclose(%struct._IO_FILE* %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call111 = call i32 @fclose(%struct._IO_FILE* %98)
  %99 = load i8*, i8** %tmpdb, align 8
  %call112 = call i32 @unlink(i8* %99) #1
  %100 = load i8*, i8** %tmpdb, align 8
  %call113 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i8* %100)
  %101 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %101) #1
  store i32 -1, i32* %retval
  br label %return

if.end.114:                                       ; preds = %if.end.105
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %src, align 8
  %call115 = call i32 @fclose(%struct._IO_FILE* %102)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call116 = call i32 @fclose(%struct._IO_FILE* %103)
  %104 = load i8*, i8** %dstdb, align 8
  %tobool117 = icmp ne i8* %104, null
  br i1 %tobool117, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %while.end
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %dst, align 8
  %call119 = call i32 @fclose(%struct._IO_FILE* %105)
  %106 = load i8*, i8** %start_str, align 8
  call void @free(i8* %106) #1
  %107 = load i8*, i8** %end_str, align 8
  call void @free(i8* %107) #1
  %108 = load i8*, i8** %tmpdb, align 8
  %call120 = call i32 @unlink(i8* %108) #1
  %109 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %109) #1
  %110 = load i8*, i8** %srcdb, align 8
  %111 = load i8*, i8** %dstdb, align 8
  %call121 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.68, i32 0, i32 0), i8* %110, i8* %111)
  %112 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %112) #1
  %113 = load i8*, i8** %dstdb, align 8
  call void @free(i8* %113) #1
  store i32 -1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %while.end
  %114 = load i8*, i8** %srcdb, align 8
  %call123 = call i32 @unlink(i8* %114) #1
  %cmp124 = icmp eq i32 %call123, -1
  br i1 %cmp124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %if.end.122
  %115 = load i8*, i8** %srcdb, align 8
  %call126 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.69, i32 0, i32 0), i8* %115)
  %116 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %116) #1
  %117 = load i8*, i8** %tmpdb, align 8
  %call127 = call i32 @unlink(i8* %117) #1
  %118 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %118) #1
  store i32 -1, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.122
  %119 = load i8*, i8** %tmpdb, align 8
  %120 = load i8*, i8** %srcdb, align 8
  %call129 = call i32 @rename(i8* %119, i8* %120) #1
  %cmp130 = icmp eq i32 %call129, -1
  br i1 %cmp130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.128
  %121 = load i8*, i8** %tmpdb, align 8
  %122 = load i8*, i8** %srcdb, align 8
  %call132 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i32 0, i32 0), i8* %121, i8* %122)
  %123 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %123) #1
  %124 = load i8*, i8** %tmpdb, align 8
  %call133 = call i32 @unlink(i8* %124) #1
  %125 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %125) #1
  store i32 -1, i32* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.128
  %126 = load i8*, i8** %srcdb, align 8
  call void @free(i8* %126) #1
  %127 = load i8*, i8** %tmpdb, align 8
  call void @free(i8* %127) #1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then.131, %if.then.125, %if.then.118, %if.then.109, %if.then.99, %if.then.81, %if.then.71, %if.then.58, %if.then.51, %if.then.45, %if.then.39, %if.then.34, %if.then.29, %if.then.24, %if.then.19, %if.then.14, %if.then.10, %if.then.4, %if.then
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal i32 @cdiff_cmd_unlink(i8* %cmdstr, %struct.cdiff_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdstr.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cdiff_ctx*, align 8
  %db = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %cmdstr, i8** %cmdstr.addr, align 8
  store %struct.cdiff_ctx* %ctx, %struct.cdiff_ctx** %ctx.addr, align 8
  %0 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %0, i32 0, i32 0
  %1 = load i8*, i8** %open_db, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cdiff_ctx*, %struct.cdiff_ctx** %ctx.addr, align 8
  %open_db1 = getelementptr inbounds %struct.cdiff_ctx, %struct.cdiff_ctx* %2, i32 0, i32 0
  %3 = load i8*, i8** %open_db1, align 8
  %call = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i32 0, i32 0), i8* %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %cmdstr.addr, align 8
  %call2 = call i8* @cdiff_token(i8* %4, i32 1, i32 1)
  store i8* %call2, i8** %db, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %5 = load i32, i32* %i, align 4
  %conv = zext i32 %5 to i64
  %6 = load i8*, i8** %db, align 8
  %call7 = call i64 @strlen(i8* %6) #6
  %cmp = icmp ult i64 %conv, %call7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %db, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 46
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %10 to i64
  %11 = load i8*, i8** %db, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %13 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %13, i64 %idxprom15
  %14 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %14 to i32
  %and = and i32 %conv18, 8
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %15 to i64
  %16 = load i8*, i8** %db, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 %idxprom20
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %17 to i32
  %call23 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 %conv22) #6
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call26 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.73, i32 0, i32 0))
  %18 = load i8*, i8** %db, align 8
  call void @free(i8* %18) #1
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %db, align 8
  %call28 = call i32 @unlink(i8* %20) #1
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %for.end
  %21 = load i8*, i8** %db, align 8
  %call32 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0), i8* %21)
  %22 = load i8*, i8** %db, align 8
  call void @free(i8* %22) #1
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  %23 = load i8*, i8** %db, align 8
  call void @free(i8* %23) #1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.31, %if.then.25, %if.then.4, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @cli_gentemp(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
