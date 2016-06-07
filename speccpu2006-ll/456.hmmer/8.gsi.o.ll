; ModuleID = 'gsi.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsi_s = type { %struct._IO_FILE*, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gsiindex_s = type { i8**, i32*, i16, %struct.gsikey_s*, i32 }
%struct.gsikey_s = type { [32 x i8], i16, i32 }

@.str = private unnamed_addr constant [6 x i8] c"gsi.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@squid_errno = external global i32, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"GSI\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"File name too long to be indexed.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"key too long in GSI index\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"too many files in GSI index\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"offset too big in GSI index\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Too many files in GSI index.\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Too many keys in GSI index.\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"GSI: nfiles out of range\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"GSI: nkeys out of range\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"GSI: file index out of range\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"GSI: format index out of range\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"GSI: offset out of range\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gsi_s* @GSIOpen(i8* %gsifile) #0 {
entry:
  %retval = alloca %struct.gsi_s*, align 8
  %gsifile.addr = alloca i8*, align 8
  %gsi = alloca %struct.gsi_s*, align 8
  %magic = alloca [32 x i8], align 16
  store i8* %gsifile, i8** %gsifile.addr, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 58, i64 16)
  %0 = bitcast i8* %call to %struct.gsi_s*
  store %struct.gsi_s* %0, %struct.gsi_s** %gsi, align 8
  %1 = load i8*, i8** %gsifile.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %gsifp = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %2, i32 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %gsifp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %4 = bitcast %struct.gsi_s* %3 to i8*
  call void @free(i8* %4) #4
  store i32 4, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %magic, i32 0, i32 0
  %5 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %gsifp2 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp2, align 8
  %call3 = call i64 @fread(i8* %arraydecay, i64 1, i64 32, %struct._IO_FILE* %6)
  %tobool = icmp ne i64 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %8 = bitcast %struct.gsi_s* %7 to i8*
  call void @free(i8* %8) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %magic, i32 0, i32 0
  %call7 = call i32 @strcmp(i8* %arraydecay6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %9 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %10 = bitcast %struct.gsi_s* %9 to i8*
  call void @free(i8* %10) #4
  store i32 5, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %11 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %nfiles = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %11, i32 0, i32 1
  %12 = bitcast i16* %nfiles to i8*
  %13 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %gsifp11 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp11, align 8
  %call12 = call i64 @fread(i8* %12, i64 2, i64 1, %struct._IO_FILE* %14)
  %tobool13 = icmp ne i64 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  %15 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %16 = bitcast %struct.gsi_s* %15 to i8*
  call void @free(i8* %16) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %17 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %recnum = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %17, i32 0, i32 2
  %18 = bitcast i32* %recnum to i8*
  %19 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %gsifp16 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp16, align 8
  %call17 = call i64 @fread(i8* %18, i64 4, i64 1, %struct._IO_FILE* %20)
  %tobool18 = icmp ne i64 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  %21 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %22 = bitcast %struct.gsi_s* %21 to i8*
  call void @free(i8* %22) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %23 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %nfiles21 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %23, i32 0, i32 1
  %24 = load i16, i16* %nfiles21, align 2
  %call22 = call zeroext i16 @sre_ntoh16(i16 zeroext %24)
  %25 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %nfiles23 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %25, i32 0, i32 1
  store i16 %call22, i16* %nfiles23, align 2
  %26 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %recnum24 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %26, i32 0, i32 2
  %27 = load i32, i32* %recnum24, align 4
  %call25 = call i32 @sre_ntoh32(i32 %27)
  %28 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  %recnum26 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %28, i32 0, i32 2
  store i32 %call25, i32* %recnum26, align 4
  %29 = load %struct.gsi_s*, %struct.gsi_s** %gsi, align 8
  store %struct.gsi_s* %29, %struct.gsi_s** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then.9, %if.then.4, %if.then
  %30 = load %struct.gsi_s*, %struct.gsi_s** %retval
  ret %struct.gsi_s* %30
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare zeroext i16 @sre_ntoh16(i16 zeroext) #1

declare i32 @sre_ntoh32(i32) #1

; Function Attrs: nounwind uwtable
define i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %f1, i16* %f2, i32* %f3) #0 {
entry:
  %retval = alloca i32, align 4
  %gsi.addr = alloca %struct.gsi_s*, align 8
  %f1.addr = alloca i8*, align 8
  %f2.addr = alloca i16*, align 8
  %f3.addr = alloca i32*, align 8
  store %struct.gsi_s* %gsi, %struct.gsi_s** %gsi.addr, align 8
  store i8* %f1, i8** %f1.addr, align 8
  store i16* %f2, i16** %f2.addr, align 8
  store i32* %f3, i32** %f3.addr, align 8
  %0 = load i8*, i8** %f1.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %2, i64 32, i32 1)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %f1.addr, align 8
  %4 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp1 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp1, align 8
  %call2 = call i64 @fread(i8* %3, i64 32, i64 1, %struct._IO_FILE* %5)
  %tobool = icmp ne i64 %call2, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %6 = load i16*, i16** %f2.addr, align 8
  %cmp5 = icmp eq i16* %6, null
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp7 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp7, align 8
  %call8 = call i32 @fseek(%struct._IO_FILE* %8, i64 2, i32 1)
  br label %if.end.15

if.else.9:                                        ; preds = %if.end.4
  %9 = load i16*, i16** %f2.addr, align 8
  %10 = bitcast i16* %9 to i8*
  %11 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp10 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %11, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp10, align 8
  %call11 = call i64 @fread(i8* %10, i64 2, i64 1, %struct._IO_FILE* %12)
  %tobool12 = icmp ne i64 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else.9
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.6
  %13 = load i32*, i32** %f3.addr, align 8
  %cmp16 = icmp eq i32* %13, null
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.15
  %14 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp18 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp18, align 8
  %call19 = call i32 @fseek(%struct._IO_FILE* %15, i64 4, i32 1)
  br label %if.end.26

if.else.20:                                       ; preds = %if.end.15
  %16 = load i32*, i32** %f3.addr, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp21 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %18, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp21, align 8
  %call22 = call i64 @fread(i8* %17, i64 4, i64 1, %struct._IO_FILE* %19)
  %tobool23 = icmp ne i64 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.20
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.17
  %20 = load i16*, i16** %f2.addr, align 8
  %cmp27 = icmp ne i16* %20, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %21 = load i16*, i16** %f2.addr, align 8
  %22 = load i16, i16* %21, align 2
  %call29 = call zeroext i16 @sre_ntoh16(i16 zeroext %22)
  %23 = load i16*, i16** %f2.addr, align 8
  store i16 %call29, i16* %23, align 2
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %24 = load i32*, i32** %f3.addr, align 8
  %cmp31 = icmp ne i32* %24, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %25 = load i32*, i32** %f3.addr, align 8
  %26 = load i32, i32* %25, align 4
  %call33 = call i32 @sre_ntoh32(i32 %26)
  %27 = load i32*, i32** %f3.addr, align 8
  store i32 %call33, i32* %27, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.24, %if.then.13, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @GSIGetOffset(%struct.gsi_s* %gsi, i8* %key, i8* %ret_seqfile, i32* %ret_format, i64* %ret_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %gsi.addr = alloca %struct.gsi_s*, align 8
  %key.addr = alloca i8*, align 8
  %ret_seqfile.addr = alloca i8*, align 8
  %ret_format.addr = alloca i32*, align 8
  %ret_offset.addr = alloca i64*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %mid = alloca i32, align 4
  %cmp = alloca i32, align 4
  %name = alloca [33 x i8], align 16
  %offset = alloca i32, align 4
  %filenum = alloca i16, align 2
  %fmt = alloca i32, align 4
  store %struct.gsi_s* %gsi, %struct.gsi_s** %gsi.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %ret_seqfile, i8** %ret_seqfile.addr, align 8
  store i32* %ret_format, i32** %ret_format.addr, align 8
  store i64* %ret_offset, i64** %ret_offset.addr, align 8
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %name, i32 0, i64 32
  store i8 0, i8* %arrayidx, align 1
  %0 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %nfiles = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %0, i32 0, i32 1
  %1 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %1 to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, i32* %left, align 4
  %2 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %nfiles1 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %2, i32 0, i32 1
  %3 = load i16, i16* %nfiles1, align 2
  %conv2 = zext i16 %3 to i32
  %4 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %recnum = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %4, i32 0, i32 2
  %5 = load i32, i32* %recnum, align 4
  %add3 = add i32 %conv2, %5
  store i32 %add3, i32* %right, align 4
  %6 = load i32, i32* %left, align 4
  %7 = load i32, i32* %right, align 4
  %add4 = add i32 %6, %7
  %div = udiv i32 %add4, 2
  store i32 %div, i32* %mid, align 4
  %8 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %8, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp, align 8
  %10 = load i32, i32* %mid, align 4
  %mul = mul i32 %10, 38
  %conv5 = zext i32 %mul to i64
  %call = call i32 @fseek(%struct._IO_FILE* %9, i64 %conv5, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %11 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %name, i32 0, i32 0
  %call6 = call i32 @GSIGetRecord(%struct.gsi_s* %11, i8* %arraydecay, i16* %filenum, i32* %offset)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [33 x i8], [33 x i8]* %name, i32 0, i32 0
  %12 = load i8*, i8** %key.addr, align 8
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* %12) #5
  store i32 %call8, i32* %cmp, align 4
  %13 = load i32, i32* %cmp, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %left, align 4
  %15 = load i32, i32* %right, align 4
  %cmp11 = icmp uge i32 %14, %15
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  %16 = load i32, i32* %cmp, align 4
  %cmp15 = icmp slt i32 %16, 0
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.14
  %17 = load i32, i32* %mid, align 4
  %add18 = add i32 %17, 1
  store i32 %add18, i32* %left, align 4
  br label %if.end.23

if.else.19:                                       ; preds = %if.else.14
  %18 = load i32, i32* %cmp, align 4
  %cmp20 = icmp sgt i32 %18, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.19
  %19 = load i32, i32* %mid, align 4
  %sub = sub i32 %19, 1
  store i32 %sub, i32* %right, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  %20 = load i32, i32* %left, align 4
  %21 = load i32, i32* %right, align 4
  %add26 = add i32 %20, %21
  %div27 = udiv i32 %add26, 2
  store i32 %div27, i32* %mid, align 4
  %22 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp28 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %22, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp28, align 8
  %24 = load i32, i32* %mid, align 4
  %mul29 = mul i32 %24, 38
  %conv30 = zext i32 %mul29 to i64
  %call31 = call i32 @fseek(%struct._IO_FILE* %23, i64 %conv30, i32 0)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %25 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp32 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %25, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp32, align 8
  %27 = load i16, i16* %filenum, align 2
  %conv33 = zext i16 %27 to i32
  %mul34 = mul nsw i32 %conv33, 38
  %conv35 = sext i32 %mul34 to i64
  %call36 = call i32 @fseek(%struct._IO_FILE* %26, i64 %conv35, i32 0)
  %28 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %29 = load i8*, i8** %ret_seqfile.addr, align 8
  %call37 = call i32 @GSIGetRecord(%struct.gsi_s* %28, i8* %29, i16* null, i32* %fmt)
  %30 = load i32, i32* %fmt, align 4
  %31 = load i32*, i32** %ret_format.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %offset, align 4
  %conv38 = zext i32 %32 to i64
  %33 = load i64*, i64** %ret_offset.addr, align 8
  store i64 %conv38, i64* %33, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.13
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @GSIClose(%struct.gsi_s* %gsi) #0 {
entry:
  %gsi.addr = alloca %struct.gsi_s*, align 8
  store %struct.gsi_s* %gsi, %struct.gsi_s** %gsi.addr, align 8
  %0 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %gsifp = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %gsifp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  %2 = load %struct.gsi_s*, %struct.gsi_s** %gsi.addr, align 8
  %3 = bitcast %struct.gsi_s* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.gsiindex_s* @GSIAllocIndex() #0 {
entry:
  %g = alloca %struct.gsiindex_s*, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 200, i64 40)
  %0 = bitcast i8* %call to %struct.gsiindex_s*
  store %struct.gsiindex_s* %0, %struct.gsiindex_s** %g, align 8
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 201, i64 80)
  %1 = bitcast i8* %call1 to i8**
  %2 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  %filenames = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %2, i32 0, i32 0
  store i8** %1, i8*** %filenames, align 8
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 202, i64 40)
  %3 = bitcast i8* %call2 to i32*
  %4 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  %fmt = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %4, i32 0, i32 1
  store i32* %3, i32** %fmt, align 8
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 203, i64 4000)
  %5 = bitcast i8* %call3 to %struct.gsikey_s*
  %6 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  %elems = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %6, i32 0, i32 3
  store %struct.gsikey_s* %5, %struct.gsikey_s** %elems, align 8
  %7 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  %nfiles = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %7, i32 0, i32 2
  store i16 0, i16* %nfiles, align 2
  %8 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  %nkeys = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %8, i32 0, i32 4
  store i32 0, i32* %nkeys, align 4
  %9 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g, align 8
  ret %struct.gsiindex_s* %9
}

; Function Attrs: nounwind uwtable
define void @GSIFreeIndex(%struct.gsiindex_s* %g) #0 {
entry:
  %g.addr = alloca %struct.gsiindex_s*, align 8
  %i = alloca i32, align 4
  store %struct.gsiindex_s* %g, %struct.gsiindex_s** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %1, i32 0, i32 2
  %2 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %4, i32 0, i32 0
  %5 = load i8**, i8*** %filenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames2 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %8, i32 0, i32 0
  %9 = load i8**, i8*** %filenames2, align 8
  %10 = bitcast i8** %9 to i8*
  call void @free(i8* %10) #4
  %11 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %fmt = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %11, i32 0, i32 1
  %12 = load i32*, i32** %fmt, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %14, i32 0, i32 3
  %15 = load %struct.gsikey_s*, %struct.gsikey_s** %elems, align 8
  %16 = bitcast %struct.gsikey_s* %15 to i8*
  call void @free(i8* %16) #4
  %17 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %18 = bitcast %struct.gsiindex_s* %17 to i8*
  call void @free(i8* %18) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @GSIAddFileToIndex(%struct.gsiindex_s* %g, i8* %filename, i32 %fmt) #0 {
entry:
  %g.addr = alloca %struct.gsiindex_s*, align 8
  %filename.addr = alloca i8*, align 8
  %fmt.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.gsiindex_s* %g, %struct.gsiindex_s** %g.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp sge i32 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i32, i32* %len, align 4
  %call2 = call i8* @sre_strdup(i8* %2, i32 %3)
  %4 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %4, i32 0, i32 2
  %5 = load i16, i16* %nfiles, align 2
  %idxprom = zext i16 %5 to i64
  %6 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %6, i32 0, i32 0
  %7 = load i8**, i8*** %filenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* %call2, i8** %arrayidx, align 8
  %8 = load i32, i32* %fmt.addr, align 4
  %9 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles3 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %9, i32 0, i32 2
  %10 = load i16, i16* %nfiles3, align 2
  %idxprom4 = zext i16 %10 to i64
  %11 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %fmt5 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %11, i32 0, i32 1
  %12 = load i32*, i32** %fmt5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  store i32 %8, i32* %arrayidx6, align 4
  %13 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles7 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %13, i32 0, i32 2
  %14 = load i16, i16* %nfiles7, align 2
  %inc = add i16 %14, 1
  store i16 %inc, i16* %nfiles7, align 2
  %15 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles8 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %15, i32 0, i32 2
  %16 = load i16, i16* %nfiles8, align 2
  %conv9 = zext i16 %16 to i32
  %rem = srem i32 %conv9, 10
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %if.end
  %17 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames13 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %17, i32 0, i32 0
  %18 = load i8**, i8*** %filenames13, align 8
  %19 = bitcast i8** %18 to i8*
  %20 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles14 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %20, i32 0, i32 2
  %21 = load i16, i16* %nfiles14, align 2
  %conv15 = zext i16 %21 to i32
  %add = add nsw i32 %conv15, 10
  %conv16 = sext i32 %add to i64
  %mul = mul i64 8, %conv16
  %call17 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 229, i8* %19, i64 %mul)
  %22 = bitcast i8* %call17 to i8**
  %23 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames18 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %23, i32 0, i32 0
  store i8** %22, i8*** %filenames18, align 8
  %24 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %fmt19 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %24, i32 0, i32 1
  %25 = load i32*, i32** %fmt19, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles20 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %27, i32 0, i32 2
  %28 = load i16, i16* %nfiles20, align 2
  %conv21 = zext i16 %28 to i32
  %add22 = add nsw i32 %conv21, 10
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 4, %conv23
  %call25 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 230, i8* %26, i64 %mul24)
  %29 = bitcast i8* %call25 to i32*
  %30 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %fmt26 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %30, i32 0, i32 1
  store i32* %29, i32** %fmt26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.12, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @Die(i8*, ...) #1

declare i8* @sre_strdup(i8*, i32) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @GSIAddKeyToIndex(%struct.gsiindex_s* %g, i8* %key, i32 %filenum, i64 %offset) #0 {
entry:
  %g.addr = alloca %struct.gsiindex_s*, align 8
  %key.addr = alloca i8*, align 8
  %filenum.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  store %struct.gsiindex_s* %g, %struct.gsiindex_s** %g.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %filenum, i32* %filenum.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %cmp = icmp uge i64 %call, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %filenum.addr, align 4
  %cmp1 = icmp sgt i32 %1, 65535
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i64, i64* %offset.addr, align 8
  %cmp4 = icmp sgt i64 %2, 4294967295
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %3, i32 0, i32 4
  %4 = load i32, i32* %nkeys, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %5, i32 0, i32 3
  %6 = load %struct.gsikey_s*, %struct.gsikey_s** %elems, align 8
  %arrayidx = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %6, i64 %idxprom
  %key7 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key7, i32 0, i32 0
  %7 = load i8*, i8** %key.addr, align 8
  %call8 = call i8* @strncpy(i8* %arraydecay, i8* %7, i64 31) #4
  %8 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys9 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %8, i32 0, i32 4
  %9 = load i32, i32* %nkeys9, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems11 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %10, i32 0, i32 3
  %11 = load %struct.gsikey_s*, %struct.gsikey_s** %elems11, align 8
  %arrayidx12 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %11, i64 %idxprom10
  %key13 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* %key13, i32 0, i64 31
  store i8 0, i8* %arrayidx14, align 1
  %12 = load i32, i32* %filenum.addr, align 4
  %conv = trunc i32 %12 to i16
  %13 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys15 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %13, i32 0, i32 4
  %14 = load i32, i32* %nkeys15, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems17 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %15, i32 0, i32 3
  %16 = load %struct.gsikey_s*, %struct.gsikey_s** %elems17, align 8
  %arrayidx18 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %16, i64 %idxprom16
  %filenum19 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx18, i32 0, i32 1
  store i16 %conv, i16* %filenum19, align 2
  %17 = load i64, i64* %offset.addr, align 8
  %conv20 = trunc i64 %17 to i32
  %18 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys21 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %18, i32 0, i32 4
  %19 = load i32, i32* %nkeys21, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems23 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %20, i32 0, i32 3
  %21 = load %struct.gsikey_s*, %struct.gsikey_s** %elems23, align 8
  %arrayidx24 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %21, i64 %idxprom22
  %offset25 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx24, i32 0, i32 2
  store i32 %conv20, i32* %offset25, align 4
  %22 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys26 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %22, i32 0, i32 4
  %23 = load i32, i32* %nkeys26, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %nkeys26, align 4
  %24 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys27 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %24, i32 0, i32 4
  %25 = load i32, i32* %nkeys27, align 4
  %rem = srem i32 %25, 100
  %cmp28 = icmp eq i32 %rem, 0
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.6
  %26 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems31 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %26, i32 0, i32 3
  %27 = load %struct.gsikey_s*, %struct.gsikey_s** %elems31, align 8
  %28 = bitcast %struct.gsikey_s* %27 to i8*
  %29 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys32 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %29, i32 0, i32 4
  %30 = load i32, i32* %nkeys32, align 4
  %add = add nsw i32 %30, 100
  %conv33 = sext i32 %add to i64
  %mul = mul i64 40, %conv33
  %call34 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 247, i8* %28, i64 %mul)
  %31 = bitcast i8* %call34 to %struct.gsikey_s*
  %32 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems35 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %32, i32 0, i32 3
  store %struct.gsikey_s* %31, %struct.gsikey_s** %elems35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %if.end.6
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @GSISortIndex(%struct.gsiindex_s* %g) #0 {
entry:
  %g.addr = alloca %struct.gsiindex_s*, align 8
  store %struct.gsiindex_s* %g, %struct.gsiindex_s** %g.addr, align 8
  %0 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %0, i32 0, i32 3
  %1 = load %struct.gsikey_s*, %struct.gsikey_s** %elems, align 8
  %2 = bitcast %struct.gsikey_s* %1 to i8*
  %3 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %3, i32 0, i32 4
  %4 = load i32, i32* %nkeys, align 4
  %call = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %2, i32 %4, i64 40, i32 (i8*, i8*)* @gsi_keysorter)
  ret void
}

declare i32 @specqsort(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gsi_keysorter(i8* %k1, i8* %k2) #0 {
entry:
  %k1.addr = alloca i8*, align 8
  %k2.addr = alloca i8*, align 8
  %key1 = alloca %struct.gsikey_s*, align 8
  %key2 = alloca %struct.gsikey_s*, align 8
  store i8* %k1, i8** %k1.addr, align 8
  store i8* %k2, i8** %k2.addr, align 8
  %0 = load i8*, i8** %k1.addr, align 8
  %1 = bitcast i8* %0 to %struct.gsikey_s*
  store %struct.gsikey_s* %1, %struct.gsikey_s** %key1, align 8
  %2 = load i8*, i8** %k2.addr, align 8
  %3 = bitcast i8* %2 to %struct.gsikey_s*
  store %struct.gsikey_s* %3, %struct.gsikey_s** %key2, align 8
  %4 = load %struct.gsikey_s*, %struct.gsikey_s** %key1, align 8
  %key = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %5 = load %struct.gsikey_s*, %struct.gsikey_s** %key2, align 8
  %key3 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %5, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %key3, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @GSIWriteIndex(%struct._IO_FILE* %fp, %struct.gsiindex_s* %g) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %g.addr = alloca %struct.gsiindex_s*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.gsiindex_s* %g, %struct.gsiindex_s** %g.addr, align 8
  %0 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %0, i32 0, i32 2
  %1 = load i16, i16* %nfiles, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %2, i32 0, i32 4
  %3 = load i32, i32* %nkeys, align 4
  %cmp2 = icmp ugt i32 %3, -1
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles6 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %5, i32 0, i32 2
  %6 = load i16, i16* %nfiles6, align 2
  %conv7 = zext i16 %6 to i32
  %7 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys8 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %7, i32 0, i32 4
  %8 = load i32, i32* %nkeys8, align 4
  %conv9 = sext i32 %8 to i64
  call void @GSIWriteHeader(%struct._IO_FILE* %4, i32 %conv7, i64 %conv9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nfiles10 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %10, i32 0, i32 2
  %11 = load i16, i16* %nfiles10, align 2
  %conv11 = zext i16 %11 to i32
  %cmp12 = icmp ult i32 %9, %conv11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %filenames = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %14, i32 0, i32 0
  %15 = load i8**, i8*** %filenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  %17 = load i32, i32* %i, align 4
  %add = add i32 %17, 1
  %18 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %18 to i64
  %19 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %fmt = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %19, i32 0, i32 1
  %20 = load i32*, i32** %fmt, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %call = call i32 @GSIWriteFileRecord(%struct._IO_FILE* %12, i8* %16, i32 %add, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.32, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %nkeys17 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %24, i32 0, i32 4
  %25 = load i32, i32* %nkeys17, align 4
  %cmp18 = icmp ult i32 %23, %25
  br i1 %cmp18, label %for.body.20, label %for.end.34

for.body.20:                                      ; preds = %for.cond.16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %27 to i64
  %28 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %28, i32 0, i32 3
  %29 = load %struct.gsikey_s*, %struct.gsikey_s** %elems, align 8
  %arrayidx22 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %29, i64 %idxprom21
  %key = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx22, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %30 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %30 to i64
  %31 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems24 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %31, i32 0, i32 3
  %32 = load %struct.gsikey_s*, %struct.gsikey_s** %elems24, align 8
  %arrayidx25 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %32, i64 %idxprom23
  %filenum = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx25, i32 0, i32 1
  %33 = load i16, i16* %filenum, align 2
  %conv26 = zext i16 %33 to i32
  %34 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %34 to i64
  %35 = load %struct.gsiindex_s*, %struct.gsiindex_s** %g.addr, align 8
  %elems28 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %35, i32 0, i32 3
  %36 = load %struct.gsikey_s*, %struct.gsikey_s** %elems28, align 8
  %arrayidx29 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %36, i64 %idxprom27
  %offset = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %arrayidx29, i32 0, i32 2
  %37 = load i32, i32* %offset, align 4
  %conv30 = zext i32 %37 to i64
  %call31 = call i32 @GSIWriteKeyRecord(%struct._IO_FILE* %26, i8* %arraydecay, i32 %conv26, i64 %conv30)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.20
  %38 = load i32, i32* %i, align 4
  %inc33 = add i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.16

for.end.34:                                       ; preds = %for.cond.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @GSIWriteHeader(%struct._IO_FILE* %fp, i32 %nfiles, i64 %nkeys) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nfiles.addr = alloca i32, align 4
  %nkeys.addr = alloca i64, align 8
  %key = alloca [32 x i8], align 16
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %nfiles, i32* %nfiles.addr, align 4
  store i64 %nkeys, i64* %nkeys.addr, align 8
  %0 = load i32, i32* %nfiles.addr, align 4
  %cmp = icmp sgt i32 %0, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %nkeys.addr, align 8
  %cmp1 = icmp sgt i64 %1, 4294967295
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %nfiles.addr, align 4
  %conv = trunc i32 %2 to i16
  store i16 %conv, i16* %f1, align 2
  %3 = load i64, i64* %nkeys.addr, align 8
  %conv4 = trunc i64 %3 to i32
  store i32 %conv4, i32* %f2, align 4
  %4 = load i16, i16* %f1, align 2
  %call = call zeroext i16 @sre_hton16(i16 zeroext %4)
  store i16 %call, i16* %f1, align 2
  %5 = load i32, i32* %f2, align 4
  %call5 = call i32 @sre_hton32(i32 %5)
  store i32 %call5, i32* %f2, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #4
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i64 @fwrite(i8* %arraydecay7, i64 1, i64 32, %struct._IO_FILE* %6)
  %cmp9 = icmp ult i64 %call8, 32
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.3
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 314)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.3
  %7 = bitcast i16* %f1 to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i64 @fwrite(i8* %7, i64 2, i64 1, %struct._IO_FILE* %8)
  %cmp14 = icmp ult i64 %call13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 315)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.12
  %9 = bitcast i32* %f2 to i8*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call i64 @fwrite(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10)
  %cmp19 = icmp ult i64 %call18, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 316)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GSIWriteFileRecord(%struct._IO_FILE* %fp, i8* %fname, i32 %idx, i32 %fmt) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %fname.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %fmt.addr = alloca i32, align 4
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %fmt, i32* %fmt.addr, align 4
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %cmp = icmp uge i64 %call, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %idx.addr, align 4
  %cmp1 = icmp sgt i32 %1, 65535
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %fmt.addr, align 4
  %cmp4 = icmp ugt i32 %2, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load i32, i32* %idx.addr, align 4
  %conv = trunc i32 %3 to i16
  store i16 %conv, i16* %f1, align 2
  %4 = load i32, i32* %fmt.addr, align 4
  store i32 %4, i32* %f2, align 4
  %5 = load i16, i16* %f1, align 2
  %call7 = call zeroext i16 @sre_hton16(i16 zeroext %5)
  store i16 %call7, i16* %f1, align 2
  %6 = load i32, i32* %f2, align 4
  %call8 = call i32 @sre_hton32(i32 %6)
  store i32 %call8, i32* %f2, align 4
  %7 = load i8*, i8** %fname.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i64 @fwrite(i8* %7, i64 1, i64 32, %struct._IO_FILE* %8)
  %cmp10 = icmp ult i64 %call9, 32
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 347)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.6
  %9 = bitcast i16* %f1 to i8*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i64 @fwrite(i8* %9, i64 2, i64 1, %struct._IO_FILE* %10)
  %cmp15 = icmp ult i64 %call14, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 348)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  %11 = bitcast i32* %f2 to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i64 @fwrite(i8* %11, i64 4, i64 1, %struct._IO_FILE* %12)
  %cmp20 = icmp ult i64 %call19, 1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 349)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @GSIWriteKeyRecord(%struct._IO_FILE* %fp, i8* %key, i32 %fileidx, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %key.addr = alloca i8*, align 8
  %fileidx.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fileidx, i32* %fileidx.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %cmp = icmp uge i64 %call, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fileidx.addr, align 4
  %cmp1 = icmp sgt i32 %1, 65535
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i64, i64* %offset.addr, align 8
  %cmp4 = icmp sgt i64 %2, 4294967295
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load i32, i32* %fileidx.addr, align 4
  %conv = trunc i32 %3 to i16
  store i16 %conv, i16* %f1, align 2
  %4 = load i64, i64* %offset.addr, align 8
  %conv7 = trunc i64 %4 to i32
  store i32 %conv7, i32* %f2, align 4
  %5 = load i16, i16* %f1, align 2
  %call8 = call zeroext i16 @sre_hton16(i16 zeroext %5)
  store i16 %call8, i16* %f1, align 2
  %6 = load i32, i32* %f2, align 4
  %call9 = call i32 @sre_hton32(i32 %6)
  store i32 %call9, i32* %f2, align 4
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i64 @fwrite(i8* %7, i64 1, i64 32, %struct._IO_FILE* %8)
  %cmp11 = icmp ult i64 %call10, 32
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 382)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.6
  %9 = bitcast i16* %f1 to i8*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i64 @fwrite(i8* %9, i64 2, i64 1, %struct._IO_FILE* %10)
  %cmp16 = icmp ult i64 %call15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 383)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  %11 = bitcast i32* %f2 to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i64 @fwrite(i8* %11, i64 4, i64 1, %struct._IO_FILE* %12)
  %cmp21 = icmp ult i64 %call20, 1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 384)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.19
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare zeroext i16 @sre_hton16(i16 zeroext) #1

declare i32 @sre_hton32(i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @Panic(i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
