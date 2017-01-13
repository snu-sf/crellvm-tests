; ModuleID = './MultiSource.Applications.SPASS/22.strings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"\0AString isn't a number or number to large: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SPASS\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @string_StringIsNumber(i8* %String) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %String, i8** %String.addr, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %String.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %String.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i8*, i8** %String.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp sge i32 %conv9, 48
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load i8*, i8** %String.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp sle i32 %conv14, 57
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %while.body
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i8* @string_StringCopy(i8* %String) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %copy = alloca i8*, align 8
  store i8* %String, i8** %String.addr, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %call1 = call i8* @memory_Malloc(i32 %conv)
  store i8* %call1, i8** %copy, align 8
  %1 = load i8*, i8** %copy, align 8
  %2 = load i8*, i8** %String.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2) #8
  %3 = load i8*, i8** %copy, align 8
  ret i8* %3
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @string_StringFree(i8* %String) #0 {
entry:
  %String.addr = alloca i8*, align 8
  store i8* %String, i8** %String.addr, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %1 = load i8*, i8** %String.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  call void @memory_Free(i8* %0, i32 %conv)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #4 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #8
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @string_IntToString(i32 %Number) #0 {
entry:
  %Number.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %size = alloca i32, align 4
  store i32 %Number, i32* %Number.addr, align 4
  store i32 1, i32* %size, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %cmp = icmp sgt i32 %0, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %Number.addr, align 4
  %conv = sitofp i32 %1 to double
  %call = call double @log10(double %conv) #8
  %conv1 = fptoui double %call to i32
  %add = add i32 %conv1, 1
  store i32 %add, i32* %size, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Number.addr, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %3 = load i32, i32* %Number.addr, align 4
  %call5 = call i32 @abs(i32 %3) #9
  %conv6 = sitofp i32 %call5 to double
  %call7 = call double @log10(double %conv6) #8
  %conv8 = fptoui double %call7 to i32
  %add9 = add i32 %conv8, 2
  store i32 %add9, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %4 = load i32, i32* %size, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %size, align 4
  %5 = load i32, i32* %size, align 4
  %conv11 = zext i32 %5 to i64
  %mul = mul i64 1, %conv11
  %conv12 = trunc i64 %mul to i32
  %call13 = call i8* @memory_Malloc(i32 %conv12)
  store i8* %call13, i8** %result, align 8
  %6 = load i8*, i8** %result, align 8
  %7 = load i32, i32* %Number.addr, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %7) #8
  %8 = load i8*, i8** %result, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare double @log10(double) #3

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @string_StringToInt(i8* %String, i32 %PrintError, i32* %Result) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %PrintError.addr = alloca i32, align 4
  %Result.addr = alloca i32*, align 8
  %number = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %String, i8** %String.addr, align 8
  store i32 %PrintError, i32* %PrintError.addr, align 4
  store i32* %Result, i32** %Result.addr, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %end, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %call = call i64 @strtol(i8* %0, i8** %end, i32 10) #8
  store i64 %call, i64* %number, align 8
  %1 = load i64, i64* %number, align 8
  %cmp = icmp sge i64 %1, -2147483648
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %number, align 8
  %cmp1 = icmp sle i64 %2, 2147483647
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i8*, i8** %end, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %5 = load i64, i64* %number, align 8
  %conv5 = trunc i64 %5 to i32
  %6 = load i32*, i32** %Result.addr, align 8
  store i32 %conv5, i32* %6, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %7 = load i32*, i32** %Result.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %PrintError.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %9)
  %10 = load i8*, i8** %String.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* %10)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @misc_UserErrorReport(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #4 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @string_Conc(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %dst = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %conv = trunc i64 %add2 to i32
  %call3 = call i8* @memory_Malloc(i32 %conv)
  store i8* %call3, i8** %dst, align 8
  %2 = load i8*, i8** %dst, align 8
  %3 = load i8*, i8** %s1.addr, align 8
  %call4 = call i8* @strcpy(i8* %2, i8* %3) #8
  %4 = load i8*, i8** %dst, align 8
  %5 = load i8*, i8** %s2.addr, align 8
  %call5 = call i8* @strcat(i8* %4, i8* %5) #8
  ret i8* %call5
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @string_Nconc(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %dst = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %conv = trunc i64 %add2 to i32
  %call3 = call i8* @memory_Malloc(i32 %conv)
  store i8* %call3, i8** %dst, align 8
  %2 = load i8*, i8** %dst, align 8
  %3 = load i8*, i8** %s1.addr, align 8
  %call4 = call i8* @strcpy(i8* %2, i8* %3) #8
  %4 = load i8*, i8** %dst, align 8
  %5 = load i8*, i8** %s2.addr, align 8
  %call5 = call i8* @strcat(i8* %4, i8* %5) #8
  store i8* %call5, i8** %dst, align 8
  %6 = load i8*, i8** %s1.addr, align 8
  call void @string_StringFree(i8* %6)
  %7 = load i8*, i8** %s2.addr, align 8
  call void @string_StringFree(i8* %7)
  %8 = load i8*, i8** %dst, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i8* @string_EmptyString() #0 {
entry:
  %s = alloca i8*, align 8
  %call = call i8* @memory_Malloc(i32 1)
  store i8* %call, i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i8*, i8** %s, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @string_Prefix(i8* %s, i32 %i) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %dst = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %0, 1
  %call = call i8* @memory_Malloc(i32 %add)
  store i8* %call, i8** %dst, align 8
  %1 = load i8*, i8** %dst, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i.addr, align 4
  %conv = sext i32 %3 to i64
  %call1 = call i8* @strncpy(i8* %1, i8* %2, i64 %conv) #8
  %4 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %dst, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %6 = load i8*, i8** %dst, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @string_Suffix(i8* %s, i32 %i) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %dst = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* %l, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i8* @string_EmptyString()
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %l, align 4
  %4 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  %call3 = call i8* @memory_Malloc(i32 %add)
  store i8* %call3, i8** %dst, align 8
  %5 = load i8*, i8** %dst, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %i.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %call4 = call i8* @strcpy(i8* %5, i8* %add.ptr) #8
  %8 = load i8*, i8** %dst, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i8** @string_Tokens(i8* %String, i32* %ArraySize) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %ArraySize.addr = alloca i32*, align 8
  %LastNonSpace = alloca i8*, align 8
  %Scan = alloca i8*, align 8
  %Help = alloca i8, align 1
  %Array = alloca i8**, align 8
  %Substrings = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store i8* %String, i8** %String.addr, align 8
  store i32* %ArraySize, i32** %ArraySize.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Substrings, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %1 = load i8*, i8** %String.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #7
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call1
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr2, i8** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %Scan, align 8
  %3 = load i8*, i8** %String.addr, align 8
  %cmp = icmp uge i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.7, %while.body
  %4 = load i8*, i8** %Scan, align 8
  %5 = load i8*, i8** %String.addr, align 8
  %cmp4 = icmp uge i8* %4, %5
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.3
  %6 = load i8*, i8** %Scan, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %call5 = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call5, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %9 to i32
  %and = and i32 %conv6, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.3
  %10 = phi i1 [ false, %while.cond.3 ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %11 = load i8*, i8** %Scan, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %Scan, align 8
  br label %while.cond.3

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %Scan, align 8
  %13 = load i8*, i8** %String.addr, align 8
  %cmp8 = icmp uge i8* %12, %13
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load i8*, i8** %Scan, align 8
  store i8* %14, i8** %LastNonSpace, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.21, %if.then
  %15 = load i8*, i8** %Scan, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr10, i8** %Scan, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i8*, i8** %Scan, align 8
  %17 = load i8*, i8** %String.addr, align 8
  %cmp11 = icmp uge i8* %16, %17
  br i1 %cmp11, label %land.rhs.13, label %land.end.21

land.rhs.13:                                      ; preds = %do.cond
  %18 = load i8*, i8** %Scan, align 8
  %19 = load i8, i8* %18, align 1
  %conv14 = sext i8 %19 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #9
  %20 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %20, i64 %idxprom15
  %21 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %21 to i32
  %and19 = and i32 %conv18, 8192
  %tobool20 = icmp ne i32 %and19, 0
  %lnot = xor i1 %tobool20, true
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.13, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs.13 ]
  br i1 %22, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.21
  %23 = load i8*, i8** %LastNonSpace, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %add.ptr22, align 1
  store i8 %24, i8* %Help, align 1
  %25 = load i8*, i8** %LastNonSpace, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %add.ptr23, align 1
  %26 = load i8*, i8** %Scan, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 1
  %call25 = call i8* @string_StringCopy(i8* %add.ptr24)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Substrings, align 8
  %call26 = call %struct.LIST_HELP* @list_Cons(i8* %call25, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Substrings, align 8
  %28 = load i8, i8* %Help, align 1
  %29 = load i8*, i8** %LastNonSpace, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %28, i8* %add.ptr27, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Substrings, align 8
  %call29 = call i32 @list_Length(%struct.LIST_HELP* %30)
  %add = add i32 %call29, 2
  %31 = load i32*, i32** %ArraySize.addr, align 8
  store i32 %add, i32* %31, align 4
  %32 = load i32*, i32** %ArraySize.addr, align 8
  %33 = load i32, i32* %32, align 4
  %conv30 = sext i32 %33 to i64
  %mul = mul i64 8, %conv30
  %conv31 = trunc i64 %mul to i32
  %call32 = call i8* @memory_Malloc(i32 %conv31)
  %34 = bitcast i8* %call32 to i8**
  store i8** %34, i8*** %Array, align 8
  %call33 = call i8* @string_StringCopy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %35 = load i8**, i8*** %Array, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %call33, i8** %arrayidx34, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.28
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Substrings, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br i1 %lnot37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Substrings, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %38 to i64
  %39 = load i8**, i8*** %Array, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %39, i64 %idxprom39
  store i8* %call38, i8** %arrayidx40, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Substrings, align 8
  %call41 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Substrings, align 8
  %41 = load i32, i32* %i, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom42 = zext i32 %42 to i64
  %43 = load i8**, i8*** %Array, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %43, i64 %idxprom42
  store i8* null, i8** %arrayidx43, align 8
  %44 = load i32*, i32** %ArraySize.addr, align 8
  %45 = load i32, i32* %44, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %44, align 4
  %46 = load i8**, i8*** %Array, align 8
  ret i8** %46
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #4 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #4 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #4 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #4 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #4 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #4 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #4 {
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
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #4 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #4 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
