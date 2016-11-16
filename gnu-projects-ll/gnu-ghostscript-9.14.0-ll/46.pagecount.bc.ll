; ModuleID = './pagecount.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.flock = type { i16, i16, i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"?-E Pagecount module: Cannot open page count file `%s': %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"?-E Pagecount module: fseek() failed on `%s': %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"?-E Pagecount module: Error opening page count file `%s' a second time: %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"?-E Pagecount module: Error writing to `%s': %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"?-E Pagecount module: Error closing `%s' after writing: %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"?-W Pagecount module: Error closing `%s': %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"?-E Pagecount module: Cannot obtain file descriptor (%s).\0A\00", align 1
@.str.11 = private unnamed_addr constant [85 x i8] c"?-E Pagecount module: Cannot obtain lock on page count file `%s' after %d attempts.\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"?-E Pagecount module: Strange contents in page count file `%s'.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pcf_getcount(i8* %filename, i64* %count) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %count.addr = alloca i64*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i64* %count, i64** %count.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call i32 @access(i8* %4, i32 0) #5
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load i64*, i64** %count.addr, align 8, !tbaa !1
  store i64 0, i64* %5, align 8, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call7 = call %struct._IO_FILE* @fopen64(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call11 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call11, align 4, !tbaa !8
  %call12 = call i8* @strerror(i32 %9) #5
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* %8, i8* %call12) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.6
  %10 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call15 = call i32 @lock_file(i8* %10, %struct._IO_FILE* %11, i32 0) #6
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call19 = call i32 @fclose(%struct._IO_FILE* %12) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %13 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %15 = load i64*, i64** %count.addr, align 8, !tbaa !1
  %call21 = call i32 @read_count(i8* %13, %struct._IO_FILE* %14, i64* %15) #6
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call25 = call i32 @fclose(%struct._IO_FILE* %16) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.20
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call27 = call i32 @fclose(%struct._IO_FILE* %17) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.18, %if.then.10, %if.then.5, %if.then
  %18 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal i32 @lock_file(i8* %filename, %struct._IO_FILE* %f, i32 %lock_type) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %lock_type.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %rc = alloca i32, align 4
  %tries = alloca i32, align 4
  %cmd = alloca %struct.flock, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i32 %lock_type, i32* %lock_type.addr, align 4, !tbaa !8
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.flock* %cmd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fileno(%struct._IO_FILE* %4) #5
  store i32 %call, i32* %fd, align 4, !tbaa !8
  %5 = load i32, i32* %fd, align 4, !tbaa !8
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call1, align 4, !tbaa !8
  %call2 = call i8* @strerror(i32 %7) #5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i32 0, i32 0), i8* %call2) #6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call4 = call i32 @fclose(%struct._IO_FILE* %8) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %lock_type.addr, align 4, !tbaa !8
  %conv = trunc i32 %9 to i16
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %cmd, i32 0, i32 0
  store i16 %conv, i16* %l_type, align 2, !tbaa !10
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %cmd, i32 0, i32 1
  store i16 0, i16* %l_whence, align 2, !tbaa !13
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %cmd, i32 0, i32 2
  store i64 0, i64* %l_start, align 8, !tbaa !14
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %cmd, i32 0, i32 3
  store i64 0, i64* %l_len, align 8, !tbaa !15
  store i32 1, i32* %tries, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, i32* %fd, align 4, !tbaa !8
  %call5 = call i32 (i32, i32, ...) @fcntl(i32 %10, i32 6, %struct.flock* %cmd) #6
  store i32 %call5, i32* %rc, align 4, !tbaa !8
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %tries, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %11, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %tries, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %tries, align 4, !tbaa !8
  %call10 = call i32 @sleep(i32 1) #6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %rc, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %14, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %while.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %16 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %17 = load i32, i32* %tries, align 4, !tbaa !8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.11, i32 0, i32 0), i8* %16, i32 %17) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then
  %18 = bitcast %struct.flock* %cmd to i8*
  call void @llvm.lifetime.end(i64 32, i8* %18) #1
  %19 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_count(i8* %filename, %struct._IO_FILE* %f, i64* %count) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %count.addr = alloca i64*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i64* %count, i64** %count.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %count.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64* %1) #6
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @feof(%struct._IO_FILE* %2) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i32 @ferror(%struct._IO_FILE* %3) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %4 = load i64*, i64** %count.addr, align 8, !tbaa !1
  store i64 0, i64* %4, align 8, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* %6) #6
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.else
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pcf_inccount(i8* %filename, i64 %by) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %by.addr = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %rc = alloca i32, align 4
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %f1 = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i64 %by, i64* %by.addr, align 8, !tbaa !6
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen64(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call6 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call6, align 4, !tbaa !8
  %call7 = call i8* @strerror(i32 %9) #5
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* %8, i8* %call7) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %10 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call10 = call i32 @lock_file(i8* %10, %struct._IO_FILE* %11, i32 1) #6
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call14 = call i32 @fclose(%struct._IO_FILE* %12) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call16 = call i32 @fseek(%struct._IO_FILE* %13, i64 0, i32 0) #6
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %15 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call20 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call20, align 4, !tbaa !8
  %call21 = call i8* @strerror(i32 %16) #5
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0), i8* %15, i8* %call21) #6
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call23 = call i32 @fclose(%struct._IO_FILE* %17) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.15
  %18 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call25 = call i32 @read_count(i8* %18, %struct._IO_FILE* %19, i64* %count) #6
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call29 = call i32 @fclose(%struct._IO_FILE* %20) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.24
  store i32 0, i32* %rc, align 4, !tbaa !8
  %21 = bitcast %struct._IO_FILE** %f1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call31 = call %struct._IO_FILE* @fopen64(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call31, %struct._IO_FILE** %f1, align 8, !tbaa !1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8, !tbaa !1
  %cmp32 = icmp eq %struct._IO_FILE* %23, null
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.30
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %25 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call35 = call i32* @__errno_location() #7
  %26 = load i32, i32* %call35, align 4, !tbaa !8
  %call36 = call i8* @strerror(i32 %26) #5
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i32 0, i32 0), i8* %25, i8* %call36) #6
  store i32 1, i32* %rc, align 4, !tbaa !8
  br label %if.end.54

if.else:                                          ; preds = %if.end.30
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8, !tbaa !1
  %28 = load i64, i64* %count, align 8, !tbaa !6
  %29 = load i64, i64* %by.addr, align 8, !tbaa !6
  %add = add i64 %28, %29
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %add) #6
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.else
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %31 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call42 = call i32* @__errno_location() #7
  %32 = load i32, i32* %call42, align 4, !tbaa !8
  %call43 = call i8* @strerror(i32 %32) #5
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i8* %31, i8* %call43) #6
  store i32 -1, i32* %rc, align 4, !tbaa !8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.else
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8, !tbaa !1
  %call46 = call i32 @fclose(%struct._IO_FILE* %33) #6
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.45
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %35 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call50 = call i32* @__errno_location() #7
  %36 = load i32, i32* %call50, align 4, !tbaa !8
  %call51 = call i8* @strerror(i32 %36) #5
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0), i8* %35, i8* %call51) #6
  store i32 -1, i32* %rc, align 4, !tbaa !8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.34
  %37 = bitcast %struct._IO_FILE** %f1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call55 = call i32 @fclose(%struct._IO_FILE* %38) #6
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.54
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %40 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call59 = call i32* @__errno_location() #7
  %41 = load i32, i32* %call59, align 4, !tbaa !8
  %call60 = call i8* @strerror(i32 %41) #5
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* %40, i8* %call60) #6
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.54
  %42 = load i32, i32* %rc, align 4, !tbaa !8
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.28, %if.then.19, %if.then.13, %if.then.5, %if.then
  %43 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @fcntl(i32, i32, ...) #3

declare i32 @sleep(i32) #3

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"flock", !12, i64 0, !12, i64 2, !7, i64 8, !7, i64 16, !9, i64 24}
!12 = !{!"short", !3, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!11, !7, i64 8}
!15 = !{!11, !7, i64 16}
