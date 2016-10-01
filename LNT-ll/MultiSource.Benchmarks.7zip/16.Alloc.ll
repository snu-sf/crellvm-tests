; ModuleID = './MultiSource.Benchmarks.7zip/16.Alloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@g_LargePageSize = global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"HUGETLB_PATH\00", align 1
@g_HugetlbPath = internal global i8* null, align 8
@largePageMinimum.dir_hugetlbfs = internal global [1024 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hugetlbfs\00", align 1
@VirtualAlloc.mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@g_HugePageAddr = internal global [64 x i8*] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"/7z-XXXXXX\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"cant't open %s (%s)\0A\00", align 1
@g_HugePageLen = internal global [64 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8* @MyAlloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %1) #4
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @MyFree(i8* %address) #0 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %address.addr, align 8
  call void @free(i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @MidAlloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @VirtualAlloc(i64 %1, i32 0)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @VirtualAlloc(i64 %size, i32 %memLargePages) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %memLargePages.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %address = alloca i8*, align 8
  %fd = alloca i32, align 4
  %pathlen = alloca i32, align 4
  %saved_stack = alloca i8*
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8
  store i32 %memLargePages, i32* %memLargePages.addr, align 4
  %0 = load i32, i32* %memLargePages.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  store i8* null, i8** %address, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @VirtualAlloc.mutex) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* @g_HugePageAddr, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.23

if.then.2:                                        ; preds = %for.body
  %4 = load i8*, i8** @g_HugetlbPath, align 8
  %call3 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %pathlen, align 4
  %5 = load i32, i32* %pathlen, align 4
  %add = add nsw i32 %5, 12
  %6 = zext i32 %add to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %saved_stack
  %vla = alloca i8, i64 %6, align 16
  %8 = load i8*, i8** @g_HugetlbPath, align 8
  %9 = load i32, i32* %pathlen, align 4
  %conv4 = sext i32 %9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %vla, i8* %8, i64 %conv4, i32 1, i1 false)
  %10 = load i32, i32* %pathlen, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %vla, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 11, i32 1, i1 false)
  %call5 = call i32 @mkstemp64(i8* %vla)
  store i32 %call5, i32* %fd, align 4
  %call6 = call i32 @unlink(i8* %vla) #4
  %11 = load i32, i32* %fd, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call10, align 4
  %call11 = call i8* @strerror(i32 %13) #4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %vla, i8* %call11)
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  %14 = load i64, i64* %size.addr, align 8
  %15 = load i32, i32* %fd, align 4
  %call13 = call i8* @mmap64(i8* null, i64 %14, i32 3, i32 1, i32 %15, i64 0) #4
  store i8* %call13, i8** %address, align 8
  %16 = load i32, i32* %fd, align 4
  %call14 = call i32 @close(i32 %16)
  %17 = load i8*, i8** %address, align 8
  %cmp15 = icmp eq i8* %17, inttoptr (i64 -1 to i8*)
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i8* null, i8** %address, align 8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %18 = load i64, i64* %size.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [64 x i64], [64 x i64]* @g_HugePageLen, i32 0, i64 %idxprom19
  store i64 %18, i64* %arrayidx20, align 8
  %20 = load i8*, i8** %address, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [64 x i8*], [64 x i8*]* @g_HugePageAddr, i32 0, i64 %idxprom21
  store i8* %20, i8** %arrayidx22, align 8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.9
  %22 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %22)
  br label %for.end

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %call24 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @VirtualAlloc.mutex) #4
  %24 = load i8*, i8** %address, align 8
  store i8* %24, i8** %retval
  br label %return

if.end.25:                                        ; preds = %entry
  %25 = load i64, i64* %size.addr, align 8
  %call26 = call noalias i8* @malloc(i64 %25) #4
  store i8* %call26, i8** %retval
  br label %return

return:                                           ; preds = %if.end.25, %for.end
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define void @MidFree(i8* %address) #0 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %address.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %address.addr, align 8
  %call = call i32 @VirtualFree(i8* %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @VirtualFree(i8* %address) #0 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* @g_HugePageAddr, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8*, i8** %address.addr, align 8
  %cmp1 = icmp eq i8* %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %address.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [64 x i64], [64 x i64]* @g_HugePageLen, i32 0, i64 %idxprom2
  %6 = load i64, i64* %arrayidx3, align 8
  %call = call i32 @munmap(i8* %4, i64 %6) #4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [64 x i8*], [64 x i8*]* @g_HugePageAddr, i32 0, i64 %idxprom4
  store i8* null, i8** %arrayidx5, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %address.addr, align 8
  call void @free(i8* %9) #4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i64 @largePageMinimum() #0 {
entry:
  %retval = alloca i64, align 8
  %size = alloca i64, align 8
  %filename = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %info = alloca %struct.mntent*, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call, i8** @g_HugetlbPath, align 8
  %0 = load i8*, i8** @g_HugetlbPath, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %filename, align 8
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @largePageMinimum.dir_hugetlbfs, i32 0, i64 0), align 1
  %1 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @setmntent(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #4
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call %struct.mntent* @getmntent(%struct._IO_FILE* %3) #4
  store %struct.mntent* %call3, %struct.mntent** %info, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then.2
  %4 = load %struct.mntent*, %struct.mntent** %info, align 8
  %tobool4 = icmp ne %struct.mntent* %4, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.mntent*, %struct.mntent** %info, align 8
  %mnt_type = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 2
  %6 = load i8*, i8** %mnt_type, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body
  %7 = load %struct.mntent*, %struct.mntent** %info, align 8
  %mnt_dir = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 1
  %8 = load i8*, i8** %mnt_dir, align 8
  %call8 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @largePageMinimum.dir_hugetlbfs, i32 0, i32 0), i8* %8) #4
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call %struct.mntent* @getmntent(%struct._IO_FILE* %9) #4
  store %struct.mntent* %call9, %struct.mntent** %info, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @endmntent(%struct._IO_FILE* %10) #4
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.then
  %11 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @largePageMinimum.dir_hugetlbfs, i32 0, i64 0), align 1
  %tobool12 = icmp ne i8 %11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @largePageMinimum.dir_hugetlbfs, i32 0, i32 0), i8** @g_HugetlbPath, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %12 = load i8*, i8** @g_HugetlbPath, align 8
  %cmp16 = icmp eq i8* %12, null
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %13 = load i8*, i8** @g_HugetlbPath, align 8
  %call17 = call i64 @pathconf(i8* %13, i32 16) #4
  store i64 %call17, i64* %size, align 8
  %call18 = call i32 @getpagesize() #7
  %conv = sext i32 %call18 to i64
  %cmp19 = icmp ule i64 %call17, %conv
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.15
  store i64 0, i64* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %14 = load i64, i64* %size, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #1

; Function Attrs: nounwind
declare %struct.mntent* @getmntent(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #3

; Function Attrs: nounwind uwtable
define void @SetLargePageSize() #0 {
entry:
  %size = alloca i64, align 8
  %call = call i64 @largePageMinimum()
  store i64 %call, i64* %size, align 8
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %sub = sub i64 %2, 1
  %and = and i64 %1, %sub
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %size, align 8
  store i64 %3, i64* @g_LargePageSize, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @BigAlloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @g_LargePageSize, align 8
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* @g_LargePageSize, align 8
  %cmp2 = icmp ule i64 %2, 1073741824
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.10

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load i64, i64* %size.addr, align 8
  %cmp4 = icmp uge i64 %3, 262144
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %land.lhs.true.3
  %4 = load i64, i64* %size.addr, align 8
  %5 = load i64, i64* @g_LargePageSize, align 8
  %add = add i64 %4, %5
  %sub = sub i64 %add, 1
  %6 = load i64, i64* @g_LargePageSize, align 8
  %sub6 = sub i64 %6, 1
  %neg = xor i64 %sub6, -1
  %and = and i64 %sub, %neg
  %call = call i8* @VirtualAlloc(i64 %and, i32 1)
  store i8* %call, i8** %res, align 8
  %7 = load i8*, i8** %res, align 8
  %cmp7 = icmp ne i8* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %8 = load i8*, i8** %res, align 8
  store i8* %8, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true.3, %land.lhs.true, %if.end
  %9 = load i64, i64* %size.addr, align 8
  %call11 = call i8* @VirtualAlloc(i64 %9, i32 0)
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define void @BigFree(i8* %address) #0 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %address.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %address.addr, align 8
  %call = call i32 @VirtualFree(i8* %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @mkstemp64(i8*) #5

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #1

declare i32 @close(i32) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
