; ModuleID = './MultiSource.Applications.ClamAV/16.libclamav_blob.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"blobDestroy\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"blobArrayDestroy: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"blobSetFilename: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reopening closed blob\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Attempt to close a previously closed blob\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"blobClose: recovered all %lu bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"blobClose: recovered %lu bytes from %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Growing closed blob\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"fileblobDestructiveDestroy: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"fileblobDestructiveDestroy: Can't delete file %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"fileblobDestroy: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"fileblobDestroy: not saving empty file\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"fileblobDestroy: Can't delete empty file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"fileblobDestroy: %s not saved: report to http://bugs.clamav.net\0A\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"fileblobDestroy: file not saved (%lu bytes): report to http://bugs.clamav.net\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s/%.*sXXXXXX\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"fileblobSetFilename: mkstemp(%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%s/clamavtmpXXXXXXXXXXXXX\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"fileblobSetFilename: retry as mkstemp(%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Can't create temporary file %s: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%lu %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Creating %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Can't create file %s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"fileblobAddData: found %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"fileblobAddData: Can't write %lu bytes to temporary file %s: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"fileblobScan, fullname == NULL\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"fileblobScan, ctx == NULL\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"%s: dup failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"%s is infected\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%s is clean\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.blob* @blobCreate() #0 {
entry:
  %call = call i8* @cli_calloc(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.blob*
  ret %struct.blob* %0
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @blobDestroy(%struct.blob* %b) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name1 = getelementptr inbounds %struct.blob, %struct.blob* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data = getelementptr inbounds %struct.blob, %struct.blob* %4, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data4 = getelementptr inbounds %struct.blob, %struct.blob* %6, i32 0, i32 1
  %7 = load i8*, i8** %data4, align 8
  call void @free(i8* %7) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %9 = bitcast %struct.blob* %8 to i8*
  call void @free(i8* %9) #3
  ret void
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @blobArrayDestroy(%struct.blob** %blobList, i32 %n) #0 {
entry:
  %blobList.addr = alloca %struct.blob**, align 8
  %n.addr = alloca i32, align 4
  store %struct.blob** %blobList, %struct.blob*** %blobList.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 %1)
  %2 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.blob**, %struct.blob*** %blobList.addr, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %3, i64 %idxprom
  %4 = load %struct.blob*, %struct.blob** %arrayidx, align 8
  %tobool = icmp ne %struct.blob* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.blob**, %struct.blob*** %blobList.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.blob*, %struct.blob** %6, i64 %idxprom1
  %7 = load %struct.blob*, %struct.blob** %arrayidx2, align 8
  call void @blobDestroy(%struct.blob* %7)
  %8 = load i32, i32* %n.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.blob**, %struct.blob*** %blobList.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.blob*, %struct.blob** %9, i64 %idxprom3
  store %struct.blob* null, %struct.blob** %arrayidx4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @blobSetFilename(%struct.blob* %b, i8* %dir, i8* %filename) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  %dir.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %0)
  %1 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name = getelementptr inbounds %struct.blob, %struct.blob* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name1 = getelementptr inbounds %struct.blob, %struct.blob* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @cli_strdup(i8* %5)
  %6 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name2 = getelementptr inbounds %struct.blob, %struct.blob* %6, i32 0, i32 0
  store i8* %call, i8** %name2, align 8
  %7 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name3 = getelementptr inbounds %struct.blob, %struct.blob* %7, i32 0, i32 0
  %8 = load i8*, i8** %name3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name6 = getelementptr inbounds %struct.blob, %struct.blob* %9, i32 0, i32 0
  %10 = load i8*, i8** %name6, align 8
  call void @sanitiseName(i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @sanitiseName(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %name.addr, align 8
  store i8 95, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @blobAddData(%struct.blob* %b, i8* %data, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca %struct.blob*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed = getelementptr inbounds %struct.blob, %struct.blob* %1, i32 0, i32 4
  %2 = load i32, i32* %isClosed, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed2 = getelementptr inbounds %struct.blob, %struct.blob* %3, i32 0, i32 4
  store i32 0, i32* %isClosed2, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data4 = getelementptr inbounds %struct.blob, %struct.blob* %4, i32 0, i32 1
  %5 = load i8*, i8** %data4, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %6 = load i64, i64* %len.addr, align 8
  %mul = mul nsw i64 %6, 4
  %7 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size = getelementptr inbounds %struct.blob, %struct.blob* %7, i32 0, i32 3
  store i64 %mul, i64* %size, align 8
  %8 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size7 = getelementptr inbounds %struct.blob, %struct.blob* %8, i32 0, i32 3
  %9 = load i64, i64* %size7, align 8
  %call = call i8* @cli_malloc(i64 %9)
  %10 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data8 = getelementptr inbounds %struct.blob, %struct.blob* %10, i32 0, i32 1
  store i8* %call, i8** %data8, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.3
  %11 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size9 = getelementptr inbounds %struct.blob, %struct.blob* %11, i32 0, i32 3
  %12 = load i64, i64* %size9, align 8
  %13 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len10 = getelementptr inbounds %struct.blob, %struct.blob* %13, i32 0, i32 2
  %14 = load i64, i64* %len10, align 8
  %15 = load i64, i64* %len.addr, align 8
  %add = add nsw i64 %14, %15
  %cmp11 = icmp slt i64 %12, %add
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.else
  %16 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data13 = getelementptr inbounds %struct.blob, %struct.blob* %16, i32 0, i32 1
  %17 = load i8*, i8** %data13, align 8
  %18 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size14 = getelementptr inbounds %struct.blob, %struct.blob* %18, i32 0, i32 3
  %19 = load i64, i64* %size14, align 8
  %20 = load i64, i64* %len.addr, align 8
  %mul15 = mul i64 %20, 4
  %add16 = add i64 %19, %mul15
  %call17 = call i8* @cli_realloc(i8* %17, i64 %add16)
  store i8* %call17, i8** %p, align 8
  %21 = load i8*, i8** %p, align 8
  %cmp18 = icmp eq i8* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.12
  %22 = load i64, i64* %len.addr, align 8
  %mul21 = mul nsw i64 %22, 4
  %23 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size22 = getelementptr inbounds %struct.blob, %struct.blob* %23, i32 0, i32 3
  %24 = load i64, i64* %size22, align 8
  %add23 = add nsw i64 %24, %mul21
  store i64 %add23, i64* %size22, align 8
  %25 = load i8*, i8** %p, align 8
  %26 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data24 = getelementptr inbounds %struct.blob, %struct.blob* %26, i32 0, i32 1
  store i8* %25, i8** %data24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.20, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.6
  %27 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data27 = getelementptr inbounds %struct.blob, %struct.blob* %27, i32 0, i32 1
  %28 = load i8*, i8** %data27, align 8
  %tobool28 = icmp ne i8* %28, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.26
  %29 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len30 = getelementptr inbounds %struct.blob, %struct.blob* %29, i32 0, i32 2
  %30 = load i64, i64* %len30, align 8
  %31 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data31 = getelementptr inbounds %struct.blob, %struct.blob* %31, i32 0, i32 1
  %32 = load i8*, i8** %data31, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %30
  %33 = load i8*, i8** %data.addr, align 8
  %34 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %33, i64 %34, i32 1, i1 false)
  %35 = load i64, i64* %len.addr, align 8
  %36 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len32 = getelementptr inbounds %struct.blob, %struct.blob* %36, i32 0, i32 2
  %37 = load i64, i64* %len32, align 8
  %add33 = add nsw i64 %37, %35
  store i64 %add33, i64* %len32, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.19, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @cli_warnmsg(i8*, ...) #1

declare i8* @cli_malloc(i64) #1

declare i8* @cli_realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i8* @blobGetData(%struct.blob* %b) #0 {
entry:
  %retval = alloca i8*, align 8
  %b.addr = alloca %struct.blob*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data = getelementptr inbounds %struct.blob, %struct.blob* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i64 @blobGetDataSize(%struct.blob* %b) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @blobClose(%struct.blob* %b) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  %ptr = alloca i8*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 4
  %1 = load i32, i32* %isClosed, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size = getelementptr inbounds %struct.blob, %struct.blob* %2, i32 0, i32 3
  %3 = load i64, i64* %size, align 8
  %4 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len = getelementptr inbounds %struct.blob, %struct.blob* %4, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %3, %5
  %cmp = icmp sge i64 %sub, 64
  br i1 %cmp, label %if.then.1, label %if.end.21

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len2 = getelementptr inbounds %struct.blob, %struct.blob* %6, i32 0, i32 2
  %7 = load i64, i64* %len2, align 8
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.1
  %8 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data = getelementptr inbounds %struct.blob, %struct.blob* %8, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  call void @free(i8* %9) #3
  %10 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data5 = getelementptr inbounds %struct.blob, %struct.blob* %10, i32 0, i32 1
  store i8* null, i8** %data5, align 8
  %11 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size6 = getelementptr inbounds %struct.blob, %struct.blob* %11, i32 0, i32 3
  %12 = load i64, i64* %size6, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i64 %12)
  %13 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size7 = getelementptr inbounds %struct.blob, %struct.blob* %13, i32 0, i32 3
  store i64 0, i64* %size7, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.1
  %14 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data8 = getelementptr inbounds %struct.blob, %struct.blob* %14, i32 0, i32 1
  %15 = load i8*, i8** %data8, align 8
  %16 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len9 = getelementptr inbounds %struct.blob, %struct.blob* %16, i32 0, i32 2
  %17 = load i64, i64* %len9, align 8
  %call = call i8* @cli_realloc(i8* %15, i64 %17)
  store i8* %call, i8** %ptr, align 8
  %18 = load i8*, i8** %ptr, align 8
  %cmp10 = icmp eq i8* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  br label %return

if.end.12:                                        ; preds = %if.else
  %19 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size13 = getelementptr inbounds %struct.blob, %struct.blob* %19, i32 0, i32 3
  %20 = load i64, i64* %size13, align 8
  %21 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len14 = getelementptr inbounds %struct.blob, %struct.blob* %21, i32 0, i32 2
  %22 = load i64, i64* %len14, align 8
  %sub15 = sub nsw i64 %20, %22
  %23 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size16 = getelementptr inbounds %struct.blob, %struct.blob* %23, i32 0, i32 3
  %24 = load i64, i64* %size16, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i64 %sub15, i64 %24)
  %25 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %len17 = getelementptr inbounds %struct.blob, %struct.blob* %25, i32 0, i32 2
  %26 = load i64, i64* %len17, align 8
  %27 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size18 = getelementptr inbounds %struct.blob, %struct.blob* %27, i32 0, i32 3
  store i64 %26, i64* %size18, align 8
  %28 = load i8*, i8** %ptr, align 8
  %29 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data19 = getelementptr inbounds %struct.blob, %struct.blob* %29, i32 0, i32 1
  store i8* %28, i8** %data19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.12, %if.then.4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %30 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed22 = getelementptr inbounds %struct.blob, %struct.blob* %30, i32 0, i32 4
  store i32 1, i32* %isClosed22, align 4
  br label %return

return:                                           ; preds = %if.end.21, %if.then.11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @blobcmp(%struct.blob* %b1, %struct.blob* %b2) #0 {
entry:
  %retval = alloca i32, align 4
  %b1.addr = alloca %struct.blob*, align 8
  %b2.addr = alloca %struct.blob*, align 8
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  store %struct.blob* %b1, %struct.blob** %b1.addr, align 8
  store %struct.blob* %b2, %struct.blob** %b2.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b1.addr, align 8
  %1 = load %struct.blob*, %struct.blob** %b2.addr, align 8
  %cmp = icmp eq %struct.blob* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.blob*, %struct.blob** %b1.addr, align 8
  %call = call i64 @blobGetDataSize(%struct.blob* %2)
  store i64 %call, i64* %s1, align 8
  %3 = load %struct.blob*, %struct.blob** %b2.addr, align 8
  %call1 = call i64 @blobGetDataSize(%struct.blob* %3)
  store i64 %call1, i64* %s2, align 8
  %4 = load i64, i64* %s1, align 8
  %5 = load i64, i64* %s2, align 8
  %cmp2 = icmp ne i64 %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %s1, align 8
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end.4
  %7 = load i64, i64* %s2, align 8
  %cmp6 = icmp eq i64 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end.4
  %8 = load %struct.blob*, %struct.blob** %b1.addr, align 8
  %call9 = call i8* @blobGetData(%struct.blob* %8)
  %9 = load %struct.blob*, %struct.blob** %b2.addr, align 8
  %call10 = call i8* @blobGetData(%struct.blob* %9)
  %10 = load i64, i64* %s1, align 8
  %call11 = call i32 @memcmp(i8* %call9, i8* %call10, i64 %10) #6
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @blobGrow(%struct.blob* %b, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca %struct.blob*, align 8
  %len.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed = getelementptr inbounds %struct.blob, %struct.blob* %1, i32 0, i32 4
  %2 = load i32, i32* %isClosed, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  %3 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %isClosed2 = getelementptr inbounds %struct.blob, %struct.blob* %3, i32 0, i32 4
  store i32 0, i32* %isClosed2, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data = getelementptr inbounds %struct.blob, %struct.blob* %4, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %cmp4 = icmp eq i8* %5, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %6 = load i64, i64* %len.addr, align 8
  %call = call i8* @cli_malloc(i64 %6)
  %7 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data6 = getelementptr inbounds %struct.blob, %struct.blob* %7, i32 0, i32 1
  store i8* %call, i8** %data6, align 8
  %8 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data7 = getelementptr inbounds %struct.blob, %struct.blob* %8, i32 0, i32 1
  %9 = load i8*, i8** %data7, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %10 = load i64, i64* %len.addr, align 8
  %11 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size = getelementptr inbounds %struct.blob, %struct.blob* %11, i32 0, i32 3
  store i64 %10, i64* %size, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.20

if.else:                                          ; preds = %if.end.3
  %12 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data11 = getelementptr inbounds %struct.blob, %struct.blob* %12, i32 0, i32 1
  %13 = load i8*, i8** %data11, align 8
  %14 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size12 = getelementptr inbounds %struct.blob, %struct.blob* %14, i32 0, i32 3
  %15 = load i64, i64* %size12, align 8
  %16 = load i64, i64* %len.addr, align 8
  %add = add i64 %15, %16
  %call13 = call i8* @cli_realloc(i8* %13, i64 %add)
  store i8* %call13, i8** %ptr, align 8
  %17 = load i8*, i8** %ptr, align 8
  %tobool14 = icmp ne i8* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.else
  %18 = load i64, i64* %len.addr, align 8
  %19 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size16 = getelementptr inbounds %struct.blob, %struct.blob* %19, i32 0, i32 3
  %20 = load i64, i64* %size16, align 8
  %add17 = add nsw i64 %20, %18
  store i64 %add17, i64* %size16, align 8
  %21 = load i8*, i8** %ptr, align 8
  %22 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data18 = getelementptr inbounds %struct.blob, %struct.blob* %22, i32 0, i32 1
  store i8* %21, i8** %data18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.10
  %23 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %data21 = getelementptr inbounds %struct.blob, %struct.blob* %23, i32 0, i32 1
  %24 = load i8*, i8** %data21, align 8
  %tobool22 = icmp ne i8* %24, null
  %cond = select i1 %tobool22, i32 0, i32 -114
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %struct.fileblob* @fileblobCreate() #0 {
entry:
  %call = call i8* @cli_calloc(i64 1, i64 80)
  %0 = bitcast i8* %call to %struct.fileblob*
  ret %struct.fileblob* %0
}

; Function Attrs: nounwind uwtable
define i32 @fileblobScanAndDestroy(%struct.fileblob* %fb) #0 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca %struct.fileblob*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  call void @fileblobDestroy(%struct.fileblob* %1)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %call = call i32 @fileblobScan(%struct.fileblob* %2)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  call void @fileblobDestructiveDestroy(%struct.fileblob* %3)
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  call void @fileblobDestructiveDestroy(%struct.fileblob* %4)
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %5 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  call void @fileblobDestroy(%struct.fileblob* %5)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @fileblobDestroy(%struct.fileblob* %fb) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 1
  %name = getelementptr inbounds %struct.blob, %struct.blob* %b, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp = getelementptr inbounds %struct.fileblob, %struct.fileblob* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp2 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname = getelementptr inbounds %struct.fileblob, %struct.fileblob* %6, i32 0, i32 2
  %7 = load i8*, i8** %fullname, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname5 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %8, i32 0, i32 2
  %9 = load i8*, i8** %fullname5, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* %9)
  %10 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isNotEmpty = getelementptr inbounds %struct.fileblob, %struct.fileblob* %10, i32 0, i32 3
  %bf.load = load i8, i8* %isNotEmpty, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  %11 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname8 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %11, i32 0, i32 2
  %12 = load i8*, i8** %fullname8, align 8
  %call9 = call i32 @unlink(i8* %12) #3
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.7
  %13 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname11 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %13, i32 0, i32 2
  %14 = load i8*, i8** %fullname11, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %15 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b14 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %15, i32 0, i32 1
  %name15 = getelementptr inbounds %struct.blob, %struct.blob* %b14, i32 0, i32 0
  %16 = load i8*, i8** %name15, align 8
  call void @free(i8* %16) #3
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b16 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %17, i32 0, i32 1
  %data = getelementptr inbounds %struct.blob, %struct.blob* %b16, i32 0, i32 1
  %18 = load i8*, i8** %data, align 8
  %tobool17 = icmp ne i8* %18, null
  br i1 %tobool17, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %if.else
  %19 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b19 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %19, i32 0, i32 1
  %data20 = getelementptr inbounds %struct.blob, %struct.blob* %b19, i32 0, i32 1
  %20 = load i8*, i8** %data20, align 8
  call void @free(i8* %20) #3
  %21 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b21 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %21, i32 0, i32 1
  %name22 = getelementptr inbounds %struct.blob, %struct.blob* %b21, i32 0, i32 0
  %22 = load i8*, i8** %name22, align 8
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %if.then.18
  %23 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname25 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %23, i32 0, i32 2
  %24 = load i8*, i8** %fullname25, align 8
  %tobool26 = icmp ne i8* %24, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %25 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname27 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %25, i32 0, i32 2
  %26 = load i8*, i8** %fullname27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  %27 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b28 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %27, i32 0, i32 1
  %name29 = getelementptr inbounds %struct.blob, %struct.blob* %b28, i32 0, i32 0
  %28 = load i8*, i8** %name29, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ %28, %cond.false ]
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i8* %cond)
  %29 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b30 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %29, i32 0, i32 1
  %name31 = getelementptr inbounds %struct.blob, %struct.blob* %b30, i32 0, i32 0
  %30 = load i8*, i8** %name31, align 8
  call void @free(i8* %30) #3
  br label %if.end.34

if.else.32:                                       ; preds = %if.then.18
  %31 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b33 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %31, i32 0, i32 1
  %len = getelementptr inbounds %struct.blob, %struct.blob* %b33, i32 0, i32 2
  %32 = load i64, i64* %len, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i32 0, i32 0), i64 %32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %cond.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.13
  %33 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname37 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %33, i32 0, i32 2
  %34 = load i8*, i8** %fullname37, align 8
  %tobool38 = icmp ne i8* %34, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %35 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname40 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %35, i32 0, i32 2
  %36 = load i8*, i8** %fullname40, align 8
  call void @free(i8* %36) #3
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %37 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %38 = bitcast %struct.fileblob* %37 to i8*
  call void @free(i8* %38) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fileblobScan(%struct.fileblob* %fb) #0 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca %struct.fileblob*, align 8
  %rc = alloca i32, align 4
  %fd = alloca i32, align 4
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isInfected = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 3
  %bf.load = load i8, i8* %isInfected, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname = getelementptr inbounds %struct.fileblob, %struct.fileblob* %1, i32 0, i32 2
  %2 = load i8*, i8** %fullname, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %ctx = getelementptr inbounds %struct.fileblob, %struct.fileblob* %3, i32 0, i32 5
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %cmp3 = icmp eq %struct.cli_ctx* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %5 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp = getelementptr inbounds %struct.fileblob, %struct.fileblob* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %6)
  %7 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp6 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp6, align 8
  %call7 = call i32 @fileno(%struct._IO_FILE* %8) #3
  %call8 = call i32 @dup(i32 %call7) #3
  store i32 %call8, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp9 = icmp eq i32 %9, -1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.5
  %10 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname11 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %10, i32 0, i32 2
  %11 = load i8*, i8** %fullname11, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* %11)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %12 = load i32, i32* %fd, align 4
  %13 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %ctx13 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %13, i32 0, i32 5
  %14 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx13, align 8
  %call14 = call i32 @cli_magic_scandesc(i32 %12, %struct.cli_ctx* %14)
  store i32 %call14, i32* %rc, align 4
  %15 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %15)
  %16 = load i32, i32* %rc, align 4
  %cmp16 = icmp eq i32 %16, 1
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.12
  %17 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname18 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %17, i32 0, i32 2
  %18 = load i8*, i8** %fullname18, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* %18)
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %19 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname20 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %19, i32 0, i32 2
  %20 = load i8*, i8** %fullname20, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %20)
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.10, %if.then.4, %if.then.1, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @fileblobDestructiveDestroy(%struct.fileblob* %fb) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname = getelementptr inbounds %struct.fileblob, %struct.fileblob* %2, i32 0, i32 2
  %3 = load i8*, i8** %fullname, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp2 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname3 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %6, i32 0, i32 2
  %7 = load i8*, i8** %fullname3, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* %7)
  %8 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname4 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %8, i32 0, i32 2
  %9 = load i8*, i8** %fullname4, align 8
  %call5 = call i32 @unlink(i8* %9) #3
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname7 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %10, i32 0, i32 2
  %11 = load i8*, i8** %fullname7, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %12 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname8 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %12, i32 0, i32 2
  %13 = load i8*, i8** %fullname8, align 8
  call void @free(i8* %13) #3
  %14 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp9 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %14, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp9, align 8
  %15 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname10 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %15, i32 0, i32 2
  store i8* null, i8** %fullname10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %land.lhs.true, %entry
  %16 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b = getelementptr inbounds %struct.fileblob, %struct.fileblob* %16, i32 0, i32 1
  %name = getelementptr inbounds %struct.blob, %struct.blob* %b, i32 0, i32 0
  %17 = load i8*, i8** %name, align 8
  %tobool12 = icmp ne i8* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b14 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %18, i32 0, i32 1
  %name15 = getelementptr inbounds %struct.blob, %struct.blob* %b14, i32 0, i32 0
  %19 = load i8*, i8** %name15, align 8
  call void @free(i8* %19) #3
  %20 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b16 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %20, i32 0, i32 1
  %name17 = getelementptr inbounds %struct.blob, %struct.blob* %b16, i32 0, i32 0
  store i8* null, i8** %name17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end.11
  %21 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  call void @fileblobDestroy(%struct.fileblob* %21)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @fileblobSetFilename(%struct.fileblob* %fb, i8* %dir, i8* %filename) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  %dir.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %fullname = alloca [257 x i8], align 16
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 1
  %name = getelementptr inbounds %struct.blob, %struct.blob* %b, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b1 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %2, i32 0, i32 1
  %3 = load i8*, i8** %dir.addr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  call void @blobSetFilename(%struct.blob* %b1, i8* %3, i8* %4)
  %5 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b2 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %5, i32 0, i32 1
  %call = call i8* @blobGetFilename(%struct.blob* %b2)
  store i8* %call, i8** %filename.addr, align 8
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %6 = load i8*, i8** %dir.addr, align 8
  %7 = load i8*, i8** %dir.addr, align 8
  %call3 = call i64 @strlen(i8* %7) #6
  %sub = sub i64 248, %call3
  %conv = trunc i64 %sub to i32
  %8 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* %6, i32 %conv, i8* %8) #3
  %arraydecay5 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call7 = call i32 @mkstemp(i8* %arraydecay6)
  store i32 %call7, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %call9 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call9, align 4
  %cmp10 = icmp eq i32 %10, 22
  br i1 %cmp10, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true
  %arraydecay13 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %11 = load i8*, i8** %dir.addr, align 8
  %call14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay13, i64 257, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* %11) #3
  %arraydecay15 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call17 = call i32 @mkstemp(i8* %arraydecay16)
  store i32 %call17, i32* %fd, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %12 = load i32, i32* %fd, align 4
  %cmp19 = icmp slt i32 %12, 0
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  %arraydecay22 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call23 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call23, align 4
  %call24 = call i8* @strerror(i32 %13) #3
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay22, i8* %call24)
  %arraydecay25 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call26 = call i64 @strlen(i8* %arraydecay25) #6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 257, i64 %call26)
  br label %return

if.end.27:                                        ; preds = %if.end.18
  %arraydecay28 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* %arraydecay28)
  %14 = load i32, i32* %fd, align 4
  %call29 = call %struct._IO_FILE* @fdopen(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #3
  %15 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp = getelementptr inbounds %struct.fileblob, %struct.fileblob* %15, i32 0, i32 0
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %fp, align 8
  %16 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp30 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %16, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp30, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp31, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.end.27
  %arraydecay34 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call35 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call35, align 4
  %call36 = call i8* @strerror(i32 %18) #3
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay34, i8* %call36)
  %arraydecay37 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 257, i64 %call38)
  %19 = load i32, i32* %fd, align 4
  %call39 = call i32 @close(i32 %19)
  br label %return

if.end.40:                                        ; preds = %if.end.27
  %20 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b41 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %20, i32 0, i32 1
  %data = getelementptr inbounds %struct.blob, %struct.blob* %b41, i32 0, i32 1
  %21 = load i8*, i8** %data, align 8
  %tobool42 = icmp ne i8* %21, null
  br i1 %tobool42, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %if.end.40
  %22 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %23 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b44 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %23, i32 0, i32 1
  %data45 = getelementptr inbounds %struct.blob, %struct.blob* %b44, i32 0, i32 1
  %24 = load i8*, i8** %data45, align 8
  %25 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b46 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %25, i32 0, i32 1
  %len = getelementptr inbounds %struct.blob, %struct.blob* %b46, i32 0, i32 2
  %26 = load i64, i64* %len, align 8
  %call47 = call i32 @fileblobAddData(%struct.fileblob* %22, i8* %24, i64 %26)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.then.43
  %27 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b51 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %27, i32 0, i32 1
  %data52 = getelementptr inbounds %struct.blob, %struct.blob* %b51, i32 0, i32 1
  %28 = load i8*, i8** %data52, align 8
  call void @free(i8* %28) #3
  %29 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b53 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %29, i32 0, i32 1
  %data54 = getelementptr inbounds %struct.blob, %struct.blob* %b53, i32 0, i32 1
  store i8* null, i8** %data54, align 8
  %30 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b55 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %30, i32 0, i32 1
  %size = getelementptr inbounds %struct.blob, %struct.blob* %b55, i32 0, i32 3
  store i64 0, i64* %size, align 8
  %31 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b56 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %31, i32 0, i32 1
  %len57 = getelementptr inbounds %struct.blob, %struct.blob* %b56, i32 0, i32 2
  store i64 0, i64* %len57, align 8
  %32 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isNotEmpty = getelementptr inbounds %struct.fileblob, %struct.fileblob* %32, i32 0, i32 3
  %bf.load = load i8, i8* %isNotEmpty, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %isNotEmpty, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %if.then.43
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.40
  %arraydecay60 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call61 = call i8* @cli_strdup(i8* %arraydecay60)
  %33 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fullname62 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %33, i32 0, i32 2
  store i8* %call61, i8** %fullname62, align 8
  br label %return

return:                                           ; preds = %if.end.59, %if.then.33, %if.then.21, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @blobGetFilename(%struct.blob* %b) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %name = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @mkstemp(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define i32 @fileblobAddData(%struct.fileblob* %fb, i8* %data, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca %struct.fileblob*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx = alloca %struct.cli_ctx*, align 8
  %do_scan = alloca i32, align 4
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp = getelementptr inbounds %struct.fileblob, %struct.fileblob* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.49

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %ctx2 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %3, i32 0, i32 5
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx2, align 8
  store %struct.cli_ctx* %4, %struct.cli_ctx** %ctx, align 8
  %5 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isInfected = getelementptr inbounds %struct.fileblob, %struct.fileblob* %5, i32 0, i32 3
  %bf.load = load i8, i8* %isInfected, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool3 = icmp ne i32 %bf.cast, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %tobool6 = icmp ne %struct.cli_ctx* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.37

if.then.7:                                        ; preds = %if.end.5
  store i32 1, i32* %do_scan, align 4
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 4
  %8 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool8 = icmp ne %struct.cl_limits* %8, null
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.then.7
  %9 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %bytes_scanned = getelementptr inbounds %struct.fileblob, %struct.fileblob* %9, i32 0, i32 4
  %10 = load i64, i64* %bytes_scanned, align 8
  %11 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %limits10 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %11, i32 0, i32 4
  %12 = load %struct.cl_limits*, %struct.cl_limits** %limits10, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %12, i32 0, i32 5
  %13 = load i64, i64* %maxfilesize, align 8
  %cmp11 = icmp uge i64 %10, %13
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i32 0, i32* %do_scan, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %14 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %bytes_scanned15 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %14, i32 0, i32 4
  %15 = load i64, i64* %bytes_scanned15, align 8
  %cmp16 = icmp ugt i64 %15, 20480
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 0, i32* %do_scan, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %16 = load i32, i32* %do_scan, align 4
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.then.20, label %if.end.36

if.then.20:                                       ; preds = %if.end.18
  %17 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %scanned = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %17, i32 0, i32 1
  %18 = load i64*, i64** %scanned, align 8
  %tobool21 = icmp ne i64* %18, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.20
  %19 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %19, 4096
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %scanned23 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 1
  %21 = load i64*, i64** %scanned23, align 8
  %22 = load i64, i64* %21, align 8
  %add = add i64 %22, %div
  store i64 %add, i64* %21, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  %23 = load i64, i64* %len.addr, align 8
  %24 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %bytes_scanned25 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %24, i32 0, i32 4
  %25 = load i64, i64* %bytes_scanned25, align 8
  %add26 = add i64 %25, %23
  store i64 %add26, i64* %bytes_scanned25, align 8
  %26 = load i64, i64* %len.addr, align 8
  %cmp27 = icmp ugt i64 %26, 5
  br i1 %cmp27, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.24
  %27 = load i8*, i8** %data.addr, align 8
  %28 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %28 to i32
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 0
  %30 = load i8**, i8*** %virname, align 8
  %31 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %31, i32 0, i32 3
  %32 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %call = call i32 @cli_scanbuff(i8* %27, i32 %conv, i8** %30, %struct.cl_engine* %32, i32 501)
  %cmp28 = icmp eq i32 %call, 1
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %land.lhs.true
  %33 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %virname31 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %33, i32 0, i32 0
  %34 = load i8**, i8*** %virname31, align 8
  %35 = load i8*, i8** %34, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* %35)
  %36 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isInfected32 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %36, i32 0, i32 3
  %bf.load33 = load i8, i8* %isInfected32, align 8
  %bf.clear34 = and i8 %bf.load33, -3
  %bf.set = or i8 %bf.clear34, 2
  store i8 %bf.set, i8* %isInfected32, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %land.lhs.true, %if.end.24
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.18
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.5
  %37 = load i8*, i8** %data.addr, align 8
  %38 = load i64, i64* %len.addr, align 8
  %39 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %fp38 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp38, align 8
  %call39 = call i64 @fwrite(i8* %37, i64 %38, i64 1, %struct._IO_FILE* %40)
  %cmp40 = icmp ne i64 %call39, 1
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.37
  %41 = load i64, i64* %len.addr, align 8
  %42 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b = getelementptr inbounds %struct.fileblob, %struct.fileblob* %42, i32 0, i32 1
  %name = getelementptr inbounds %struct.blob, %struct.blob* %b, i32 0, i32 0
  %43 = load i8*, i8** %name, align 8
  %call43 = call i32* @__errno_location() #7
  %44 = load i32, i32* %call43, align 4
  %call44 = call i8* @strerror(i32 %44) #3
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i32 0, i32 0), i64 %41, i8* %43, i8* %call44)
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.37
  %45 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isNotEmpty = getelementptr inbounds %struct.fileblob, %struct.fileblob* %45, i32 0, i32 3
  %bf.load46 = load i8, i8* %isNotEmpty, align 8
  %bf.clear47 = and i8 %bf.load46, -2
  %bf.set48 = or i8 %bf.clear47, 1
  store i8 %bf.set48, i8* %isNotEmpty, align 8
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end
  %46 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b50 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %46, i32 0, i32 1
  %47 = load i8*, i8** %data.addr, align 8
  %48 = load i64, i64* %len.addr, align 8
  %call51 = call i32 @blobAddData(%struct.blob* %b50, i8* %47, i64 %48)
  store i32 %call51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.end.45, %if.then.42, %if.then.4, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @cli_scanbuff(i8*, i32, i8**, %struct.cl_engine*, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @fileblobGetFilename(%struct.fileblob* %fb) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %b = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 1
  %call = call i8* @blobGetFilename(%struct.blob* %b)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @fileblobSetCTX(%struct.fileblob* %fb, %struct.cli_ctx* %ctx) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %1 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %ctx1 = getelementptr inbounds %struct.fileblob, %struct.fileblob* %1, i32 0, i32 5
  store %struct.cli_ctx* %0, %struct.cli_ctx** %ctx1, align 8
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @dup(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @cli_magic_scandesc(i32, %struct.cli_ctx*) #1

; Function Attrs: nounwind uwtable
define i32 @fileblobInfected(%struct.fileblob* %fb) #0 {
entry:
  %fb.addr = alloca %struct.fileblob*, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %isInfected = getelementptr inbounds %struct.fileblob, %struct.fileblob* %0, i32 0, i32 3
  %bf.load = load i8, i8* %isInfected, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
