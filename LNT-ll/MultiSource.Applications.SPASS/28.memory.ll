; ModuleID = './MultiSource.Applications.SPASS/28.memory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@memory_ALIGN = constant i32 8, align 4
@memory_MARKSIZE = global i32 0, align 4
@memory_OFFSET = global i32 0, align 4
@memory_MAGICMALLOC = constant i32 1, align 4
@memory_MAGICFREE = constant i32 2, align 4
@memory_BIGBLOCKS = global %struct.MEMORY_BIGBLOCKHEADERHELP* null, align 8
@memory_FREEDBYTES = common global i64 0, align 8
@memory_NEWBYTES = common global i64 0, align 8
@memory_PAGESIZE = common global i32 0, align 4
@memory_MAXMEM = common global i64 0, align 8
@memory_PAGES = internal global [1025 x %struct.MEMORY_RESOURCEHELP] zeroinitializer, align 16
@memory_ARRAY = common global [1024 x %struct.MEMORY_RESOURCEHELP*] zeroinitializer, align 16
@memory__EOF = internal global i32 -1, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A In memory_Malloc:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A Memory Error.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c" Terminated by user given memory restriction,\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\0A while trying to allocate %lu bytes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0A Maximum amount of memory\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c" left for allocation is %l bytes.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\0A In memory_MallocIntern:\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\0A Memory Error. Out of memory.\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\0A Failed to allocate %d bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" Terminated by user given memory restriction.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" Terminated, ran out of system memory.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\0A In memory_Calloc:\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\0A Memory Error. Out of memory.\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\0A###\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"### Pagesize: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"### Marksize: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"### Memory demanded:  %lu KBytes\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"### Memory freed:     %lu KBytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"### Memory remaining: %lu Bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"### Pages allocated:  %d Pages\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"###\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\0A In memory_PrintAllocatedBlocks:\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"\0A Parameter size is too big: %d.\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"\0A Maximal allowed value is: %d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"   No request so far\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [82 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/memory.c\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"\0A Memory Error. No Page entry but Next entry.\0A\00", align 1
@.str.28 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\0A In memory_PrintFreedBlocks.\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"\0A Parameter Size is too big: %d.\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"\0A\0A   No freed memory\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"\0A\0A   Free: \00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"\0A\0AEOF Pointer: %p\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"\0A\0A Entry: %d aligned size: %d total size: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"\0A In memory_PrintDetailed:\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"\0A\0A   Page: %p Next Page: %p\0A\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"   Data: \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @memory_Init(i64 %Maxmem) #0 {
entry:
  %Maxmem.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %extra = alloca i32, align 4
  %CurrentResource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %TotalSize = alloca i32, align 4
  store i64 %Maxmem, i64* %Maxmem.addr, align 8
  store i64 0, i64* @memory_FREEDBYTES, align 8
  store i64 0, i64* @memory_NEWBYTES, align 8
  store i32 8192, i32* @memory_PAGESIZE, align 4
  %0 = load i32, i32* @memory_MARKSIZE, align 4
  %conv = zext i32 %0 to i64
  %add = add i64 16, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %extra, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* @memory_PAGESIZE, align 4
  %2 = load i32, i32* @memory_MARKSIZE, align 4
  %add2 = add i32 1024, %2
  %mul = mul i32 2, %add2
  %3 = load i32, i32* %extra, align 4
  %add3 = add i32 %mul, %3
  %cmp = icmp ult i32 %1, %add3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* @memory_PAGESIZE, align 4
  %add5 = add i32 %4, 4096
  store i32 %add5, i32* @memory_PAGESIZE, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %Maxmem.addr, align 8
  %cmp6 = icmp sle i64 %5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i64 -1, i64* @memory_MAXMEM, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %6 = load i64, i64* %Maxmem.addr, align 8
  store i64 %6, i64* @memory_MAXMEM, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %7, 1024
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  %div = sdiv i32 %sub, 1
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [1025 x %struct.MEMORY_RESOURCEHELP], [1025 x %struct.MEMORY_RESOURCEHELP]* @memory_PAGES, i32 0, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom10
  store %struct.MEMORY_RESOURCEHELP* %arrayidx, %struct.MEMORY_RESOURCEHELP** %arrayidx11, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom12
  %11 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx13, align 8
  store %struct.MEMORY_RESOURCEHELP* %11, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %12 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %12, i32 0, i32 0
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %free, align 8
  %13 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %next = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %13, i32 0, i32 1
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %next, align 8
  %14 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %14, i32 0, i32 3
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %end_of_page, align 8
  %15 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %15, i32 0, i32 2
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %page, align 8
  %16 = load i32, i32* %i, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %16)
  %17 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %17, i32 0, i32 5
  store i32 %call, i32* %aligned_size, align 4
  %18 = load i32, i32* @memory_MARKSIZE, align 4
  %19 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %aligned_size14 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %19, i32 0, i32 5
  %20 = load i32, i32* %aligned_size14, align 4
  %add15 = add i32 %18, %20
  %21 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %21, i32 0, i32 4
  store i32 %add15, i32* %total_size, align 4
  %22 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %total_size16 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %22, i32 0, i32 4
  %23 = load i32, i32* %total_size16, align 4
  store i32 %23, i32* %TotalSize, align 4
  %24 = load i32, i32* @memory_PAGESIZE, align 4
  %25 = load i32, i32* %extra, align 4
  %sub17 = sub i32 %24, %25
  %26 = load i32, i32* %TotalSize, align 4
  %div18 = udiv i32 %sub17, %26
  %27 = load i32, i32* %TotalSize, align 4
  %mul19 = mul i32 %div18, %27
  %conv20 = zext i32 %mul19 to i64
  %add21 = add i64 %conv20, 8
  %28 = load i32, i32* @memory_OFFSET, align 4
  %conv22 = zext i32 %28 to i64
  %add23 = add i64 %add21, %conv22
  %conv24 = trunc i64 %add23 to i32
  %29 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %CurrentResource, align 8
  %offset = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %29, i32 0, i32 6
  store i32 %conv24, i32* %offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #1 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %rem2 = urem i32 %4, 8
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %RealSize, align 4
  %rem5 = urem i32 %5, 8
  %sub6 = sub i32 8, %rem5
  %6 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %6, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %7 = load i32, i32* %RealSize, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @memory_Restrict(i64 %Maxmem) #0 {
entry:
  %Maxmem.addr = alloca i64, align 8
  store i64 %Maxmem, i64* %Maxmem.addr, align 8
  %0 = load i64, i64* %Maxmem.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* @memory_MAXMEM, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %Maxmem.addr, align 8
  store i64 %1, i64* @memory_MAXMEM, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @memory_Malloc(i32 %Bytes) #0 {
entry:
  %Bytes.addr = alloca i32, align 4
  %NewMemory = alloca i8*, align 8
  %Resource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %RealBigBlockSize = alloca i32, align 4
  %NewBigBlock = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i32 %Bytes, i32* %Bytes.addr, align 4
  %0 = load i32, i32* %Bytes.addr, align 4
  %cmp = icmp uge i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else.29

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @memory_MARKSIZE, align 4
  %conv = zext i32 %1 to i64
  %add = add i64 16, %conv
  %2 = load i32, i32* %Bytes.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %2)
  %conv1 = zext i32 %call to i64
  %add2 = add i64 %add, %conv1
  %conv3 = trunc i64 %add2 to i32
  store i32 %conv3, i32* %RealBigBlockSize, align 4
  %3 = load i64, i64* @memory_MAXMEM, align 8
  %cmp4 = icmp sge i64 %3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.then
  %4 = load i64, i64* @memory_MAXMEM, align 8
  %conv7 = trunc i64 %4 to i32
  %5 = load i32, i32* %RealBigBlockSize, align 4
  %cmp8 = icmp ult i32 %conv7, %5
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* %6)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  %7 = load i32, i32* %RealBigBlockSize, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i32 %7)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %8 = load i64, i64* @memory_MAXMEM, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i64 %8)
  call void @misc_Error()
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %9 = load i32, i32* %RealBigBlockSize, align 4
  %conv12 = zext i32 %9 to i64
  %10 = load i64, i64* @memory_MAXMEM, align 8
  %sub = sub nsw i64 %10, %conv12
  store i64 %sub, i64* @memory_MAXMEM, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %RealBigBlockSize, align 4
  %conv14 = zext i32 %11 to i64
  %call15 = call noalias i8* @malloc(i64 %conv14) #4
  store i8* %call15, i8** %NewMemory, align 8
  %12 = load i8*, i8** %NewMemory, align 8
  %cmp16 = icmp ne i8* %12, null
  br i1 %cmp16, label %if.then.18, label %if.else.26

if.then.18:                                       ; preds = %if.end.13
  %13 = load i8*, i8** %NewMemory, align 8
  %14 = bitcast i8* %13 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %14, %struct.MEMORY_BIGBLOCKHEADERHELP** %NewBigBlock, align 8
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %NewBigBlock, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %16, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %15, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %NewBigBlock, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* null, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  %cmp19 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %18, null
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %19 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %NewBigBlock, align 8
  %20 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  %previous22 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %20, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %19, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.18
  %21 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %NewBigBlock, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %21, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  %22 = load i8*, i8** %NewMemory, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 16
  store i8* %add.ptr, i8** %NewMemory, align 8
  %23 = load i32, i32* %RealBigBlockSize, align 4
  %conv24 = zext i32 %23 to i64
  %24 = load i64, i64* @memory_NEWBYTES, align 8
  %add25 = add i64 %24, %conv24
  store i64 %add25, i64* @memory_NEWBYTES, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %if.end.13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fflush(%struct._IO_FILE* %25)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  %26 = load i32, i32* %RealBigBlockSize, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i32 %26)
  call void @misc_Error()
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.end.23
  br label %if.end.84

if.else.29:                                       ; preds = %entry
  %27 = load i32, i32* %Bytes.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  store %struct.MEMORY_RESOURCEHELP* %28, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %29 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %29, i32 0, i32 0
  %30 = load i8*, i8** %free, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %cmp30 = icmp ne i32 %32, -1
  br i1 %cmp30, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.else.29
  %33 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %free33 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %33, i32 0, i32 0
  %34 = load i8*, i8** %free33, align 8
  store i8* %34, i8** %NewMemory, align 8
  %35 = load i8*, i8** %NewMemory, align 8
  %36 = bitcast i8* %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %free34 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %37, i8** %free34, align 8
  %39 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %39, i32 0, i32 4
  %40 = load i32, i32* %total_size, align 4
  %conv35 = sext i32 %40 to i64
  %41 = load i64, i64* @memory_FREEDBYTES, align 8
  %sub36 = sub i64 %41, %conv35
  store i64 %sub36, i64* @memory_FREEDBYTES, align 8
  br label %if.end.83

if.else.37:                                       ; preds = %if.else.29
  %42 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next38 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %42, i32 0, i32 1
  %43 = load i8*, i8** %next38, align 8
  %44 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %44, i32 0, i32 3
  %45 = load i8*, i8** %end_of_page, align 8
  %cmp39 = icmp ne i8* %43, %45
  br i1 %cmp39, label %if.then.41, label %if.else.49

if.then.41:                                       ; preds = %if.else.37
  %46 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next42 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %46, i32 0, i32 1
  %47 = load i8*, i8** %next42, align 8
  store i8* %47, i8** %NewMemory, align 8
  %48 = load i8*, i8** %NewMemory, align 8
  %49 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size43 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %49, i32 0, i32 4
  %50 = load i32, i32* %total_size43, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  %51 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next45 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %51, i32 0, i32 1
  store i8* %add.ptr44, i8** %next45, align 8
  %52 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size46 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %52, i32 0, i32 4
  %53 = load i32, i32* %total_size46, align 4
  %conv47 = sext i32 %53 to i64
  %54 = load i64, i64* @memory_NEWBYTES, align 8
  %add48 = add i64 %54, %conv47
  store i64 %add48, i64* @memory_NEWBYTES, align 8
  br label %if.end.82

if.else.49:                                       ; preds = %if.else.37
  %55 = load i64, i64* @memory_MAXMEM, align 8
  %cmp50 = icmp sge i64 %55, 0
  br i1 %cmp50, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %if.else.49
  %56 = load i64, i64* @memory_MAXMEM, align 8
  %conv53 = trunc i64 %56 to i32
  %57 = load i32, i32* @memory_PAGESIZE, align 4
  %cmp54 = icmp ult i32 %conv53, %57
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.then.52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fflush(%struct._IO_FILE* %58)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.61

if.else.58:                                       ; preds = %if.then.52
  %59 = load i32, i32* @memory_PAGESIZE, align 4
  %conv59 = zext i32 %59 to i64
  %60 = load i64, i64* @memory_MAXMEM, align 8
  %sub60 = sub nsw i64 %60, %conv59
  store i64 %sub60, i64* @memory_MAXMEM, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.49
  %61 = load i32, i32* @memory_PAGESIZE, align 4
  %conv63 = zext i32 %61 to i64
  %call64 = call noalias i8* @malloc(i64 %conv63) #4
  store i8* %call64, i8** %NewMemory, align 8
  %62 = load i8*, i8** %NewMemory, align 8
  %cmp65 = icmp eq i8* %62, null
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.62
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call68 = call i32 @fflush(%struct._IO_FILE* %63)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.62
  %64 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %64, i32 0, i32 2
  %65 = load i8*, i8** %page, align 8
  %66 = load i8*, i8** %NewMemory, align 8
  %67 = bitcast i8* %66 to i8**
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %NewMemory, align 8
  %69 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page70 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %69, i32 0, i32 2
  store i8* %68, i8** %page70, align 8
  %70 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size71 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %70, i32 0, i32 4
  %71 = load i32, i32* %total_size71, align 4
  %conv72 = sext i32 %71 to i64
  %72 = load i64, i64* @memory_NEWBYTES, align 8
  %add73 = add i64 %72, %conv72
  store i64 %add73, i64* @memory_NEWBYTES, align 8
  %73 = load i8*, i8** %NewMemory, align 8
  %74 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %offset = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %74, i32 0, i32 6
  %75 = load i32, i32* %offset, align 4
  %idx.ext74 = sext i32 %75 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %73, i64 %idx.ext74
  %76 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page76 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %76, i32 0, i32 3
  store i8* %add.ptr75, i8** %end_of_page76, align 8
  %77 = load i8*, i8** %NewMemory, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %77, i64 8
  store i8* %add.ptr77, i8** %NewMemory, align 8
  %78 = load i8*, i8** %NewMemory, align 8
  %79 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size78 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %79, i32 0, i32 4
  %80 = load i32, i32* %total_size78, align 4
  %idx.ext79 = sext i32 %80 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %78, i64 %idx.ext79
  %81 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next81 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %81, i32 0, i32 1
  store i8* %add.ptr80, i8** %next81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.69, %if.then.41
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.32
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.28
  %82 = load i8*, i8** %NewMemory, align 8
  ret i8* %82
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @memory_Calloc(i32 %Elements, i32 %Bytes) #0 {
entry:
  %Elements.addr = alloca i32, align 4
  %Bytes.addr = alloca i32, align 4
  %mem = alloca i8*, align 8
  store i32 %Elements, i32* %Elements.addr, align 4
  store i32 %Bytes, i32* %Bytes.addr, align 4
  %0 = load i32, i32* %Elements.addr, align 4
  %1 = load i32, i32* %Bytes.addr, align 4
  %mul = mul i32 %0, %1
  %call = call i8* @memory_Malloc(i32 %mul)
  store i8* %call, i8** %mem, align 8
  %2 = load i8*, i8** %mem, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %mem, align 8
  %4 = load i32, i32* %Elements.addr, align 4
  %5 = load i32, i32* %Bytes.addr, align 4
  %mul1 = mul i32 %4, %5
  %conv = zext i32 %mul1 to i64
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %6)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %mem, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @memory_FreeAllMem() #0 {
entry:
  %i = alloca i32, align 4
  %thispage = alloca i8*, align 8
  %nextpage = alloca i8*, align 8
  %Resource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %thisblock = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  %nextblock = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  store %struct.MEMORY_RESOURCEHELP* %2, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %3 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %3, i32 0, i32 2
  %4 = load i8*, i8** %page, align 8
  store i8* %4, i8** %thispage, align 8
  %5 = load i8*, i8** %thispage, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %cmp1 = icmp ne i32 %7, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %8 = load i8*, i8** %thispage, align 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %nextpage, align 8
  %11 = load i8*, i8** %thispage, align 8
  call void @free(i8* %11) #4
  %12 = load i8*, i8** %nextpage, align 8
  store i8* %12, i8** %thispage, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i8*, i8** %thispage, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %cmp2 = icmp ne i32 %15, -1
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page3 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %16, i32 0, i32 2
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %page3, align 8
  %17 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %17, i32 0, i32 0
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %free, align 8
  %18 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %18, i32 0, i32 1
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %next, align 8
  %19 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %19, i32 0, i32 3
  store i8* bitcast (i32* @memory__EOF to i8*), i8** %end_of_page, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  %cmp4 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %21, null
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %for.end
  %22 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %22, %struct.MEMORY_BIGBLOCKHEADERHELP** %thisblock, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.10, %if.then.5
  %23 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %thisblock, align 8
  %cmp7 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %23, null
  br i1 %cmp7, label %for.body.8, label %for.end.11

for.body.8:                                       ; preds = %for.cond.6
  %24 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %thisblock, align 8
  %next9 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %24, i32 0, i32 1
  %25 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next9, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %25, %struct.MEMORY_BIGBLOCKHEADERHELP** %nextblock, align 8
  %26 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %thisblock, align 8
  %27 = bitcast %struct.MEMORY_BIGBLOCKHEADERHELP* %26 to i8*
  call void @free(i8* %27) #4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.8
  %28 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %nextblock, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %28, %struct.MEMORY_BIGBLOCKHEADERHELP** %thisblock, align 8
  br label %for.cond.6

for.end.11:                                       ; preds = %for.cond.6
  store %struct.MEMORY_BIGBLOCKHEADERHELP* null, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %for.end.11, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @memory_Print() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @memory_FPrint(%struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @memory_FPrint(%struct._IO_FILE* %File) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Pages = alloca i32, align 4
  %i = alloca i32, align 4
  %ActPage = alloca i8*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 0, i32* %Pages, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 2
  %3 = load i8*, i8** %page, align 8
  store i8* %3, i8** %ActPage, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load i8*, i8** %ActPage, align 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %cmp1 = icmp ne i32 %6, -1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %Pages, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %Pages, align 4
  %8 = load i8*, i8** %ActPage, align 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %ActPage, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load i32, i32* @memory_PAGESIZE, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %16 = load i32, i32* @memory_MARKSIZE, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %18 = load i64, i64* @memory_NEWBYTES, align 8
  %div = udiv i64 %18, 1024
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i64 %div)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %20 = load i64, i64* @memory_FREEDBYTES, align 8
  %div5 = udiv i64 %20, 1024
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i64 %div5)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %22 = load i64, i64* @memory_NEWBYTES, align 8
  %23 = load i64, i64* @memory_FREEDBYTES, align 8
  %sub = sub i64 %22, %23
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i64 %sub)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %25 = load i32, i32* %Pages, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %26)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @memory_PrintAllocatedBlocks(i32 %Size) #0 {
entry:
  %Size.addr = alloca i32, align 4
  %Resource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %ActPage = alloca i8*, align 8
  %ActNext = alloca i8*, align 8
  %ActEndOfPage = alloca i8*, align 8
  %BlockSize = alloca i32, align 4
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  %2 = load i32, i32* %Size.addr, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %2)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i32 1024)
  call void @misc_Error()
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %4 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  store %struct.MEMORY_RESOURCEHELP* %4, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %5 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %5, i32 0, i32 2
  %6 = load i8*, i8** %page, align 8
  store i8* %6, i8** %ActPage, align 8
  %7 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %7, i32 0, i32 1
  %8 = load i8*, i8** %next, align 8
  store i8* %8, i8** %ActNext, align 8
  %9 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %9, i32 0, i32 3
  %10 = load i8*, i8** %end_of_page, align 8
  store i8* %10, i8** %ActEndOfPage, align 8
  %11 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %11, i32 0, i32 4
  %12 = load i32, i32* %total_size, align 4
  store i32 %12, i32* %BlockSize, align 4
  %13 = load i8*, i8** %ActPage, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %cmp1 = icmp eq i32 %15, -1
  br i1 %cmp1, label %if.then.2, label %if.else.10

if.then.2:                                        ; preds = %if.else
  %16 = load i8*, i8** %ActNext, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %cmp3 = icmp eq i32 %18, -1
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.then.2
  %call5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.else.6:                                        ; preds = %if.then.2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.26, i32 0, i32 0), i32 1192)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %21)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.11

if.else.10:                                       ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  ret void
}

declare i32 @puts(i8*) #2

declare void @misc_ErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @memory_PrintFreedBlocks(i32 %Size) #0 {
entry:
  %Size.addr = alloca i32, align 4
  %ActFree = alloca i8*, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  %2 = load i32, i32* %Size.addr, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 %2)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i32 1024)
  call void @misc_Error()
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %4 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %4, i32 0, i32 0
  %5 = load i8*, i8** %free, align 8
  store i8* %5, i8** %ActFree, align 8
  %6 = load i8*, i8** %ActFree, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.4
  %10 = load i8*, i8** %ActFree, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %cmp6 = icmp ne i32 %12, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %ActFree, align 8
  %14 = bitcast i8* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %ActFree, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @memory_PrintAllocatedBigBlocks() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @memory_PrintDetailed() #0 {
entry:
  %Resource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %ActPage = alloca i8*, align 8
  %ActData = alloca i8*, align 8
  %ActEndOfPage = alloca i8*, align 8
  %BlockSize = alloca i32, align 4
  %PageOffset = alloca i32, align 4
  %i = alloca i32, align 4
  %column = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* bitcast (i32* @memory__EOF to i8*))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  store %struct.MEMORY_RESOURCEHELP* %2, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %3 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %3, i32 0, i32 2
  %4 = load i8*, i8** %page, align 8
  store i8* %4, i8** %ActPage, align 8
  %5 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %5, i32 0, i32 1
  %6 = load i8*, i8** %next, align 8
  store i8* %6, i8** %ActData, align 8
  %7 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %7, i32 0, i32 3
  %8 = load i8*, i8** %end_of_page, align 8
  store i8* %8, i8** %ActEndOfPage, align 8
  %9 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %offset = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %9, i32 0, i32 6
  %10 = load i32, i32* %offset, align 4
  store i32 %10, i32* %PageOffset, align 4
  %11 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %11, i32 0, i32 4
  %12 = load i32, i32* %total_size, align 4
  store i32 %12, i32* %BlockSize, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %14, i32 0, i32 5
  %15 = load i32, i32* %aligned_size, align 4
  %16 = load i32, i32* %BlockSize, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0), i32 %13, i32 %15, i32 %16)
  %17 = load i8*, i8** %ActPage, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %cmp2 = icmp eq i32 %19, -1
  br i1 %cmp2, label %if.then, label %if.else.9

if.then:                                          ; preds = %for.body
  %20 = load i8*, i8** %ActData, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %cmp3 = icmp eq i32 %22, -1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %call5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.26, i32 0, i32 0), i32 1443)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0))
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %25)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.30

if.else.9:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.else.9
  %26 = load i8*, i8** %ActPage, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %cmp10 = icmp ne i32 %28, -1
  br i1 %cmp10, label %while.body, label %while.end.29

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %ActPage, align 8
  %30 = load i8*, i8** %ActPage, align 8
  %31 = bitcast i8* %30 to i8**
  %32 = load i8*, i8** %31, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* %29, i8* %32)
  %33 = load i8*, i8** %ActPage, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 8
  %34 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr12, i8** %ActData, align 8
  %35 = load i8*, i8** %ActPage, align 8
  %36 = load i32, i32* %PageOffset, align 4
  %idx.ext13 = zext i32 %36 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %35, i64 %idx.ext13
  store i8* %add.ptr14, i8** %ActEndOfPage, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %37)
  br label %while.cond.16

while.cond.16:                                    ; preds = %for.end, %while.body
  %38 = load i8*, i8** %ActData, align 8
  %39 = load i8*, i8** %ActEndOfPage, align 8
  %cmp17 = icmp ne i8* %38, %39
  br i1 %cmp17, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %while.cond.16
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %40)
  store i32 0, i32* %column, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %while.body.18
  %41 = load i32, i32* %column, align 4
  %cmp21 = icmp slt i32 %41, 6
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %42 = load i8*, i8** %ActData, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* %42)
  %43 = load i8*, i8** %ActData, align 8
  %44 = load i32, i32* %BlockSize, align 4
  %idx.ext24 = zext i32 %44 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %43, i64 %idx.ext24
  store i8* %add.ptr25, i8** %ActData, align 8
  %45 = load i8*, i8** %ActData, align 8
  %46 = load i8*, i8** %ActEndOfPage, align 8
  %cmp26 = icmp eq i8* %45, %46
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.22
  br label %for.end

if.end.28:                                        ; preds = %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %47 = load i32, i32* %column, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %column, align 4
  br label %for.cond.20

for.end:                                          ; preds = %if.then.27, %for.cond.20
  br label %while.cond.16

while.end:                                        ; preds = %while.cond.16
  %48 = load i8*, i8** %ActPage, align 8
  %49 = bitcast i8* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %ActPage, align 8
  br label %while.cond

while.end.29:                                     ; preds = %while.cond
  %51 = load i32, i32* %i, align 4
  call void @memory_PrintAllocatedBlocks(i32 %51)
  %52 = load i32, i32* %i, align 4
  call void @memory_PrintFreedBlocks(i32 %52)
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %if.end
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %53 = load i32, i32* %i, align 4
  %inc32 = add i32 %53, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @memory_PrintLeaks() #0 {
entry:
  %ActPage = alloca i8*, align 8
  %ActNext = alloca i8*, align 8
  %ActEndOfPage = alloca i8*, align 8
  %Resource = alloca %struct.MEMORY_RESOURCEHELP*, align 8
  %Size = alloca i32, align 4
  %BlockSize = alloca i32, align 4
  %call = call i64 @memory_UsedBytes()
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  store i32 1, i32* %Size, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Size, align 4
  %cmp1 = icmp ult i32 %0, 1024
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %Size, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.MEMORY_RESOURCEHELP*], [1024 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  store %struct.MEMORY_RESOURCEHELP* %2, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %3 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %3, i32 0, i32 2
  %4 = load i8*, i8** %page, align 8
  store i8* %4, i8** %ActPage, align 8
  %5 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %next = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %5, i32 0, i32 1
  %6 = load i8*, i8** %next, align 8
  store i8* %6, i8** %ActNext, align 8
  %7 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %end_of_page = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %7, i32 0, i32 3
  %8 = load i8*, i8** %end_of_page, align 8
  store i8* %8, i8** %ActEndOfPage, align 8
  %9 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %Resource, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %9, i32 0, i32 4
  %10 = load i32, i32* %total_size, align 4
  store i32 %10, i32* %BlockSize, align 4
  %11 = load i8*, i8** %ActPage, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %cmp2 = icmp ne i32 %13, -1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %Size, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %Size, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @memory_UsedBytes() #1 {
entry:
  %0 = load i64, i64* @memory_NEWBYTES, align 8
  %1 = load i64, i64* @memory_FREEDBYTES, align 8
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: noreturn nounwind
declare void @abort() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
