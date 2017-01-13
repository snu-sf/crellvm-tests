; ModuleID = './plug-ins/file-fli/fli.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._fli_header = type { i64, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i16, i16, i64, i64 }
%struct._fli_frame = type { i64, i16, i16 }
%struct._fli_chunk = type { i64, i16, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"error: magic number is wrong !\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"error: magic number in header is wrong !\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fli_read_header(%struct._IO_FILE* %f, %struct._fli_header* %fli_header) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fli_read_long(%struct._IO_FILE* %0)
  %1 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %filesize = getelementptr inbounds %struct._fli_header, %struct._fli_header* %1, i32 0, i32 0
  store i64 %call, i64* %filesize, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %2)
  %3 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic = getelementptr inbounds %struct._fli_header, %struct._fli_header* %3, i32 0, i32 1
  store i16 %call1, i16* %magic, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %4)
  %5 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %frames = getelementptr inbounds %struct._fli_header, %struct._fli_header* %5, i32 0, i32 2
  store i16 %call2, i16* %frames, align 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %6)
  %7 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %7, i32 0, i32 3
  store i16 %call3, i16* %width, align 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %8)
  %9 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %9, i32 0, i32 4
  store i16 %call4, i16* %height, align 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call5 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %10)
  %11 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %depth = getelementptr inbounds %struct._fli_header, %struct._fli_header* %11, i32 0, i32 5
  store i16 %call5, i16* %depth, align 2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %12)
  %13 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %flags = getelementptr inbounds %struct._fli_header, %struct._fli_header* %13, i32 0, i32 6
  store i16 %call6, i16* %flags, align 2
  %14 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic7 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %14, i32 0, i32 1
  %15 = load i16, i16* %magic7, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp eq i32 %conv, 44817
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call9 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %16)
  %conv10 = zext i16 %call9 to i32
  %mul = mul nsw i32 %conv10, 14
  %conv11 = sext i32 %mul to i64
  %17 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %speed = getelementptr inbounds %struct._fli_header, %struct._fli_header* %17, i32 0, i32 7
  store i64 %conv11, i64* %speed, align 8
  br label %if.end.22

if.else:                                          ; preds = %entry
  %18 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic12 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %18, i32 0, i32 1
  %19 = load i16, i16* %magic12, align 2
  %conv13 = zext i16 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 44818
  br i1 %cmp14, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call17 = call i64 @fli_read_long(%struct._IO_FILE* %20)
  %21 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %speed18 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %21, i32 0, i32 7
  store i64 %call17, i64* %speed18, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %23 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic21 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %23, i32 0, i32 1
  store i16 0, i16* %magic21, align 2
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %24 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width23 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %24, i32 0, i32 3
  %25 = load i16, i16* %width23, align 2
  %conv24 = zext i16 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.22
  %26 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width28 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %26, i32 0, i32 3
  store i16 320, i16* %width28, align 2
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.22
  %27 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height30 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %27, i32 0, i32 4
  %28 = load i16, i16* %height30, align 2
  %conv31 = zext i16 %28 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.29
  %29 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height35 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %29, i32 0, i32 4
  store i16 200, i16* %height35, align 2
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @fli_read_long(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %b = alloca [4 x i8], align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = bitcast [4 x i8]* %b to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 4, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 3
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %conv1 = sext i32 %shl to i64
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 2
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl i32 %conv3, 16
  %conv5 = sext i32 %shl4 to i64
  %or = or i64 %conv1, %conv5
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 1
  %4 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %4 to i32
  %shl8 = shl i32 %conv7, 8
  %conv9 = sext i32 %shl8 to i64
  %or10 = or i64 %or, %conv9
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 0
  %5 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %5 to i64
  %or13 = or i64 %or10, %conv12
  ret i64 %or13
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @fli_read_short(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %b = alloca [2 x i8], align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = bitcast [2 x i8]* %b to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 2, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 8
  %conv1 = trunc i32 %shl to i16
  %conv2 = zext i16 %conv1 to i32
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 0
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %or = or i32 %conv2, %conv4
  %conv5 = trunc i32 %or to i16
  ret i16 %conv5
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @fli_write_header(%struct._IO_FILE* %f, %struct._fli_header* %fli_header) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  %1 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %filesize = getelementptr inbounds %struct._fli_header, %struct._fli_header* %1, i32 0, i32 0
  store i64 %call, i64* %filesize, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 0)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %4 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %filesize2 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %4, i32 0, i32 0
  %5 = load i64, i64* %filesize2, align 8
  call void @fli_write_long(%struct._IO_FILE* %3, i64 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %7 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic = getelementptr inbounds %struct._fli_header, %struct._fli_header* %7, i32 0, i32 1
  %8 = load i16, i16* %magic, align 2
  call void @fli_write_short(%struct._IO_FILE* %6, i16 zeroext %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %10 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %frames = getelementptr inbounds %struct._fli_header, %struct._fli_header* %10, i32 0, i32 2
  %11 = load i16, i16* %frames, align 2
  call void @fli_write_short(%struct._IO_FILE* %9, i16 zeroext %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %13 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %13, i32 0, i32 3
  %14 = load i16, i16* %width, align 2
  call void @fli_write_short(%struct._IO_FILE* %12, i16 zeroext %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %16 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %16, i32 0, i32 4
  %17 = load i16, i16* %height, align 2
  call void @fli_write_short(%struct._IO_FILE* %15, i16 zeroext %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %19 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %depth = getelementptr inbounds %struct._fli_header, %struct._fli_header* %19, i32 0, i32 5
  %20 = load i16, i16* %depth, align 2
  call void @fli_write_short(%struct._IO_FILE* %18, i16 zeroext %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %22 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %flags = getelementptr inbounds %struct._fli_header, %struct._fli_header* %22, i32 0, i32 6
  %23 = load i16, i16* %flags, align 2
  call void @fli_write_short(%struct._IO_FILE* %21, i16 zeroext %23)
  %24 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic3 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %24, i32 0, i32 1
  %25 = load i16, i16* %magic3, align 2
  %conv = zext i16 %25 to i32
  %cmp = icmp eq i32 %conv, 44817
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %27 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %speed = getelementptr inbounds %struct._fli_header, %struct._fli_header* %27, i32 0, i32 7
  %28 = load i64, i64* %speed, align 8
  %div = udiv i64 %28, 14
  %conv5 = trunc i64 %div to i16
  call void @fli_write_short(%struct._IO_FILE* %26, i16 zeroext %conv5)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %29 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic6 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %29, i32 0, i32 1
  %30 = load i16, i16* %magic6, align 2
  %conv7 = zext i16 %30 to i32
  %cmp8 = icmp eq i32 %conv7, 44818
  br i1 %cmp8, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %32 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %speed11 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %32, i32 0, i32 7
  %33 = load i64, i64* %speed11, align 8
  call void @fli_write_long(%struct._IO_FILE* %31, i64 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call12 = call i32 @fseek(%struct._IO_FILE* %34, i64 80, i32 0)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %36 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %oframe1 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %36, i32 0, i32 13
  %37 = load i64, i64* %oframe1, align 8
  call void @fli_write_long(%struct._IO_FILE* %35, i64 %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %39 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %oframe2 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %39, i32 0, i32 14
  %40 = load i64, i64* %oframe2, align 8
  call void @fli_write_long(%struct._IO_FILE* %38, i64 %40)
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  ret void
}

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fli_write_long(%struct._IO_FILE* %f, i64 %l) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %l.addr = alloca i64, align 8
  %b = alloca [4 x i8], align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load i64, i64* %l.addr, align 8
  %and = and i64 %0, 255
  %conv = trunc i64 %and to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %1 = load i64, i64* %l.addr, align 8
  %shr = lshr i64 %1, 8
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %2 = load i64, i64* %l.addr, align 8
  %shr4 = lshr i64 %2, 16
  %and5 = and i64 %shr4, 255
  %conv6 = trunc i64 %and5 to i8
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1
  %3 = load i64, i64* %l.addr, align 8
  %shr8 = lshr i64 %3, 24
  %and9 = and i64 %shr8, 255
  %conv10 = trunc i64 %and9 to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1
  %4 = bitcast [4 x i8]* %b to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %4, i64 1, i64 4, %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fli_write_short(%struct._IO_FILE* %f, i16 zeroext %w) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %w.addr = alloca i16, align 2
  %b = alloca [2 x i8], align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i16 %w, i16* %w.addr, align 2
  %0 = load i16, i16* %w.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %1 = load i16, i16* %w.addr, align 2
  %conv2 = zext i16 %1 to i32
  %shr = ashr i32 %conv2, 8
  %and3 = and i32 %shr, 255
  %conv4 = trunc i32 %and3 to i8
  %arrayidx5 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %2 = bitcast [2 x i8]* %b to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %2, i64 1, i64 2, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_frame(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_framebuf, i8* %old_cmap, i8* %framebuf, i8* %cmap) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_framebuf.addr = alloca i8*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %framebuf.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %fli_frame = alloca %struct._fli_frame, align 8
  %framepos = alloca i64, align 8
  %c = alloca i32, align 4
  %chunk = alloca %struct._fli_chunk, align 8
  %chunkpos = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_framebuf, i8** %old_framebuf.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %framepos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fli_read_long(%struct._IO_FILE* %1)
  %size = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 0
  store i64 %call1, i64* %size, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %2)
  %magic = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 1
  store i16 %call2, i16* %magic, align 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %3)
  %chunks = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  store i16 %call3, i16* %chunks, align 2
  %magic4 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 1
  %4 = load i16, i16* %magic4, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 61946
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %6 = load i64, i64* %framepos, align 8
  %add = add i64 %6, 16
  %call6 = call i32 @fseek(%struct._IO_FILE* %5, i64 %add, i32 0)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %c, align 4
  %chunks7 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  %8 = load i16, i16* %chunks7, align 2
  %conv8 = zext i16 %8 to i32
  %cmp9 = icmp slt i32 %7, %conv8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call i64 @ftell(%struct._IO_FILE* %9)
  store i64 %call11, i64* %chunkpos, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call12 = call i64 @fli_read_long(%struct._IO_FILE* %10)
  %size13 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %call12, i64* %size13, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call14 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %11)
  %magic15 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 %call14, i16* %magic15, align 2
  %magic16 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %12 = load i16, i16* %magic16, align 2
  %conv17 = zext i16 %12 to i32
  switch i32 %conv17, label %sw.default [
    i32 11, label %sw.bb
    i32 4, label %sw.bb.18
    i32 13, label %sw.bb.19
    i32 15, label %sw.bb.20
    i32 16, label %sw.bb.21
    i32 12, label %sw.bb.22
    i32 7, label %sw.bb.23
    i32 18, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %14 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %15 = load i8*, i8** %old_cmap.addr, align 8
  %16 = load i8*, i8** %cmap.addr, align 8
  call void @fli_read_color(%struct._IO_FILE* %13, %struct._fli_header* %14, i8* %15, i8* %16)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %18 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %19 = load i8*, i8** %old_cmap.addr, align 8
  %20 = load i8*, i8** %cmap.addr, align 8
  call void @fli_read_color_2(%struct._IO_FILE* %17, %struct._fli_header* %18, i8* %19, i8* %20)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %22 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %23 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_read_black(%struct._IO_FILE* %21, %struct._fli_header* %22, i8* %23)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %25 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %26 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_read_brun(%struct._IO_FILE* %24, %struct._fli_header* %25, i8* %26)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %28 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %29 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_read_copy(%struct._IO_FILE* %27, %struct._fli_header* %28, i8* %29)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %for.body
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %31 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %32 = load i8*, i8** %old_framebuf.addr, align 8
  %33 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_read_lc(%struct._IO_FILE* %30, %struct._fli_header* %31, i8* %32, i8* %33)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %35 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %36 = load i8*, i8** %old_framebuf.addr, align 8
  %37 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_read_lc_2(%struct._IO_FILE* %34, %struct._fli_header* %35, i8* %36, i8* %37)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb
  %size25 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %38 = load i64, i64* %size25, align 8
  %and = and i64 %38, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %sw.epilog
  %size27 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %39 = load i64, i64* %size27, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %size27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.26, %sw.epilog
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %41 = load i64, i64* %chunkpos, align 8
  %size28 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %42 = load i64, i64* %size28, align 8
  %add29 = add i64 %41, %42
  %call30 = call i32 @fseek(%struct._IO_FILE* %40, i64 %add29, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %c, align 4
  %inc31 = add nsw i32 %43, 1
  store i32 %inc31, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %entry
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %45 = load i64, i64* %framepos, align 8
  %size33 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 0
  %46 = load i64, i64* %size33, align 8
  %add34 = add i64 %45, %46
  %call35 = call i32 @fseek(%struct._IO_FILE* %44, i64 %add34, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_color(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_cmap, i8* %cmap) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %num_packets = alloca i16, align 2
  %cnt_packets = alloca i16, align 2
  %col_pos = alloca i16, align 2
  %skip_col = alloca i16, align 2
  %num_col = alloca i16, align 2
  %col_cnt = alloca i16, align 2
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  store i16 0, i16* %col_pos, align 2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call zeroext i16 @fli_read_short(%struct._IO_FILE* %0)
  store i16 %call, i16* %num_packets, align 2
  %1 = load i16, i16* %num_packets, align 2
  store i16 %1, i16* %cnt_packets, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %2 = load i16, i16* %cnt_packets, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %3)
  %conv3 = zext i8 %call2 to i16
  store i16 %conv3, i16* %skip_col, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %4)
  %conv5 = zext i8 %call4 to i16
  store i16 %conv5, i16* %num_col, align 2
  %5 = load i16, i16* %num_col, align 2
  %conv6 = zext i16 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i16 0, i16* %col_pos, align 2
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %6 = load i16, i16* %col_pos, align 2
  %conv10 = zext i16 %6 to i32
  %cmp11 = icmp slt i32 %conv10, 768
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call14 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %7)
  %conv15 = zext i8 %call14 to i32
  %shl = shl i32 %conv15, 2
  %conv16 = trunc i32 %shl to i8
  %8 = load i16, i16* %col_pos, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 %conv16, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %10 = load i16, i16* %col_pos, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %col_pos, align 2
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.end.78

if.end:                                           ; preds = %for.body
  %11 = load i16, i16* %skip_col, align 2
  store i16 %11, i16* %col_cnt, align 2
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.40, %if.end
  %12 = load i16, i16* %col_cnt, align 2
  %conv18 = zext i16 %12 to i32
  %cmp19 = icmp sgt i32 %conv18, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.17
  %13 = load i16, i16* %col_pos, align 2
  %conv21 = zext i16 %13 to i32
  %cmp22 = icmp slt i32 %conv21, 768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.17
  %14 = phi i1 [ false, %for.cond.17 ], [ %cmp22, %land.rhs ]
  br i1 %14, label %for.body.24, label %for.end.41

for.body.24:                                      ; preds = %land.end
  %15 = load i16, i16* %col_pos, align 2
  %idxprom25 = zext i16 %15 to i64
  %16 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 %idxprom25
  %17 = load i8, i8* %arrayidx26, align 1
  %18 = load i16, i16* %col_pos, align 2
  %idxprom27 = zext i16 %18 to i64
  %19 = load i8*, i8** %cmap.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 %idxprom27
  store i8 %17, i8* %arrayidx28, align 1
  %20 = load i16, i16* %col_pos, align 2
  %inc29 = add i16 %20, 1
  store i16 %inc29, i16* %col_pos, align 2
  %21 = load i16, i16* %col_pos, align 2
  %idxprom30 = zext i16 %21 to i64
  %22 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 %idxprom30
  %23 = load i8, i8* %arrayidx31, align 1
  %24 = load i16, i16* %col_pos, align 2
  %idxprom32 = zext i16 %24 to i64
  %25 = load i8*, i8** %cmap.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 %idxprom32
  store i8 %23, i8* %arrayidx33, align 1
  %26 = load i16, i16* %col_pos, align 2
  %inc34 = add i16 %26, 1
  store i16 %inc34, i16* %col_pos, align 2
  %27 = load i16, i16* %col_pos, align 2
  %idxprom35 = zext i16 %27 to i64
  %28 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom35
  %29 = load i8, i8* %arrayidx36, align 1
  %30 = load i16, i16* %col_pos, align 2
  %idxprom37 = zext i16 %30 to i64
  %31 = load i8*, i8** %cmap.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %31, i64 %idxprom37
  store i8 %29, i8* %arrayidx38, align 1
  %32 = load i16, i16* %col_pos, align 2
  %inc39 = add i16 %32, 1
  store i16 %inc39, i16* %col_pos, align 2
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.24
  %33 = load i16, i16* %col_cnt, align 2
  %dec = add i16 %33, -1
  store i16 %dec, i16* %col_cnt, align 2
  br label %for.cond.17

for.end.41:                                       ; preds = %land.end
  %34 = load i16, i16* %num_col, align 2
  store i16 %34, i16* %col_cnt, align 2
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.73, %for.end.41
  %35 = load i16, i16* %col_cnt, align 2
  %conv43 = zext i16 %35 to i32
  %cmp44 = icmp sgt i32 %conv43, 0
  br i1 %cmp44, label %land.rhs.46, label %land.end.50

land.rhs.46:                                      ; preds = %for.cond.42
  %36 = load i16, i16* %col_pos, align 2
  %conv47 = zext i16 %36 to i32
  %cmp48 = icmp slt i32 %conv47, 768
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.46, %for.cond.42
  %37 = phi i1 [ false, %for.cond.42 ], [ %cmp48, %land.rhs.46 ]
  br i1 %37, label %for.body.51, label %for.end.75

for.body.51:                                      ; preds = %land.end.50
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call52 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %38)
  %conv53 = zext i8 %call52 to i32
  %shl54 = shl i32 %conv53, 2
  %conv55 = trunc i32 %shl54 to i8
  %39 = load i16, i16* %col_pos, align 2
  %inc56 = add i16 %39, 1
  store i16 %inc56, i16* %col_pos, align 2
  %idxprom57 = zext i16 %39 to i64
  %40 = load i8*, i8** %cmap.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %40, i64 %idxprom57
  store i8 %conv55, i8* %arrayidx58, align 1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call59 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %41)
  %conv60 = zext i8 %call59 to i32
  %shl61 = shl i32 %conv60, 2
  %conv62 = trunc i32 %shl61 to i8
  %42 = load i16, i16* %col_pos, align 2
  %inc63 = add i16 %42, 1
  store i16 %inc63, i16* %col_pos, align 2
  %idxprom64 = zext i16 %42 to i64
  %43 = load i8*, i8** %cmap.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %43, i64 %idxprom64
  store i8 %conv62, i8* %arrayidx65, align 1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call66 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %44)
  %conv67 = zext i8 %call66 to i32
  %shl68 = shl i32 %conv67, 2
  %conv69 = trunc i32 %shl68 to i8
  %45 = load i16, i16* %col_pos, align 2
  %inc70 = add i16 %45, 1
  store i16 %inc70, i16* %col_pos, align 2
  %idxprom71 = zext i16 %45 to i64
  %46 = load i8*, i8** %cmap.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %46, i64 %idxprom71
  store i8 %conv69, i8* %arrayidx72, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.51
  %47 = load i16, i16* %col_cnt, align 2
  %dec74 = add i16 %47, -1
  store i16 %dec74, i16* %col_cnt, align 2
  br label %for.cond.42

for.end.75:                                       ; preds = %land.end.50
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %48 = load i16, i16* %cnt_packets, align 2
  %dec77 = add i16 %48, -1
  store i16 %dec77, i16* %cnt_packets, align 2
  br label %for.cond

for.end.78:                                       ; preds = %for.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_color_2(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_cmap, i8* %cmap) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %num_packets = alloca i16, align 2
  %cnt_packets = alloca i16, align 2
  %col_pos = alloca i16, align 2
  %skip_col = alloca i16, align 2
  %num_col = alloca i16, align 2
  %col_cnt = alloca i16, align 2
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call zeroext i16 @fli_read_short(%struct._IO_FILE* %0)
  store i16 %call, i16* %num_packets, align 2
  store i16 0, i16* %col_pos, align 2
  %1 = load i16, i16* %num_packets, align 2
  store i16 %1, i16* %cnt_packets, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %2 = load i16, i16* %cnt_packets, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %3)
  %conv3 = zext i8 %call2 to i16
  store i16 %conv3, i16* %skip_col, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %4)
  %conv5 = zext i8 %call4 to i16
  store i16 %conv5, i16* %num_col, align 2
  %5 = load i16, i16* %num_col, align 2
  %conv6 = zext i16 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i16 0, i16* %col_pos, align 2
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %6 = load i16, i16* %col_pos, align 2
  %conv10 = zext i16 %6 to i32
  %cmp11 = icmp slt i32 %conv10, 768
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call14 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %7)
  %8 = load i16, i16* %col_pos, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 %call14, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %10 = load i16, i16* %col_pos, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %col_pos, align 2
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.end.67

if.end:                                           ; preds = %for.body
  %11 = load i16, i16* %skip_col, align 2
  store i16 %11, i16* %col_cnt, align 2
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.38, %if.end
  %12 = load i16, i16* %col_cnt, align 2
  %conv16 = zext i16 %12 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.15
  %13 = load i16, i16* %col_pos, align 2
  %conv19 = zext i16 %13 to i32
  %cmp20 = icmp slt i32 %conv19, 768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.15
  %14 = phi i1 [ false, %for.cond.15 ], [ %cmp20, %land.rhs ]
  br i1 %14, label %for.body.22, label %for.end.39

for.body.22:                                      ; preds = %land.end
  %15 = load i16, i16* %col_pos, align 2
  %idxprom23 = zext i16 %15 to i64
  %16 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %18 = load i16, i16* %col_pos, align 2
  %idxprom25 = zext i16 %18 to i64
  %19 = load i8*, i8** %cmap.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %19, i64 %idxprom25
  store i8 %17, i8* %arrayidx26, align 1
  %20 = load i16, i16* %col_pos, align 2
  %inc27 = add i16 %20, 1
  store i16 %inc27, i16* %col_pos, align 2
  %21 = load i16, i16* %col_pos, align 2
  %idxprom28 = zext i16 %21 to i64
  %22 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  %23 = load i8, i8* %arrayidx29, align 1
  %24 = load i16, i16* %col_pos, align 2
  %idxprom30 = zext i16 %24 to i64
  %25 = load i8*, i8** %cmap.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 %idxprom30
  store i8 %23, i8* %arrayidx31, align 1
  %26 = load i16, i16* %col_pos, align 2
  %inc32 = add i16 %26, 1
  store i16 %inc32, i16* %col_pos, align 2
  %27 = load i16, i16* %col_pos, align 2
  %idxprom33 = zext i16 %27 to i64
  %28 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %30 = load i16, i16* %col_pos, align 2
  %idxprom35 = zext i16 %30 to i64
  %31 = load i8*, i8** %cmap.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %idxprom35
  store i8 %29, i8* %arrayidx36, align 1
  %32 = load i16, i16* %col_pos, align 2
  %inc37 = add i16 %32, 1
  store i16 %inc37, i16* %col_pos, align 2
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.22
  %33 = load i16, i16* %col_cnt, align 2
  %dec = add i16 %33, -1
  store i16 %dec, i16* %col_cnt, align 2
  br label %for.cond.15

for.end.39:                                       ; preds = %land.end
  %34 = load i16, i16* %num_col, align 2
  store i16 %34, i16* %col_cnt, align 2
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.62, %for.end.39
  %35 = load i16, i16* %col_cnt, align 2
  %conv41 = zext i16 %35 to i32
  %cmp42 = icmp sgt i32 %conv41, 0
  br i1 %cmp42, label %land.rhs.44, label %land.end.48

land.rhs.44:                                      ; preds = %for.cond.40
  %36 = load i16, i16* %col_pos, align 2
  %conv45 = zext i16 %36 to i32
  %cmp46 = icmp slt i32 %conv45, 768
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.44, %for.cond.40
  %37 = phi i1 [ false, %for.cond.40 ], [ %cmp46, %land.rhs.44 ]
  br i1 %37, label %for.body.49, label %for.end.64

for.body.49:                                      ; preds = %land.end.48
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call50 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %38)
  %39 = load i16, i16* %col_pos, align 2
  %inc51 = add i16 %39, 1
  store i16 %inc51, i16* %col_pos, align 2
  %idxprom52 = zext i16 %39 to i64
  %40 = load i8*, i8** %cmap.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %40, i64 %idxprom52
  store i8 %call50, i8* %arrayidx53, align 1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call54 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %41)
  %42 = load i16, i16* %col_pos, align 2
  %inc55 = add i16 %42, 1
  store i16 %inc55, i16* %col_pos, align 2
  %idxprom56 = zext i16 %42 to i64
  %43 = load i8*, i8** %cmap.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %43, i64 %idxprom56
  store i8 %call54, i8* %arrayidx57, align 1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call58 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %44)
  %45 = load i16, i16* %col_pos, align 2
  %inc59 = add i16 %45, 1
  store i16 %inc59, i16* %col_pos, align 2
  %idxprom60 = zext i16 %45 to i64
  %46 = load i8*, i8** %cmap.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %46, i64 %idxprom60
  store i8 %call58, i8* %arrayidx61, align 1
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.49
  %47 = load i16, i16* %col_cnt, align 2
  %dec63 = add i16 %47, -1
  store i16 %dec63, i16* %col_cnt, align 2
  br label %for.cond.40

for.end.64:                                       ; preds = %land.end.48
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %48 = load i16, i16* %cnt_packets, align 2
  %dec66 = add i16 %48, -1
  store i16 %dec66, i16* %cnt_packets, align 2
  br label %for.cond

for.end.67:                                       ; preds = %for.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_black(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load i8*, i8** %framebuf.addr, align 8
  %1 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %1, i32 0, i32 3
  %2 = load i16, i16* %width, align 2
  %conv = zext i16 %2 to i32
  %3 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %3, i32 0, i32 4
  %4 = load i16, i16* %height, align 2
  %conv1 = zext i16 %4 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = sext i32 %mul to i64
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %conv2, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_brun(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  %yc = alloca i16, align 2
  %pos = alloca i8*, align 8
  %xc = alloca i16, align 2
  %pc = alloca i16, align 2
  %pcnt = alloca i16, align 2
  %ps = alloca i16, align 2
  %len = alloca i16, align 2
  %val = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  store i16 0, i16* %yc, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %0 = load i16, i16* %yc, align 2
  %conv = zext i16 %0 to i32
  %1 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %1, i32 0, i32 4
  %2 = load i16, i16* %height, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call zeroext i8 @fli_read_char(%struct._IO_FILE* %3)
  %conv3 = zext i8 %call to i16
  store i16 %conv3, i16* %pc, align 2
  store i16 0, i16* %xc, align 2
  %4 = load i8*, i8** %framebuf.addr, align 8
  %5 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %5, i32 0, i32 3
  %6 = load i16, i16* %width, align 2
  %conv4 = zext i16 %6 to i32
  %7 = load i16, i16* %yc, align 2
  %conv5 = zext i16 %7 to i32
  %mul = mul nsw i32 %conv4, %conv5
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %pos, align 8
  %8 = load i16, i16* %pc, align 2
  store i16 %8, i16* %pcnt, align 2
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.31, %for.body
  %9 = load i16, i16* %pcnt, align 2
  %conv7 = zext i16 %9 to i32
  %cmp8 = icmp sgt i32 %conv7, 0
  br i1 %cmp8, label %for.body.10, label %for.end.33

for.body.10:                                      ; preds = %for.cond.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %10)
  %conv12 = zext i8 %call11 to i16
  store i16 %conv12, i16* %ps, align 2
  %11 = load i16, i16* %ps, align 2
  %conv13 = zext i16 %11 to i32
  %and = and i32 %conv13, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %12 = load i16, i16* %ps, align 2
  %conv14 = trunc i16 %12 to i8
  %conv15 = sext i8 %conv14 to i32
  %sub = sub nsw i32 0, %conv15
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, i16* %len, align 2
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then
  %13 = load i16, i16* %len, align 2
  %conv18 = zext i16 %13 to i32
  %cmp19 = icmp sgt i32 %conv18, 0
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.17
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call22 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %14)
  %15 = load i16, i16* %xc, align 2
  %inc = add i16 %15, 1
  store i16 %inc, i16* %xc, align 2
  %idxprom = zext i16 %15 to i64
  %16 = load i8*, i8** %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 %call22, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %17 = load i16, i16* %len, align 2
  %dec = add i16 %17, -1
  store i16 %dec, i16* %len, align 2
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call23 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %18)
  store i8 %call23, i8* %val, align 1
  %19 = load i16, i16* %xc, align 2
  %idxprom24 = zext i16 %19 to i64
  %20 = load i8*, i8** %pos, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom24
  %21 = load i8, i8* %val, align 1
  %conv26 = zext i8 %21 to i32
  %22 = trunc i32 %conv26 to i8
  %23 = load i16, i16* %ps, align 2
  %conv27 = zext i16 %23 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx25, i8 %22, i64 %conv27, i32 1, i1 false)
  %24 = load i16, i16* %ps, align 2
  %conv28 = zext i16 %24 to i32
  %25 = load i16, i16* %xc, align 2
  %conv29 = zext i16 %25 to i32
  %add = add nsw i32 %conv29, %conv28
  %conv30 = trunc i32 %add to i16
  store i16 %conv30, i16* %xc, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end
  %26 = load i16, i16* %pcnt, align 2
  %dec32 = add i16 %26, -1
  store i16 %dec32, i16* %pcnt, align 2
  br label %for.cond.6

for.end.33:                                       ; preds = %for.cond.6
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %27 = load i16, i16* %yc, align 2
  %inc35 = add i16 %27, 1
  store i16 %inc35, i16* %yc, align 2
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_copy(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load i8*, i8** %framebuf.addr, align 8
  %1 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %1, i32 0, i32 3
  %2 = load i16, i16* %width, align 2
  %conv = zext i16 %2 to i64
  %3 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %3, i32 0, i32 4
  %4 = load i16, i16* %height, align 2
  %conv1 = zext i16 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %0, i64 %conv, i64 %conv1, %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_lc(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_framebuf, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_framebuf.addr = alloca i8*, align 8
  %framebuf.addr = alloca i8*, align 8
  %yc = alloca i16, align 2
  %firstline = alloca i16, align 2
  %numline = alloca i16, align 2
  %pos = alloca i8*, align 8
  %xc = alloca i16, align 2
  %pc = alloca i16, align 2
  %pcnt = alloca i16, align 2
  %ps = alloca i16, align 2
  %skip = alloca i16, align 2
  %val = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_framebuf, i8** %old_framebuf.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load i8*, i8** %framebuf.addr, align 8
  %1 = load i8*, i8** %old_framebuf.addr, align 8
  %2 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %2, i32 0, i32 3
  %3 = load i16, i16* %width, align 2
  %conv = zext i16 %3 to i32
  %4 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %4, i32 0, i32 4
  %5 = load i16, i16* %height, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %conv2, i32 1, i1 false)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call zeroext i16 @fli_read_short(%struct._IO_FILE* %6)
  store i16 %call, i16* %firstline, align 2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %7)
  store i16 %call3, i16* %numline, align 2
  store i16 0, i16* %yc, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %8 = load i16, i16* %yc, align 2
  %conv4 = zext i16 %8 to i32
  %9 = load i16, i16* %numline, align 2
  %conv5 = zext i16 %9 to i32
  %cmp = icmp slt i32 %conv4, %conv5
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call7 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %10)
  %conv8 = zext i8 %call7 to i16
  store i16 %conv8, i16* %pc, align 2
  store i16 0, i16* %xc, align 2
  %11 = load i8*, i8** %framebuf.addr, align 8
  %12 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width9 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %12, i32 0, i32 3
  %13 = load i16, i16* %width9, align 2
  %conv10 = zext i16 %13 to i32
  %14 = load i16, i16* %firstline, align 2
  %conv11 = zext i16 %14 to i32
  %15 = load i16, i16* %yc, align 2
  %conv12 = zext i16 %15 to i32
  %add = add nsw i32 %conv11, %conv12
  %mul13 = mul nsw i32 %conv10, %add
  %idx.ext = sext i32 %mul13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %pos, align 8
  %16 = load i16, i16* %pc, align 2
  store i16 %16, i16* %pcnt, align 2
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %17 = load i16, i16* %pcnt, align 2
  %conv15 = zext i16 %17 to i32
  %cmp16 = icmp sgt i32 %conv15, 0
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call19 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %18)
  %conv20 = zext i8 %call19 to i16
  store i16 %conv20, i16* %skip, align 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call21 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %19)
  %conv22 = zext i8 %call21 to i16
  store i16 %conv22, i16* %ps, align 2
  %20 = load i16, i16* %skip, align 2
  %conv23 = zext i16 %20 to i32
  %21 = load i16, i16* %xc, align 2
  %conv24 = zext i16 %21 to i32
  %add25 = add nsw i32 %conv24, %conv23
  %conv26 = trunc i32 %add25 to i16
  store i16 %conv26, i16* %xc, align 2
  %22 = load i16, i16* %ps, align 2
  %conv27 = zext i16 %22 to i32
  %and = and i32 %conv27, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.18
  %23 = load i16, i16* %ps, align 2
  %conv28 = trunc i16 %23 to i8
  %conv29 = sext i8 %conv28 to i32
  %sub = sub nsw i32 0, %conv29
  %conv30 = trunc i32 %sub to i16
  store i16 %conv30, i16* %ps, align 2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call31 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %24)
  store i8 %call31, i8* %val, align 1
  %25 = load i16, i16* %xc, align 2
  %idxprom = zext i16 %25 to i64
  %26 = load i8*, i8** %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %val, align 1
  %conv32 = zext i8 %27 to i32
  %28 = trunc i32 %conv32 to i8
  %29 = load i16, i16* %ps, align 2
  %conv33 = zext i16 %29 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 %28, i64 %conv33, i32 1, i1 false)
  %30 = load i16, i16* %ps, align 2
  %conv34 = zext i16 %30 to i32
  %31 = load i16, i16* %xc, align 2
  %conv35 = zext i16 %31 to i32
  %add36 = add nsw i32 %conv35, %conv34
  %conv37 = trunc i32 %add36 to i16
  store i16 %conv37, i16* %xc, align 2
  br label %if.end

if.else:                                          ; preds = %for.body.18
  %32 = load i16, i16* %xc, align 2
  %idxprom38 = zext i16 %32 to i64
  %33 = load i8*, i8** %pos, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %33, i64 %idxprom38
  %34 = load i16, i16* %ps, align 2
  %conv40 = zext i16 %34 to i64
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call41 = call i64 @fread(i8* %arrayidx39, i64 %conv40, i64 1, %struct._IO_FILE* %35)
  %36 = load i16, i16* %ps, align 2
  %conv42 = zext i16 %36 to i32
  %37 = load i16, i16* %xc, align 2
  %conv43 = zext i16 %37 to i32
  %add44 = add nsw i32 %conv43, %conv42
  %conv45 = trunc i32 %add44 to i16
  store i16 %conv45, i16* %xc, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i16, i16* %pcnt, align 2
  %dec = add i16 %38, -1
  store i16 %dec, i16* %pcnt, align 2
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %39 = load i16, i16* %yc, align 2
  %inc = add i16 %39, 1
  store i16 %inc, i16* %yc, align 2
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_read_lc_2(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_framebuf, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_framebuf.addr = alloca i8*, align 8
  %framebuf.addr = alloca i8*, align 8
  %yc = alloca i16, align 2
  %lc = alloca i16, align 2
  %numline = alloca i16, align 2
  %pos = alloca i8*, align 8
  %xc = alloca i16, align 2
  %pc = alloca i16, align 2
  %pcnt = alloca i16, align 2
  %lpf = alloca i16, align 2
  %lpn = alloca i16, align 2
  %ps = alloca i16, align 2
  %skip = alloca i16, align 2
  %v1 = alloca i8, align 1
  %v2 = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_framebuf, i8** %old_framebuf.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load i8*, i8** %framebuf.addr, align 8
  %1 = load i8*, i8** %old_framebuf.addr, align 8
  %2 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %2, i32 0, i32 3
  %3 = load i16, i16* %width, align 2
  %conv = zext i16 %3 to i32
  %4 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %4, i32 0, i32 4
  %5 = load i16, i16* %height, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %conv2, i32 1, i1 false)
  store i16 0, i16* %yc, align 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call zeroext i16 @fli_read_short(%struct._IO_FILE* %6)
  store i16 %call, i16* %numline, align 2
  store i16 0, i16* %lc, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %entry
  %7 = load i16, i16* %lc, align 2
  %conv3 = zext i16 %7 to i32
  %8 = load i16, i16* %numline, align 2
  %conv4 = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv3, %conv4
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %9)
  store i16 %call6, i16* %pc, align 2
  store i16 0, i16* %lpf, align 2
  store i16 0, i16* %lpn, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %10 = load i16, i16* %pc, align 2
  %conv7 = zext i16 %10 to i32
  %and = and i32 %conv7, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i16, i16* %pc, align 2
  %conv8 = zext i16 %11 to i32
  %and9 = and i32 %conv8, 16384
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i16, i16* %pc, align 2
  %conv11 = sext i16 %12 to i32
  %sub = sub nsw i32 0, %conv11
  %13 = load i16, i16* %yc, align 2
  %conv12 = zext i16 %13 to i32
  %add = add nsw i32 %conv12, %sub
  %conv13 = trunc i32 %add to i16
  store i16 %conv13, i16* %yc, align 2
  br label %if.end

if.else:                                          ; preds = %while.body
  store i16 1, i16* %lpf, align 2
  %14 = load i16, i16* %pc, align 2
  %conv14 = zext i16 %14 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %lpn, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call17 = call zeroext i16 @fli_read_short(%struct._IO_FILE* %15)
  store i16 %call17, i16* %pc, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i16 0, i16* %xc, align 2
  %16 = load i8*, i8** %framebuf.addr, align 8
  %17 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width18 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %17, i32 0, i32 3
  %18 = load i16, i16* %width18, align 2
  %conv19 = zext i16 %18 to i32
  %19 = load i16, i16* %yc, align 2
  %conv20 = zext i16 %19 to i32
  %mul21 = mul nsw i32 %conv19, %conv20
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %pos, align 8
  %20 = load i16, i16* %pc, align 2
  store i16 %20, i16* %pcnt, align 2
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %while.end
  %21 = load i16, i16* %pcnt, align 2
  %conv23 = zext i16 %21 to i32
  %cmp24 = icmp sgt i32 %conv23, 0
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.22
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call27 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %22)
  %conv28 = zext i8 %call27 to i16
  store i16 %conv28, i16* %skip, align 2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call29 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %23)
  %conv30 = zext i8 %call29 to i16
  store i16 %conv30, i16* %ps, align 2
  %24 = load i16, i16* %skip, align 2
  %conv31 = zext i16 %24 to i32
  %25 = load i16, i16* %xc, align 2
  %conv32 = zext i16 %25 to i32
  %add33 = add nsw i32 %conv32, %conv31
  %conv34 = trunc i32 %add33 to i16
  store i16 %conv34, i16* %xc, align 2
  %26 = load i16, i16* %ps, align 2
  %conv35 = zext i16 %26 to i32
  %and36 = and i32 %conv35, 128
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.54

if.then.38:                                       ; preds = %for.body.26
  %27 = load i16, i16* %ps, align 2
  %conv39 = trunc i16 %27 to i8
  %conv40 = sext i8 %conv39 to i32
  %sub41 = sub nsw i32 0, %conv40
  %conv42 = trunc i32 %sub41 to i16
  store i16 %conv42, i16* %ps, align 2
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call43 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %28)
  store i8 %call43, i8* %v1, align 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call44 = call zeroext i8 @fli_read_char(%struct._IO_FILE* %29)
  store i8 %call44, i8* %v2, align 1
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.49, %if.then.38
  %30 = load i16, i16* %ps, align 2
  %conv46 = zext i16 %30 to i32
  %cmp47 = icmp sgt i32 %conv46, 0
  br i1 %cmp47, label %while.body.49, label %while.end.53

while.body.49:                                    ; preds = %while.cond.45
  %31 = load i8, i8* %v1, align 1
  %32 = load i16, i16* %xc, align 2
  %inc = add i16 %32, 1
  store i16 %inc, i16* %xc, align 2
  %idxprom = zext i16 %32 to i64
  %33 = load i8*, i8** %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %idxprom
  store i8 %31, i8* %arrayidx, align 1
  %34 = load i8, i8* %v2, align 1
  %35 = load i16, i16* %xc, align 2
  %inc50 = add i16 %35, 1
  store i16 %inc50, i16* %xc, align 2
  %idxprom51 = zext i16 %35 to i64
  %36 = load i8*, i8** %pos, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %36, i64 %idxprom51
  store i8 %34, i8* %arrayidx52, align 1
  %37 = load i16, i16* %ps, align 2
  %dec = add i16 %37, -1
  store i16 %dec, i16* %ps, align 2
  br label %while.cond.45

while.end.53:                                     ; preds = %while.cond.45
  br label %if.end.63

if.else.54:                                       ; preds = %for.body.26
  %38 = load i16, i16* %xc, align 2
  %idxprom55 = zext i16 %38 to i64
  %39 = load i8*, i8** %pos, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %39, i64 %idxprom55
  %40 = load i16, i16* %ps, align 2
  %conv57 = zext i16 %40 to i64
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call58 = call i64 @fread(i8* %arrayidx56, i64 %conv57, i64 2, %struct._IO_FILE* %41)
  %42 = load i16, i16* %ps, align 2
  %conv59 = zext i16 %42 to i32
  %shl = shl i32 %conv59, 1
  %43 = load i16, i16* %xc, align 2
  %conv60 = zext i16 %43 to i32
  %add61 = add nsw i32 %conv60, %shl
  %conv62 = trunc i32 %add61 to i16
  store i16 %conv62, i16* %xc, align 2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.54, %while.end.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %44 = load i16, i16* %pcnt, align 2
  %dec64 = add i16 %44, -1
  store i16 %dec64, i16* %pcnt, align 2
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %45 = load i16, i16* %lpf, align 2
  %tobool65 = icmp ne i16 %45, 0
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %for.end
  %46 = load i16, i16* %lpn, align 2
  %conv67 = trunc i16 %46 to i8
  %47 = load i16, i16* %xc, align 2
  %idxprom68 = zext i16 %47 to i64
  %48 = load i8*, i8** %pos, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  store i8 %conv67, i8* %arrayidx69, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %for.end
  %49 = load i16, i16* %yc, align 2
  %inc71 = add i16 %49, 1
  store i16 %inc71, i16* %yc, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.70
  %50 = load i16, i16* %lc, align 2
  %inc73 = add i16 %50, 1
  store i16 %inc73, i16* %lc, align 2
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_write_frame(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_framebuf, i8* %old_cmap, i8* %framebuf, i8* %cmap, i16 zeroext %codec_mask) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_framebuf.addr = alloca i8*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %framebuf.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %codec_mask.addr = alloca i16, align 2
  %fli_frame = alloca %struct._fli_frame, align 8
  %framepos = alloca i64, align 8
  %frameend = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_framebuf, i8** %old_framebuf.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  store i16 %codec_mask, i16* %codec_mask.addr, align 2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %framepos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %framepos, align 8
  %add = add i64 %2, 16
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  %3 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %frames = getelementptr inbounds %struct._fli_header, %struct._fli_header* %3, i32 0, i32 2
  %4 = load i16, i16* %frames, align 2
  %conv = zext i16 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i64, i64* %framepos, align 8
  %6 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %oframe1 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %6, i32 0, i32 13
  store i64 %5, i64* %oframe1, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load i64, i64* %framepos, align 8
  %8 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %oframe2 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %8, i32 0, i32 14
  store i64 %7, i64* %oframe2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %size = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 0
  store i64 0, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 1
  store i16 -3590, i16* %magic, align 2
  %chunks = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  store i16 0, i16* %chunks, align 2
  %9 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic3 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %9, i32 0, i32 1
  %10 = load i16, i16* %magic3, align 2
  %conv4 = zext i16 %10 to i32
  %cmp = icmp eq i32 %conv4, 44817
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %12 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %13 = load i8*, i8** %old_cmap.addr, align 8
  %14 = load i8*, i8** %cmap.addr, align 8
  %call6 = call i32 @fli_write_color(%struct._IO_FILE* %11, %struct._fli_header* %12, i8* %13, i8* %14)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %chunks8 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  %15 = load i16, i16* %chunks8, align 2
  %inc = add i16 %15, 1
  store i16 %inc, i16* %chunks8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.23

if.else:                                          ; preds = %sw.epilog
  %16 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %magic9 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %16, i32 0, i32 1
  %17 = load i16, i16* %magic9, align 2
  %conv10 = zext i16 %17 to i32
  %cmp11 = icmp eq i32 %conv10, 44818
  br i1 %cmp11, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.else
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %19 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %20 = load i8*, i8** %old_cmap.addr, align 8
  %21 = load i8*, i8** %cmap.addr, align 8
  %call14 = call i32 @fli_write_color_2(%struct._IO_FILE* %18, %struct._fli_header* %19, i8* %20, i8* %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.13
  %chunks17 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  %22 = load i16, i16* %chunks17, align 2
  %inc18 = add i16 %22, 1
  store i16 %inc18, i16* %chunks17, align 2
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.22

if.else.20:                                       ; preds = %if.else
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %24 = load i8*, i8** %old_framebuf.addr, align 8
  %cmp24 = icmp eq i8* %24, null
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %26 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %27 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_write_brun(%struct._IO_FILE* %25, %struct._fli_header* %26, i8* %27)
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %29 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %30 = load i8*, i8** %old_framebuf.addr, align 8
  %31 = load i8*, i8** %framebuf.addr, align 8
  call void @fli_write_lc(%struct._IO_FILE* %28, %struct._fli_header* %29, i8* %30, i8* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %chunks29 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  %32 = load i16, i16* %chunks29, align 2
  %inc30 = add i16 %32, 1
  store i16 %inc30, i16* %chunks29, align 2
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call31 = call i64 @ftell(%struct._IO_FILE* %33)
  store i64 %call31, i64* %frameend, align 8
  %34 = load i64, i64* %frameend, align 8
  %35 = load i64, i64* %framepos, align 8
  %sub = sub i64 %34, %35
  %size32 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 0
  store i64 %sub, i64* %size32, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %37 = load i64, i64* %framepos, align 8
  %call33 = call i32 @fseek(%struct._IO_FILE* %36, i64 %37, i32 0)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size34 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 0
  %39 = load i64, i64* %size34, align 8
  call void @fli_write_long(%struct._IO_FILE* %38, i64 %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic35 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 1
  %41 = load i16, i16* %magic35, align 2
  call void @fli_write_short(%struct._IO_FILE* %40, i16 zeroext %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %chunks36 = getelementptr inbounds %struct._fli_frame, %struct._fli_frame* %fli_frame, i32 0, i32 2
  %43 = load i16, i16* %chunks36, align 2
  call void @fli_write_short(%struct._IO_FILE* %42, i16 zeroext %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %45 = load i64, i64* %frameend, align 8
  %call37 = call i32 @fseek(%struct._IO_FILE* %44, i64 %45, i32 0)
  %46 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %frames38 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %46, i32 0, i32 2
  %47 = load i16, i16* %frames38, align 2
  %inc39 = add i16 %47, 1
  store i16 %inc39, i16* %frames38, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fli_write_color(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_cmap, i8* %cmap) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %chunkpos = alloca i64, align 8
  %num_packets = alloca i16, align 2
  %chunk = alloca %struct._fli_chunk, align 8
  %col_pos = alloca i16, align 2
  %cnt_skip = alloca i16, align 2
  %cnt_col = alloca i16, align 2
  %col_pos6 = alloca i16, align 2
  %col_start = alloca i16, align 2
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %chunkpos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %chunkpos, align 8
  %add = add i64 %2, 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  store i16 0, i16* %num_packets, align 2
  %3 = load i8*, i8** %old_cmap.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 1, i16* %num_packets, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  call void @fli_write_char(%struct._IO_FILE* %4, i8 zeroext 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  call void @fli_write_char(%struct._IO_FILE* %5, i8 zeroext 0)
  store i16 0, i16* %col_pos, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i16, i16* %col_pos, align 2
  %conv = zext i16 %6 to i32
  %cmp2 = icmp slt i32 %conv, 768
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %8 = load i16, i16* %col_pos, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %10 to i32
  %shr = ashr i32 %conv4, 2
  %conv5 = trunc i32 %shr to i8
  call void @fli_write_char(%struct._IO_FILE* %7, i8 zeroext %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16, i16* %col_pos, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %col_pos, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.149

if.else:                                          ; preds = %entry
  store i16 0, i16* %col_pos6, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  store i16 0, i16* %cnt_skip, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %12 = load i16, i16* %col_pos6, align 2
  %conv7 = zext i16 %12 to i32
  %cmp8 = icmp slt i32 %conv7, 256
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load i16, i16* %col_pos6, align 2
  %conv10 = zext i16 %13 to i32
  %mul = mul nsw i32 %conv10, 3
  %add11 = add nsw i32 %mul, 0
  %idxprom12 = sext i32 %add11 to i64
  %14 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %15 to i32
  %16 = load i16, i16* %col_pos6, align 2
  %conv15 = zext i16 %16 to i32
  %mul16 = mul nsw i32 %conv15, 3
  %add17 = add nsw i32 %mul16, 0
  %idxprom18 = sext i32 %add17 to i64
  %17 = load i8*, i8** %cmap.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom18
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv14, %conv20
  br i1 %cmp21, label %land.lhs.true.23, label %land.end

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %19 = load i16, i16* %col_pos6, align 2
  %conv24 = zext i16 %19 to i32
  %mul25 = mul nsw i32 %conv24, 3
  %add26 = add nsw i32 %mul25, 1
  %idxprom27 = sext i32 %add26 to i64
  %20 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 %idxprom27
  %21 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %21 to i32
  %22 = load i16, i16* %col_pos6, align 2
  %conv30 = zext i16 %22 to i32
  %mul31 = mul nsw i32 %conv30, 3
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %23 = load i8*, i8** %cmap.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %23, i64 %idxprom33
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  %cmp36 = icmp eq i32 %conv29, %conv35
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.23
  %25 = load i16, i16* %col_pos6, align 2
  %conv38 = zext i16 %25 to i32
  %mul39 = mul nsw i32 %conv38, 3
  %add40 = add nsw i32 %mul39, 2
  %idxprom41 = sext i32 %add40 to i64
  %26 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %28 = load i16, i16* %col_pos6, align 2
  %conv44 = zext i16 %28 to i32
  %mul45 = mul nsw i32 %conv44, 3
  %add46 = add nsw i32 %mul45, 2
  %idxprom47 = sext i32 %add46 to i64
  %29 = load i8*, i8** %cmap.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %29, i64 %idxprom47
  %30 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp eq i32 %conv43, %conv49
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %land.lhs.true, %while.cond
  %31 = phi i1 [ false, %land.lhs.true.23 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp50, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i16, i16* %cnt_skip, align 2
  %inc52 = add i16 %32, 1
  store i16 %inc52, i16* %cnt_skip, align 2
  %33 = load i16, i16* %col_pos6, align 2
  %inc53 = add i16 %33, 1
  store i16 %inc53, i16* %col_pos6, align 2
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i16, i16* %col_pos6, align 2
  %conv54 = zext i16 %34 to i32
  %mul55 = mul nsw i32 %conv54, 3
  %conv56 = trunc i32 %mul55 to i16
  store i16 %conv56, i16* %col_start, align 2
  store i16 0, i16* %cnt_col, align 2
  br label %while.cond.57

while.cond.57:                                    ; preds = %while.body.108, %while.end
  %35 = load i16, i16* %col_pos6, align 2
  %conv58 = zext i16 %35 to i32
  %cmp59 = icmp slt i32 %conv58, 256
  br i1 %cmp59, label %land.rhs.61, label %land.end.107

land.rhs.61:                                      ; preds = %while.cond.57
  %36 = load i16, i16* %col_pos6, align 2
  %conv62 = zext i16 %36 to i32
  %mul63 = mul nsw i32 %conv62, 3
  %add64 = add nsw i32 %mul63, 0
  %idxprom65 = sext i32 %add64 to i64
  %37 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %37, i64 %idxprom65
  %38 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %38 to i32
  %39 = load i16, i16* %col_pos6, align 2
  %conv68 = zext i16 %39 to i32
  %mul69 = mul nsw i32 %conv68, 3
  %add70 = add nsw i32 %mul69, 0
  %idxprom71 = sext i32 %add70 to i64
  %40 = load i8*, i8** %cmap.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %40, i64 %idxprom71
  %41 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %41 to i32
  %cmp74 = icmp eq i32 %conv67, %conv73
  br i1 %cmp74, label %land.lhs.true.76, label %land.end.106

land.lhs.true.76:                                 ; preds = %land.rhs.61
  %42 = load i16, i16* %col_pos6, align 2
  %conv77 = zext i16 %42 to i32
  %mul78 = mul nsw i32 %conv77, 3
  %add79 = add nsw i32 %mul78, 1
  %idxprom80 = sext i32 %add79 to i64
  %43 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %43, i64 %idxprom80
  %44 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %44 to i32
  %45 = load i16, i16* %col_pos6, align 2
  %conv83 = zext i16 %45 to i32
  %mul84 = mul nsw i32 %conv83, 3
  %add85 = add nsw i32 %mul84, 1
  %idxprom86 = sext i32 %add85 to i64
  %46 = load i8*, i8** %cmap.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %46, i64 %idxprom86
  %47 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %47 to i32
  %cmp89 = icmp eq i32 %conv82, %conv88
  br i1 %cmp89, label %land.rhs.91, label %land.end.106

land.rhs.91:                                      ; preds = %land.lhs.true.76
  %48 = load i16, i16* %col_pos6, align 2
  %conv92 = zext i16 %48 to i32
  %mul93 = mul nsw i32 %conv92, 3
  %add94 = add nsw i32 %mul93, 2
  %idxprom95 = sext i32 %add94 to i64
  %49 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %49, i64 %idxprom95
  %50 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %50 to i32
  %51 = load i16, i16* %col_pos6, align 2
  %conv98 = zext i16 %51 to i32
  %mul99 = mul nsw i32 %conv98, 3
  %add100 = add nsw i32 %mul99, 2
  %idxprom101 = sext i32 %add100 to i64
  %52 = load i8*, i8** %cmap.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %52, i64 %idxprom101
  %53 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %53 to i32
  %cmp104 = icmp eq i32 %conv97, %conv103
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.91, %land.lhs.true.76, %land.rhs.61
  %54 = phi i1 [ false, %land.lhs.true.76 ], [ false, %land.rhs.61 ], [ %cmp104, %land.rhs.91 ]
  %lnot = xor i1 %54, true
  br label %land.end.107

land.end.107:                                     ; preds = %land.end.106, %while.cond.57
  %55 = phi i1 [ false, %while.cond.57 ], [ %lnot, %land.end.106 ]
  br i1 %55, label %while.body.108, label %while.end.111

while.body.108:                                   ; preds = %land.end.107
  %56 = load i16, i16* %cnt_col, align 2
  %inc109 = add i16 %56, 1
  store i16 %inc109, i16* %cnt_col, align 2
  %57 = load i16, i16* %col_pos6, align 2
  %inc110 = add i16 %57, 1
  store i16 %inc110, i16* %col_pos6, align 2
  br label %while.cond.57

while.end.111:                                    ; preds = %land.end.107
  %58 = load i16, i16* %cnt_col, align 2
  %conv112 = zext i16 %58 to i32
  %cmp113 = icmp sgt i32 %conv112, 0
  br i1 %cmp113, label %if.then.115, label %if.end

if.then.115:                                      ; preds = %while.end.111
  %59 = load i16, i16* %num_packets, align 2
  %inc116 = add i16 %59, 1
  store i16 %inc116, i16* %num_packets, align 2
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %61 = load i16, i16* %cnt_skip, align 2
  %conv117 = zext i16 %61 to i32
  %and = and i32 %conv117, 255
  %conv118 = trunc i32 %and to i8
  call void @fli_write_char(%struct._IO_FILE* %60, i8 zeroext %conv118)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %63 = load i16, i16* %cnt_col, align 2
  %conv119 = zext i16 %63 to i32
  %and120 = and i32 %conv119, 255
  %conv121 = trunc i32 %and120 to i8
  call void @fli_write_char(%struct._IO_FILE* %62, i8 zeroext %conv121)
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.126, %if.then.115
  %64 = load i16, i16* %cnt_col, align 2
  %conv123 = zext i16 %64 to i32
  %cmp124 = icmp sgt i32 %conv123, 0
  br i1 %cmp124, label %while.body.126, label %while.end.145

while.body.126:                                   ; preds = %while.cond.122
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %66 = load i16, i16* %col_start, align 2
  %inc127 = add i16 %66, 1
  store i16 %inc127, i16* %col_start, align 2
  %idxprom128 = zext i16 %66 to i64
  %67 = load i8*, i8** %cmap.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %67, i64 %idxprom128
  %68 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %68 to i32
  %shr131 = ashr i32 %conv130, 2
  %conv132 = trunc i32 %shr131 to i8
  call void @fli_write_char(%struct._IO_FILE* %65, i8 zeroext %conv132)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %70 = load i16, i16* %col_start, align 2
  %inc133 = add i16 %70, 1
  store i16 %inc133, i16* %col_start, align 2
  %idxprom134 = zext i16 %70 to i64
  %71 = load i8*, i8** %cmap.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %71, i64 %idxprom134
  %72 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %72 to i32
  %shr137 = ashr i32 %conv136, 2
  %conv138 = trunc i32 %shr137 to i8
  call void @fli_write_char(%struct._IO_FILE* %69, i8 zeroext %conv138)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %74 = load i16, i16* %col_start, align 2
  %inc139 = add i16 %74, 1
  store i16 %inc139, i16* %col_start, align 2
  %idxprom140 = zext i16 %74 to i64
  %75 = load i8*, i8** %cmap.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %75, i64 %idxprom140
  %76 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %76 to i32
  %shr143 = ashr i32 %conv142, 2
  %conv144 = trunc i32 %shr143 to i8
  call void @fli_write_char(%struct._IO_FILE* %73, i8 zeroext %conv144)
  %77 = load i16, i16* %cnt_col, align 2
  %dec = add i16 %77, -1
  store i16 %dec, i16* %cnt_col, align 2
  br label %while.cond.122

while.end.145:                                    ; preds = %while.cond.122
  br label %if.end

if.end:                                           ; preds = %while.end.145, %while.end.111
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %78 = load i16, i16* %col_pos6, align 2
  %conv146 = zext i16 %78 to i32
  %cmp147 = icmp slt i32 %conv146, 256
  br i1 %cmp147, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.149

if.end.149:                                       ; preds = %do.end, %for.end
  %79 = load i16, i16* %num_packets, align 2
  %conv150 = zext i16 %79 to i32
  %cmp151 = icmp sgt i32 %conv150, 0
  br i1 %cmp151, label %if.then.153, label %if.end.167

if.then.153:                                      ; preds = %if.end.149
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call154 = call i64 @ftell(%struct._IO_FILE* %80)
  %81 = load i64, i64* %chunkpos, align 8
  %sub = sub i64 %call154, %81
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %sub, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 11, i16* %magic, align 2
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %83 = load i64, i64* %chunkpos, align 8
  %call155 = call i32 @fseek(%struct._IO_FILE* %82, i64 %83, i32 0)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size156 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %85 = load i64, i64* %size156, align 8
  call void @fli_write_long(%struct._IO_FILE* %84, i64 %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic157 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %87 = load i16, i16* %magic157, align 2
  call void @fli_write_short(%struct._IO_FILE* %86, i16 zeroext %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %89 = load i16, i16* %num_packets, align 2
  call void @fli_write_short(%struct._IO_FILE* %88, i16 zeroext %89)
  %size158 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %90 = load i64, i64* %size158, align 8
  %and159 = and i64 %90, 1
  %tobool = icmp ne i64 %and159, 0
  br i1 %tobool, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %if.then.153
  %size161 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %91 = load i64, i64* %size161, align 8
  %inc162 = add i64 %91, 1
  store i64 %inc162, i64* %size161, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.then.153
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %93 = load i64, i64* %chunkpos, align 8
  %size164 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %94 = load i64, i64* %size164, align 8
  %add165 = add i64 %93, %94
  %call166 = call i32 @fseek(%struct._IO_FILE* %92, i64 %add165, i32 0)
  store i32 1, i32* %retval
  br label %return

if.end.167:                                       ; preds = %if.end.149
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %96 = load i64, i64* %chunkpos, align 8
  %call168 = call i32 @fseek(%struct._IO_FILE* %95, i64 %96, i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.167, %if.end.163
  %97 = load i32, i32* %retval
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define i32 @fli_write_color_2(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_cmap, i8* %cmap) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_cmap.addr = alloca i8*, align 8
  %cmap.addr = alloca i8*, align 8
  %chunkpos = alloca i64, align 8
  %num_packets = alloca i16, align 2
  %chunk = alloca %struct._fli_chunk, align 8
  %col_pos = alloca i16, align 2
  %cnt_skip = alloca i16, align 2
  %cnt_col = alloca i16, align 2
  %col_pos4 = alloca i16, align 2
  %col_start = alloca i16, align 2
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_cmap, i8** %old_cmap.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %chunkpos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %chunkpos, align 8
  %add = add i64 %2, 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  store i16 0, i16* %num_packets, align 2
  %3 = load i8*, i8** %old_cmap.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 1, i16* %num_packets, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  call void @fli_write_char(%struct._IO_FILE* %4, i8 zeroext 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  call void @fli_write_char(%struct._IO_FILE* %5, i8 zeroext 0)
  store i16 0, i16* %col_pos, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i16, i16* %col_pos, align 2
  %conv = zext i16 %6 to i32
  %cmp2 = icmp slt i32 %conv, 768
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %8 = load i16, i16* %col_pos, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  call void @fli_write_char(%struct._IO_FILE* %7, i8 zeroext %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16, i16* %col_pos, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %col_pos, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.else:                                          ; preds = %entry
  store i16 0, i16* %col_pos4, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  store i16 0, i16* %cnt_skip, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %12 = load i16, i16* %col_pos4, align 2
  %conv5 = zext i16 %12 to i32
  %cmp6 = icmp slt i32 %conv5, 256
  br i1 %cmp6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load i16, i16* %col_pos4, align 2
  %conv8 = zext i16 %13 to i32
  %mul = mul nsw i32 %conv8, 3
  %add9 = add nsw i32 %mul, 0
  %idxprom10 = sext i32 %add9 to i64
  %14 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %15 to i32
  %16 = load i16, i16* %col_pos4, align 2
  %conv13 = zext i16 %16 to i32
  %mul14 = mul nsw i32 %conv13, 3
  %add15 = add nsw i32 %mul14, 0
  %idxprom16 = sext i32 %add15 to i64
  %17 = load i8*, i8** %cmap.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp eq i32 %conv12, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %land.end

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %19 = load i16, i16* %col_pos4, align 2
  %conv22 = zext i16 %19 to i32
  %mul23 = mul nsw i32 %conv22, 3
  %add24 = add nsw i32 %mul23, 1
  %idxprom25 = sext i32 %add24 to i64
  %20 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  %21 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i16, i16* %col_pos4, align 2
  %conv28 = zext i16 %22 to i32
  %mul29 = mul nsw i32 %conv28, 3
  %add30 = add nsw i32 %mul29, 1
  %idxprom31 = sext i32 %add30 to i64
  %23 = load i8*, i8** %cmap.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 %idxprom31
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %cmp34 = icmp eq i32 %conv27, %conv33
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.21
  %25 = load i16, i16* %col_pos4, align 2
  %conv36 = zext i16 %25 to i32
  %mul37 = mul nsw i32 %conv36, 3
  %add38 = add nsw i32 %mul37, 2
  %idxprom39 = sext i32 %add38 to i64
  %26 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %26, i64 %idxprom39
  %27 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %27 to i32
  %28 = load i16, i16* %col_pos4, align 2
  %conv42 = zext i16 %28 to i32
  %mul43 = mul nsw i32 %conv42, 3
  %add44 = add nsw i32 %mul43, 2
  %idxprom45 = sext i32 %add44 to i64
  %29 = load i8*, i8** %cmap.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %29, i64 %idxprom45
  %30 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %30 to i32
  %cmp48 = icmp eq i32 %conv41, %conv47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.21, %land.lhs.true, %while.cond
  %31 = phi i1 [ false, %land.lhs.true.21 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i16, i16* %cnt_skip, align 2
  %inc50 = add i16 %32, 1
  store i16 %inc50, i16* %cnt_skip, align 2
  %33 = load i16, i16* %col_pos4, align 2
  %inc51 = add i16 %33, 1
  store i16 %inc51, i16* %col_pos4, align 2
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i16, i16* %col_pos4, align 2
  %conv52 = zext i16 %34 to i32
  %mul53 = mul nsw i32 %conv52, 3
  %conv54 = trunc i32 %mul53 to i16
  store i16 %conv54, i16* %col_start, align 2
  store i16 0, i16* %cnt_col, align 2
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.106, %while.end
  %35 = load i16, i16* %col_pos4, align 2
  %conv56 = zext i16 %35 to i32
  %cmp57 = icmp slt i32 %conv56, 256
  br i1 %cmp57, label %land.rhs.59, label %land.end.105

land.rhs.59:                                      ; preds = %while.cond.55
  %36 = load i16, i16* %col_pos4, align 2
  %conv60 = zext i16 %36 to i32
  %mul61 = mul nsw i32 %conv60, 3
  %add62 = add nsw i32 %mul61, 0
  %idxprom63 = sext i32 %add62 to i64
  %37 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %37, i64 %idxprom63
  %38 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %38 to i32
  %39 = load i16, i16* %col_pos4, align 2
  %conv66 = zext i16 %39 to i32
  %mul67 = mul nsw i32 %conv66, 3
  %add68 = add nsw i32 %mul67, 0
  %idxprom69 = sext i32 %add68 to i64
  %40 = load i8*, i8** %cmap.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %40, i64 %idxprom69
  %41 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %41 to i32
  %cmp72 = icmp eq i32 %conv65, %conv71
  br i1 %cmp72, label %land.lhs.true.74, label %land.end.104

land.lhs.true.74:                                 ; preds = %land.rhs.59
  %42 = load i16, i16* %col_pos4, align 2
  %conv75 = zext i16 %42 to i32
  %mul76 = mul nsw i32 %conv75, 3
  %add77 = add nsw i32 %mul76, 1
  %idxprom78 = sext i32 %add77 to i64
  %43 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %43, i64 %idxprom78
  %44 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %44 to i32
  %45 = load i16, i16* %col_pos4, align 2
  %conv81 = zext i16 %45 to i32
  %mul82 = mul nsw i32 %conv81, 3
  %add83 = add nsw i32 %mul82, 1
  %idxprom84 = sext i32 %add83 to i64
  %46 = load i8*, i8** %cmap.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %46, i64 %idxprom84
  %47 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %47 to i32
  %cmp87 = icmp eq i32 %conv80, %conv86
  br i1 %cmp87, label %land.rhs.89, label %land.end.104

land.rhs.89:                                      ; preds = %land.lhs.true.74
  %48 = load i16, i16* %col_pos4, align 2
  %conv90 = zext i16 %48 to i32
  %mul91 = mul nsw i32 %conv90, 3
  %add92 = add nsw i32 %mul91, 2
  %idxprom93 = sext i32 %add92 to i64
  %49 = load i8*, i8** %old_cmap.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %49, i64 %idxprom93
  %50 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %50 to i32
  %51 = load i16, i16* %col_pos4, align 2
  %conv96 = zext i16 %51 to i32
  %mul97 = mul nsw i32 %conv96, 3
  %add98 = add nsw i32 %mul97, 2
  %idxprom99 = sext i32 %add98 to i64
  %52 = load i8*, i8** %cmap.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %52, i64 %idxprom99
  %53 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %53 to i32
  %cmp102 = icmp eq i32 %conv95, %conv101
  br label %land.end.104

land.end.104:                                     ; preds = %land.rhs.89, %land.lhs.true.74, %land.rhs.59
  %54 = phi i1 [ false, %land.lhs.true.74 ], [ false, %land.rhs.59 ], [ %cmp102, %land.rhs.89 ]
  %lnot = xor i1 %54, true
  br label %land.end.105

land.end.105:                                     ; preds = %land.end.104, %while.cond.55
  %55 = phi i1 [ false, %while.cond.55 ], [ %lnot, %land.end.104 ]
  br i1 %55, label %while.body.106, label %while.end.109

while.body.106:                                   ; preds = %land.end.105
  %56 = load i16, i16* %cnt_col, align 2
  %inc107 = add i16 %56, 1
  store i16 %inc107, i16* %cnt_col, align 2
  %57 = load i16, i16* %col_pos4, align 2
  %inc108 = add i16 %57, 1
  store i16 %inc108, i16* %col_pos4, align 2
  br label %while.cond.55

while.end.109:                                    ; preds = %land.end.105
  %58 = load i16, i16* %cnt_col, align 2
  %conv110 = zext i16 %58 to i32
  %cmp111 = icmp sgt i32 %conv110, 0
  br i1 %cmp111, label %if.then.113, label %if.end

if.then.113:                                      ; preds = %while.end.109
  %59 = load i16, i16* %num_packets, align 2
  %inc114 = add i16 %59, 1
  store i16 %inc114, i16* %num_packets, align 2
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %61 = load i16, i16* %cnt_skip, align 2
  %conv115 = trunc i16 %61 to i8
  call void @fli_write_char(%struct._IO_FILE* %60, i8 zeroext %conv115)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %63 = load i16, i16* %cnt_col, align 2
  %conv116 = trunc i16 %63 to i8
  call void @fli_write_char(%struct._IO_FILE* %62, i8 zeroext %conv116)
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.121, %if.then.113
  %64 = load i16, i16* %cnt_col, align 2
  %conv118 = zext i16 %64 to i32
  %cmp119 = icmp sgt i32 %conv118, 0
  br i1 %cmp119, label %while.body.121, label %while.end.131

while.body.121:                                   ; preds = %while.cond.117
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %66 = load i16, i16* %col_start, align 2
  %inc122 = add i16 %66, 1
  store i16 %inc122, i16* %col_start, align 2
  %idxprom123 = zext i16 %66 to i64
  %67 = load i8*, i8** %cmap.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %67, i64 %idxprom123
  %68 = load i8, i8* %arrayidx124, align 1
  call void @fli_write_char(%struct._IO_FILE* %65, i8 zeroext %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %70 = load i16, i16* %col_start, align 2
  %inc125 = add i16 %70, 1
  store i16 %inc125, i16* %col_start, align 2
  %idxprom126 = zext i16 %70 to i64
  %71 = load i8*, i8** %cmap.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %71, i64 %idxprom126
  %72 = load i8, i8* %arrayidx127, align 1
  call void @fli_write_char(%struct._IO_FILE* %69, i8 zeroext %72)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %74 = load i16, i16* %col_start, align 2
  %inc128 = add i16 %74, 1
  store i16 %inc128, i16* %col_start, align 2
  %idxprom129 = zext i16 %74 to i64
  %75 = load i8*, i8** %cmap.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %75, i64 %idxprom129
  %76 = load i8, i8* %arrayidx130, align 1
  call void @fli_write_char(%struct._IO_FILE* %73, i8 zeroext %76)
  %77 = load i16, i16* %cnt_col, align 2
  %dec = add i16 %77, -1
  store i16 %dec, i16* %cnt_col, align 2
  br label %while.cond.117

while.end.131:                                    ; preds = %while.cond.117
  br label %if.end

if.end:                                           ; preds = %while.end.131, %while.end.109
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %78 = load i16, i16* %col_pos4, align 2
  %conv132 = zext i16 %78 to i32
  %cmp133 = icmp slt i32 %conv132, 256
  br i1 %cmp133, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.135

if.end.135:                                       ; preds = %do.end, %for.end
  %79 = load i16, i16* %num_packets, align 2
  %conv136 = zext i16 %79 to i32
  %cmp137 = icmp sgt i32 %conv136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.152

if.then.139:                                      ; preds = %if.end.135
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call140 = call i64 @ftell(%struct._IO_FILE* %80)
  %81 = load i64, i64* %chunkpos, align 8
  %sub = sub i64 %call140, %81
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %sub, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 4, i16* %magic, align 2
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %83 = load i64, i64* %chunkpos, align 8
  %call141 = call i32 @fseek(%struct._IO_FILE* %82, i64 %83, i32 0)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size142 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %85 = load i64, i64* %size142, align 8
  call void @fli_write_long(%struct._IO_FILE* %84, i64 %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic143 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %87 = load i16, i16* %magic143, align 2
  call void @fli_write_short(%struct._IO_FILE* %86, i16 zeroext %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %89 = load i16, i16* %num_packets, align 2
  call void @fli_write_short(%struct._IO_FILE* %88, i16 zeroext %89)
  %size144 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %90 = load i64, i64* %size144, align 8
  %and = and i64 %90, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.139
  %size146 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %91 = load i64, i64* %size146, align 8
  %inc147 = add i64 %91, 1
  store i64 %inc147, i64* %size146, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.then.139
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %93 = load i64, i64* %chunkpos, align 8
  %size149 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %94 = load i64, i64* %size149, align 8
  %add150 = add i64 %93, %94
  %call151 = call i32 @fseek(%struct._IO_FILE* %92, i64 %add150, i32 0)
  store i32 1, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.end.135
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %96 = load i64, i64* %chunkpos, align 8
  %call153 = call i32 @fseek(%struct._IO_FILE* %95, i64 %96, i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.152, %if.end.148
  %97 = load i32, i32* %retval
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define void @fli_write_brun(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  %chunkpos = alloca i64, align 8
  %chunk = alloca %struct._fli_chunk, align 8
  %yc = alloca i16, align 2
  %linebuf = alloca i8*, align 8
  %xc = alloca i16, align 2
  %t1 = alloca i16, align 2
  %pc = alloca i16, align 2
  %tc = alloca i16, align 2
  %linepos = alloca i64, align 8
  %lineend = alloca i64, align 8
  %bc = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %chunkpos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %chunkpos, align 8
  %add = add i64 %2, 6
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  store i16 0, i16* %yc, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, i16* %yc, align 2
  %conv = zext i16 %3 to i32
  %4 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %4, i32 0, i32 4
  %5 = load i16, i16* %height, align 2
  %conv2 = zext i16 %5 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i64 @ftell(%struct._IO_FILE* %6)
  store i64 %call4, i64* %linepos, align 8
  store i64 0, i64* %bc, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* %7, i64 1, i32 1)
  %8 = load i8*, i8** %framebuf.addr, align 8
  %9 = load i16, i16* %yc, align 2
  %conv6 = zext i16 %9 to i32
  %10 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %10, i32 0, i32 3
  %11 = load i16, i16* %width, align 2
  %conv7 = zext i16 %11 to i32
  %mul = mul nsw i32 %conv6, %conv7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %linebuf, align 8
  store i16 0, i16* %xc, align 2
  store i16 0, i16* %tc, align 2
  store i16 0, i16* %t1, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %for.body
  %12 = load i16, i16* %xc, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width9 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %13, i32 0, i32 3
  %14 = load i16, i16* %width9, align 2
  %conv10 = zext i16 %14 to i32
  %cmp11 = icmp slt i32 %conv8, %conv10
  br i1 %cmp11, label %while.body, label %while.end.85

while.body:                                       ; preds = %while.cond
  store i16 1, i16* %pc, align 2
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.33, %while.body
  %15 = load i16, i16* %pc, align 2
  %conv14 = zext i16 %15 to i32
  %cmp15 = icmp slt i32 %conv14, 120
  br i1 %cmp15, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.13
  %16 = load i16, i16* %xc, align 2
  %conv17 = zext i16 %16 to i32
  %17 = load i16, i16* %pc, align 2
  %conv18 = zext i16 %17 to i32
  %add19 = add nsw i32 %conv17, %conv18
  %18 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width20 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %18, i32 0, i32 3
  %19 = load i16, i16* %width20, align 2
  %conv21 = zext i16 %19 to i32
  %cmp22 = icmp slt i32 %add19, %conv21
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load i16, i16* %xc, align 2
  %conv24 = zext i16 %20 to i32
  %21 = load i16, i16* %pc, align 2
  %conv25 = zext i16 %21 to i32
  %add26 = add nsw i32 %conv24, %conv25
  %idxprom = sext i32 %add26 to i64
  %22 = load i8*, i8** %linebuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv27 = zext i8 %23 to i32
  %24 = load i16, i16* %xc, align 2
  %idxprom28 = zext i16 %24 to i64
  %25 = load i8*, i8** %linebuf, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %idxprom28
  %26 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %26 to i32
  %cmp31 = icmp eq i32 %conv27, %conv30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.13
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.13 ], [ %cmp31, %land.rhs ]
  br i1 %27, label %while.body.33, label %while.end

while.body.33:                                    ; preds = %land.end
  %28 = load i16, i16* %pc, align 2
  %inc = add i16 %28, 1
  store i16 %inc, i16* %pc, align 2
  br label %while.cond.13

while.end:                                        ; preds = %land.end
  %29 = load i16, i16* %pc, align 2
  %conv34 = zext i16 %29 to i32
  %cmp35 = icmp sgt i32 %conv34, 2
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %30 = load i16, i16* %tc, align 2
  %conv37 = zext i16 %30 to i32
  %cmp38 = icmp sgt i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.then
  %31 = load i64, i64* %bc, align 8
  %inc41 = add i64 %31, 1
  store i64 %inc41, i64* %bc, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %33 = load i16, i16* %tc, align 2
  %conv42 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv42, 1
  %xor = xor i32 %sub, 255
  %conv43 = trunc i32 %xor to i8
  call void @fli_write_char(%struct._IO_FILE* %32, i8 zeroext %conv43)
  %34 = load i8*, i8** %linebuf, align 8
  %35 = load i16, i16* %t1, align 2
  %conv44 = zext i16 %35 to i32
  %idx.ext45 = sext i32 %conv44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %34, i64 %idx.ext45
  %36 = load i16, i16* %tc, align 2
  %conv47 = zext i16 %36 to i64
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call48 = call i64 @fwrite(i8* %add.ptr46, i64 1, i64 %conv47, %struct._IO_FILE* %37)
  store i16 0, i16* %tc, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.then
  %38 = load i64, i64* %bc, align 8
  %inc49 = add i64 %38, 1
  store i64 %inc49, i64* %bc, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %40 = load i16, i16* %pc, align 2
  %conv50 = trunc i16 %40 to i8
  call void @fli_write_char(%struct._IO_FILE* %39, i8 zeroext %conv50)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %42 = load i16, i16* %xc, align 2
  %idxprom51 = zext i16 %42 to i64
  %43 = load i8*, i8** %linebuf, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %43, i64 %idxprom51
  %44 = load i8, i8* %arrayidx52, align 1
  call void @fli_write_char(%struct._IO_FILE* %41, i8 zeroext %44)
  %45 = load i16, i16* %xc, align 2
  %conv53 = zext i16 %45 to i32
  %46 = load i16, i16* %pc, align 2
  %conv54 = zext i16 %46 to i32
  %add55 = add nsw i32 %conv53, %conv54
  %conv56 = trunc i32 %add55 to i16
  store i16 %conv56, i16* %t1, align 2
  br label %if.end.80

if.else:                                          ; preds = %while.end
  %47 = load i16, i16* %pc, align 2
  %conv57 = zext i16 %47 to i32
  %48 = load i16, i16* %tc, align 2
  %conv58 = zext i16 %48 to i32
  %add59 = add nsw i32 %conv58, %conv57
  %conv60 = trunc i32 %add59 to i16
  store i16 %conv60, i16* %tc, align 2
  %49 = load i16, i16* %tc, align 2
  %conv61 = zext i16 %49 to i32
  %cmp62 = icmp sgt i32 %conv61, 120
  br i1 %cmp62, label %if.then.64, label %if.end.79

if.then.64:                                       ; preds = %if.else
  %50 = load i64, i64* %bc, align 8
  %inc65 = add i64 %50, 1
  store i64 %inc65, i64* %bc, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %52 = load i16, i16* %tc, align 2
  %conv66 = zext i16 %52 to i32
  %sub67 = sub nsw i32 %conv66, 1
  %xor68 = xor i32 %sub67, 255
  %conv69 = trunc i32 %xor68 to i8
  call void @fli_write_char(%struct._IO_FILE* %51, i8 zeroext %conv69)
  %53 = load i8*, i8** %linebuf, align 8
  %54 = load i16, i16* %t1, align 2
  %conv70 = zext i16 %54 to i32
  %idx.ext71 = sext i32 %conv70 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %53, i64 %idx.ext71
  %55 = load i16, i16* %tc, align 2
  %conv73 = zext i16 %55 to i64
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call74 = call i64 @fwrite(i8* %add.ptr72, i64 1, i64 %conv73, %struct._IO_FILE* %56)
  store i16 0, i16* %tc, align 2
  %57 = load i16, i16* %xc, align 2
  %conv75 = zext i16 %57 to i32
  %58 = load i16, i16* %pc, align 2
  %conv76 = zext i16 %58 to i32
  %add77 = add nsw i32 %conv75, %conv76
  %conv78 = trunc i32 %add77 to i16
  store i16 %conv78, i16* %t1, align 2
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.64, %if.else
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end
  %59 = load i16, i16* %pc, align 2
  %conv81 = zext i16 %59 to i32
  %60 = load i16, i16* %xc, align 2
  %conv82 = zext i16 %60 to i32
  %add83 = add nsw i32 %conv82, %conv81
  %conv84 = trunc i32 %add83 to i16
  store i16 %conv84, i16* %xc, align 2
  br label %while.cond

while.end.85:                                     ; preds = %while.cond
  %61 = load i16, i16* %tc, align 2
  %conv86 = zext i16 %61 to i32
  %cmp87 = icmp sgt i32 %conv86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %while.end.85
  %62 = load i64, i64* %bc, align 8
  %inc90 = add i64 %62, 1
  store i64 %inc90, i64* %bc, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %64 = load i16, i16* %tc, align 2
  %conv91 = zext i16 %64 to i32
  %sub92 = sub nsw i32 %conv91, 1
  %xor93 = xor i32 %sub92, 255
  %conv94 = trunc i32 %xor93 to i8
  call void @fli_write_char(%struct._IO_FILE* %63, i8 zeroext %conv94)
  %65 = load i8*, i8** %linebuf, align 8
  %66 = load i16, i16* %t1, align 2
  %conv95 = zext i16 %66 to i32
  %idx.ext96 = sext i32 %conv95 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %65, i64 %idx.ext96
  %67 = load i16, i16* %tc, align 2
  %conv98 = zext i16 %67 to i64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call99 = call i64 @fwrite(i8* %add.ptr97, i64 1, i64 %conv98, %struct._IO_FILE* %68)
  store i16 0, i16* %tc, align 2
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.89, %while.end.85
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call101 = call i64 @ftell(%struct._IO_FILE* %69)
  store i64 %call101, i64* %lineend, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %71 = load i64, i64* %linepos, align 8
  %call102 = call i32 @fseek(%struct._IO_FILE* %70, i64 %71, i32 0)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %73 = load i64, i64* %bc, align 8
  %conv103 = trunc i64 %73 to i8
  call void @fli_write_char(%struct._IO_FILE* %72, i8 zeroext %conv103)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %75 = load i64, i64* %lineend, align 8
  %call104 = call i32 @fseek(%struct._IO_FILE* %74, i64 %75, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %76 = load i16, i16* %yc, align 2
  %inc105 = add i16 %76, 1
  store i16 %inc105, i16* %yc, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call106 = call i64 @ftell(%struct._IO_FILE* %77)
  %78 = load i64, i64* %chunkpos, align 8
  %sub107 = sub i64 %call106, %78
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %sub107, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 15, i16* %magic, align 2
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %80 = load i64, i64* %chunkpos, align 8
  %call108 = call i32 @fseek(%struct._IO_FILE* %79, i64 %80, i32 0)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size109 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %82 = load i64, i64* %size109, align 8
  call void @fli_write_long(%struct._IO_FILE* %81, i64 %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic110 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %84 = load i16, i16* %magic110, align 2
  call void @fli_write_short(%struct._IO_FILE* %83, i16 zeroext %84)
  %size111 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %85 = load i64, i64* %size111, align 8
  %and = and i64 %85, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %for.end
  %size113 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %86 = load i64, i64* %size113, align 8
  %inc114 = add i64 %86, 1
  store i64 %inc114, i64* %size113, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %for.end
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %88 = load i64, i64* %chunkpos, align 8
  %size116 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %89 = load i64, i64* %size116, align 8
  %add117 = add i64 %88, %89
  %call118 = call i32 @fseek(%struct._IO_FILE* %87, i64 %add117, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fli_write_lc(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %old_framebuf, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %old_framebuf.addr = alloca i8*, align 8
  %framebuf.addr = alloca i8*, align 8
  %chunkpos = alloca i64, align 8
  %chunk = alloca %struct._fli_chunk, align 8
  %yc = alloca i16, align 2
  %firstline = alloca i16, align 2
  %numline = alloca i16, align 2
  %lastline = alloca i16, align 2
  %linebuf = alloca i8*, align 8
  %old_linebuf = alloca i8*, align 8
  %xc = alloca i16, align 2
  %sc = alloca i16, align 2
  %cc = alloca i16, align 2
  %tc = alloca i16, align 2
  %linepos = alloca i64, align 8
  %lineend = alloca i64, align 8
  %bc = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %old_framebuf, i8** %old_framebuf.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %chunkpos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %chunkpos, align 8
  %add = add i64 %2, 6
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  store i16 0, i16* %firstline, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %old_framebuf.addr, align 8
  %4 = load i16, i16* %firstline, align 2
  %conv = zext i16 %4 to i32
  %5 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %5, i32 0, i32 3
  %6 = load i16, i16* %width, align 2
  %conv2 = zext i16 %6 to i32
  %mul = mul nsw i32 %conv, %conv2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %7 = load i8*, i8** %framebuf.addr, align 8
  %8 = load i16, i16* %firstline, align 2
  %conv3 = zext i16 %8 to i32
  %9 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width4 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %9, i32 0, i32 3
  %10 = load i16, i16* %width4, align 2
  %conv5 = zext i16 %10 to i32
  %mul6 = mul nsw i32 %conv3, %conv5
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 %idx.ext7
  %11 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width9 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %11, i32 0, i32 3
  %12 = load i16, i16* %width9, align 2
  %conv10 = zext i16 %12 to i64
  %call11 = call i32 @memcmp(i8* %add.ptr, i8* %add.ptr8, i64 %conv10) #4
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i16, i16* %firstline, align 2
  %conv13 = zext i16 %13 to i32
  %14 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %14, i32 0, i32 4
  %15 = load i16, i16* %height, align 2
  %conv14 = zext i16 %15 to i32
  %cmp15 = icmp slt i32 %conv13, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i16, i16* %firstline, align 2
  %inc = add i16 %17, 1
  store i16 %inc, i16* %firstline, align 2
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i16, i16* %firstline, align 2
  %conv17 = zext i16 %18 to i32
  %19 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height18 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %19, i32 0, i32 4
  %20 = load i16, i16* %height18, align 2
  %conv19 = zext i16 %20 to i32
  %cmp20 = icmp slt i32 %conv17, %conv19
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %21 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height22 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %21, i32 0, i32 4
  %22 = load i16, i16* %height22, align 2
  %conv23 = zext i16 %22 to i32
  %sub = sub nsw i32 %conv23, 1
  %conv24 = trunc i32 %sub to i16
  store i16 %conv24, i16* %lastline, align 2
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.49, %if.then
  %23 = load i8*, i8** %old_framebuf.addr, align 8
  %24 = load i16, i16* %lastline, align 2
  %conv26 = zext i16 %24 to i32
  %25 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width27 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %25, i32 0, i32 3
  %26 = load i16, i16* %width27, align 2
  %conv28 = zext i16 %26 to i32
  %mul29 = mul nsw i32 %conv26, %conv28
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %23, i64 %idx.ext30
  %27 = load i8*, i8** %framebuf.addr, align 8
  %28 = load i16, i16* %lastline, align 2
  %conv32 = zext i16 %28 to i32
  %29 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width33 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %29, i32 0, i32 3
  %30 = load i16, i16* %width33, align 2
  %conv34 = zext i16 %30 to i32
  %mul35 = mul nsw i32 %conv32, %conv34
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %27, i64 %idx.ext36
  %31 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width38 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %31, i32 0, i32 3
  %32 = load i16, i16* %width38, align 2
  %conv39 = zext i16 %32 to i64
  %call40 = call i32 @memcmp(i8* %add.ptr31, i8* %add.ptr37, i64 %conv39) #4
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %land.rhs.43, label %land.end.48

land.rhs.43:                                      ; preds = %while.cond.25
  %33 = load i16, i16* %lastline, align 2
  %conv44 = zext i16 %33 to i32
  %34 = load i16, i16* %firstline, align 2
  %conv45 = zext i16 %34 to i32
  %cmp46 = icmp sgt i32 %conv44, %conv45
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.43, %while.cond.25
  %35 = phi i1 [ false, %while.cond.25 ], [ %cmp46, %land.rhs.43 ]
  br i1 %35, label %while.body.49, label %while.end.50

while.body.49:                                    ; preds = %land.end.48
  %36 = load i16, i16* %lastline, align 2
  %dec = add i16 %36, -1
  store i16 %dec, i16* %lastline, align 2
  br label %while.cond.25

while.end.50:                                     ; preds = %land.end.48
  %37 = load i16, i16* %lastline, align 2
  %conv51 = zext i16 %37 to i32
  %38 = load i16, i16* %firstline, align 2
  %conv52 = zext i16 %38 to i32
  %sub53 = sub nsw i32 %conv51, %conv52
  %add54 = add nsw i32 %sub53, 1
  %conv55 = trunc i32 %add54 to i16
  store i16 %conv55, i16* %numline, align 2
  br label %if.end

if.else:                                          ; preds = %while.end
  store i16 0, i16* %numline, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end.50
  %39 = load i16, i16* %numline, align 2
  %conv56 = zext i16 %39 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end
  store i16 0, i16* %firstline, align 2
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %41 = load i16, i16* %firstline, align 2
  call void @fli_write_short(%struct._IO_FILE* %40, i16 zeroext %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %43 = load i16, i16* %numline, align 2
  call void @fli_write_short(%struct._IO_FILE* %42, i16 zeroext %43)
  store i16 0, i16* %yc, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.60
  %44 = load i16, i16* %yc, align 2
  %conv61 = zext i16 %44 to i32
  %45 = load i16, i16* %numline, align 2
  %conv62 = zext i16 %45 to i32
  %cmp63 = icmp slt i32 %conv61, %conv62
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call65 = call i64 @ftell(%struct._IO_FILE* %46)
  store i64 %call65, i64* %linepos, align 8
  store i64 0, i64* %bc, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call66 = call i32 @fseek(%struct._IO_FILE* %47, i64 1, i32 1)
  %48 = load i8*, i8** %framebuf.addr, align 8
  %49 = load i16, i16* %firstline, align 2
  %conv67 = zext i16 %49 to i32
  %50 = load i16, i16* %yc, align 2
  %conv68 = zext i16 %50 to i32
  %add69 = add nsw i32 %conv67, %conv68
  %51 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width70 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %51, i32 0, i32 3
  %52 = load i16, i16* %width70, align 2
  %conv71 = zext i16 %52 to i32
  %mul72 = mul nsw i32 %add69, %conv71
  %idx.ext73 = sext i32 %mul72 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %48, i64 %idx.ext73
  store i8* %add.ptr74, i8** %linebuf, align 8
  %53 = load i8*, i8** %old_framebuf.addr, align 8
  %54 = load i16, i16* %firstline, align 2
  %conv75 = zext i16 %54 to i32
  %55 = load i16, i16* %yc, align 2
  %conv76 = zext i16 %55 to i32
  %add77 = add nsw i32 %conv75, %conv76
  %56 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width78 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %56, i32 0, i32 3
  %57 = load i16, i16* %width78, align 2
  %conv79 = zext i16 %57 to i32
  %mul80 = mul nsw i32 %add77, %conv79
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %53, i64 %idx.ext81
  store i8* %add.ptr82, i8** %old_linebuf, align 8
  store i16 0, i16* %xc, align 2
  br label %while.cond.83

while.cond.83:                                    ; preds = %if.end.259, %for.body
  %58 = load i16, i16* %xc, align 2
  %conv84 = zext i16 %58 to i32
  %59 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width85 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %59, i32 0, i32 3
  %60 = load i16, i16* %width85, align 2
  %conv86 = zext i16 %60 to i32
  %cmp87 = icmp slt i32 %conv84, %conv86
  br i1 %cmp87, label %while.body.89, label %while.end.260

while.body.89:                                    ; preds = %while.cond.83
  store i16 0, i16* %sc, align 2
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.107, %while.body.89
  %61 = load i16, i16* %xc, align 2
  %idxprom = zext i16 %61 to i64
  %62 = load i8*, i8** %linebuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 %idxprom
  %63 = load i8, i8* %arrayidx, align 1
  %conv91 = zext i8 %63 to i32
  %64 = load i16, i16* %xc, align 2
  %idxprom92 = zext i16 %64 to i64
  %65 = load i8*, i8** %old_linebuf, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %65, i64 %idxprom92
  %66 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %66 to i32
  %cmp95 = icmp eq i32 %conv91, %conv94
  br i1 %cmp95, label %land.lhs.true, label %land.end.106

land.lhs.true:                                    ; preds = %while.cond.90
  %67 = load i16, i16* %xc, align 2
  %conv97 = zext i16 %67 to i32
  %68 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width98 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %68, i32 0, i32 3
  %69 = load i16, i16* %width98, align 2
  %conv99 = zext i16 %69 to i32
  %cmp100 = icmp slt i32 %conv97, %conv99
  br i1 %cmp100, label %land.rhs.102, label %land.end.106

land.rhs.102:                                     ; preds = %land.lhs.true
  %70 = load i16, i16* %sc, align 2
  %conv103 = zext i16 %70 to i32
  %cmp104 = icmp slt i32 %conv103, 255
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.102, %land.lhs.true, %while.cond.90
  %71 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.90 ], [ %cmp104, %land.rhs.102 ]
  br i1 %71, label %while.body.107, label %while.end.110

while.body.107:                                   ; preds = %land.end.106
  %72 = load i16, i16* %xc, align 2
  %inc108 = add i16 %72, 1
  store i16 %inc108, i16* %xc, align 2
  %73 = load i16, i16* %sc, align 2
  %inc109 = add i16 %73, 1
  store i16 %inc109, i16* %sc, align 2
  br label %while.cond.90

while.end.110:                                    ; preds = %land.end.106
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %75 = load i16, i16* %sc, align 2
  %conv111 = trunc i16 %75 to i8
  call void @fli_write_char(%struct._IO_FILE* %74, i8 zeroext %conv111)
  store i16 1, i16* %cc, align 2
  br label %while.cond.112

while.cond.112:                                   ; preds = %while.body.137, %while.end.110
  %76 = load i16, i16* %xc, align 2
  %idxprom113 = zext i16 %76 to i64
  %77 = load i8*, i8** %linebuf, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %77, i64 %idxprom113
  %78 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %78 to i32
  %79 = load i16, i16* %xc, align 2
  %conv116 = zext i16 %79 to i32
  %80 = load i16, i16* %cc, align 2
  %conv117 = zext i16 %80 to i32
  %add118 = add nsw i32 %conv116, %conv117
  %idxprom119 = sext i32 %add118 to i64
  %81 = load i8*, i8** %linebuf, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %81, i64 %idxprom119
  %82 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %82 to i32
  %cmp122 = icmp eq i32 %conv115, %conv121
  br i1 %cmp122, label %land.lhs.true.124, label %land.end.136

land.lhs.true.124:                                ; preds = %while.cond.112
  %83 = load i16, i16* %xc, align 2
  %conv125 = zext i16 %83 to i32
  %84 = load i16, i16* %cc, align 2
  %conv126 = zext i16 %84 to i32
  %add127 = add nsw i32 %conv125, %conv126
  %85 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width128 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %85, i32 0, i32 3
  %86 = load i16, i16* %width128, align 2
  %conv129 = zext i16 %86 to i32
  %cmp130 = icmp slt i32 %add127, %conv129
  br i1 %cmp130, label %land.rhs.132, label %land.end.136

land.rhs.132:                                     ; preds = %land.lhs.true.124
  %87 = load i16, i16* %cc, align 2
  %conv133 = zext i16 %87 to i32
  %cmp134 = icmp slt i32 %conv133, 120
  br label %land.end.136

land.end.136:                                     ; preds = %land.rhs.132, %land.lhs.true.124, %while.cond.112
  %88 = phi i1 [ false, %land.lhs.true.124 ], [ false, %while.cond.112 ], [ %cmp134, %land.rhs.132 ]
  br i1 %88, label %while.body.137, label %while.end.139

while.body.137:                                   ; preds = %land.end.136
  %89 = load i16, i16* %cc, align 2
  %inc138 = add i16 %89, 1
  store i16 %inc138, i16* %cc, align 2
  br label %while.cond.112

while.end.139:                                    ; preds = %land.end.136
  %90 = load i16, i16* %cc, align 2
  %conv140 = zext i16 %90 to i32
  %cmp141 = icmp sgt i32 %conv140, 2
  br i1 %cmp141, label %if.then.143, label %if.else.154

if.then.143:                                      ; preds = %while.end.139
  %91 = load i64, i64* %bc, align 8
  %inc144 = add i64 %91, 1
  store i64 %inc144, i64* %bc, align 8
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %93 = load i16, i16* %cc, align 2
  %conv145 = zext i16 %93 to i32
  %sub146 = sub nsw i32 %conv145, 1
  %xor = xor i32 %sub146, 255
  %conv147 = trunc i32 %xor to i8
  call void @fli_write_char(%struct._IO_FILE* %92, i8 zeroext %conv147)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %95 = load i16, i16* %xc, align 2
  %idxprom148 = zext i16 %95 to i64
  %96 = load i8*, i8** %linebuf, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %96, i64 %idxprom148
  %97 = load i8, i8* %arrayidx149, align 1
  call void @fli_write_char(%struct._IO_FILE* %94, i8 zeroext %97)
  %98 = load i16, i16* %cc, align 2
  %conv150 = zext i16 %98 to i32
  %99 = load i16, i16* %xc, align 2
  %conv151 = zext i16 %99 to i32
  %add152 = add nsw i32 %conv151, %conv150
  %conv153 = trunc i32 %add152 to i16
  store i16 %conv153, i16* %xc, align 2
  br label %if.end.259

if.else.154:                                      ; preds = %while.end.139
  store i16 0, i16* %tc, align 2
  br label %do.body

do.body:                                          ; preds = %land.end.247, %if.else.154
  store i16 0, i16* %sc, align 2
  br label %while.cond.155

while.cond.155:                                   ; preds = %while.body.189, %do.body
  %100 = load i16, i16* %tc, align 2
  %conv156 = zext i16 %100 to i32
  %101 = load i16, i16* %xc, align 2
  %conv157 = zext i16 %101 to i32
  %add158 = add nsw i32 %conv156, %conv157
  %102 = load i16, i16* %sc, align 2
  %conv159 = zext i16 %102 to i32
  %add160 = add nsw i32 %add158, %conv159
  %idxprom161 = sext i32 %add160 to i64
  %103 = load i8*, i8** %linebuf, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %103, i64 %idxprom161
  %104 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %104 to i32
  %105 = load i16, i16* %tc, align 2
  %conv164 = zext i16 %105 to i32
  %106 = load i16, i16* %xc, align 2
  %conv165 = zext i16 %106 to i32
  %add166 = add nsw i32 %conv164, %conv165
  %107 = load i16, i16* %sc, align 2
  %conv167 = zext i16 %107 to i32
  %add168 = add nsw i32 %add166, %conv167
  %idxprom169 = sext i32 %add168 to i64
  %108 = load i8*, i8** %old_linebuf, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %108, i64 %idxprom169
  %109 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %109 to i32
  %cmp172 = icmp eq i32 %conv163, %conv171
  br i1 %cmp172, label %land.lhs.true.174, label %land.end.188

land.lhs.true.174:                                ; preds = %while.cond.155
  %110 = load i16, i16* %tc, align 2
  %conv175 = zext i16 %110 to i32
  %111 = load i16, i16* %xc, align 2
  %conv176 = zext i16 %111 to i32
  %add177 = add nsw i32 %conv175, %conv176
  %112 = load i16, i16* %sc, align 2
  %conv178 = zext i16 %112 to i32
  %add179 = add nsw i32 %add177, %conv178
  %113 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width180 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %113, i32 0, i32 3
  %114 = load i16, i16* %width180, align 2
  %conv181 = zext i16 %114 to i32
  %cmp182 = icmp slt i32 %add179, %conv181
  br i1 %cmp182, label %land.rhs.184, label %land.end.188

land.rhs.184:                                     ; preds = %land.lhs.true.174
  %115 = load i16, i16* %sc, align 2
  %conv185 = zext i16 %115 to i32
  %cmp186 = icmp slt i32 %conv185, 5
  br label %land.end.188

land.end.188:                                     ; preds = %land.rhs.184, %land.lhs.true.174, %while.cond.155
  %116 = phi i1 [ false, %land.lhs.true.174 ], [ false, %while.cond.155 ], [ %cmp186, %land.rhs.184 ]
  br i1 %116, label %while.body.189, label %while.end.191

while.body.189:                                   ; preds = %land.end.188
  %117 = load i16, i16* %sc, align 2
  %inc190 = add i16 %117, 1
  store i16 %inc190, i16* %sc, align 2
  br label %while.cond.155

while.end.191:                                    ; preds = %land.end.188
  store i16 1, i16* %cc, align 2
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.224, %while.end.191
  %118 = load i16, i16* %tc, align 2
  %conv193 = zext i16 %118 to i32
  %119 = load i16, i16* %xc, align 2
  %conv194 = zext i16 %119 to i32
  %add195 = add nsw i32 %conv193, %conv194
  %idxprom196 = sext i32 %add195 to i64
  %120 = load i8*, i8** %linebuf, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %120, i64 %idxprom196
  %121 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %121 to i32
  %122 = load i16, i16* %tc, align 2
  %conv199 = zext i16 %122 to i32
  %123 = load i16, i16* %xc, align 2
  %conv200 = zext i16 %123 to i32
  %add201 = add nsw i32 %conv199, %conv200
  %124 = load i16, i16* %cc, align 2
  %conv202 = zext i16 %124 to i32
  %add203 = add nsw i32 %add201, %conv202
  %idxprom204 = sext i32 %add203 to i64
  %125 = load i8*, i8** %linebuf, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %125, i64 %idxprom204
  %126 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %126 to i32
  %cmp207 = icmp eq i32 %conv198, %conv206
  br i1 %cmp207, label %land.lhs.true.209, label %land.end.223

land.lhs.true.209:                                ; preds = %while.cond.192
  %127 = load i16, i16* %tc, align 2
  %conv210 = zext i16 %127 to i32
  %128 = load i16, i16* %xc, align 2
  %conv211 = zext i16 %128 to i32
  %add212 = add nsw i32 %conv210, %conv211
  %129 = load i16, i16* %cc, align 2
  %conv213 = zext i16 %129 to i32
  %add214 = add nsw i32 %add212, %conv213
  %130 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width215 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %130, i32 0, i32 3
  %131 = load i16, i16* %width215, align 2
  %conv216 = zext i16 %131 to i32
  %cmp217 = icmp slt i32 %add214, %conv216
  br i1 %cmp217, label %land.rhs.219, label %land.end.223

land.rhs.219:                                     ; preds = %land.lhs.true.209
  %132 = load i16, i16* %cc, align 2
  %conv220 = zext i16 %132 to i32
  %cmp221 = icmp slt i32 %conv220, 10
  br label %land.end.223

land.end.223:                                     ; preds = %land.rhs.219, %land.lhs.true.209, %while.cond.192
  %133 = phi i1 [ false, %land.lhs.true.209 ], [ false, %while.cond.192 ], [ %cmp221, %land.rhs.219 ]
  br i1 %133, label %while.body.224, label %while.end.226

while.body.224:                                   ; preds = %land.end.223
  %134 = load i16, i16* %cc, align 2
  %inc225 = add i16 %134, 1
  store i16 %inc225, i16* %cc, align 2
  br label %while.cond.192

while.end.226:                                    ; preds = %land.end.223
  %135 = load i16, i16* %tc, align 2
  %inc227 = add i16 %135, 1
  store i16 %inc227, i16* %tc, align 2
  br label %do.cond

do.cond:                                          ; preds = %while.end.226
  %136 = load i16, i16* %tc, align 2
  %conv228 = zext i16 %136 to i32
  %cmp229 = icmp slt i32 %conv228, 120
  br i1 %cmp229, label %land.lhs.true.231, label %land.end.247

land.lhs.true.231:                                ; preds = %do.cond
  %137 = load i16, i16* %cc, align 2
  %conv232 = zext i16 %137 to i32
  %cmp233 = icmp slt i32 %conv232, 9
  br i1 %cmp233, label %land.lhs.true.235, label %land.end.247

land.lhs.true.235:                                ; preds = %land.lhs.true.231
  %138 = load i16, i16* %sc, align 2
  %conv236 = zext i16 %138 to i32
  %cmp237 = icmp slt i32 %conv236, 4
  br i1 %cmp237, label %land.rhs.239, label %land.end.247

land.rhs.239:                                     ; preds = %land.lhs.true.235
  %139 = load i16, i16* %xc, align 2
  %conv240 = zext i16 %139 to i32
  %140 = load i16, i16* %tc, align 2
  %conv241 = zext i16 %140 to i32
  %add242 = add nsw i32 %conv240, %conv241
  %141 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width243 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %141, i32 0, i32 3
  %142 = load i16, i16* %width243, align 2
  %conv244 = zext i16 %142 to i32
  %cmp245 = icmp slt i32 %add242, %conv244
  br label %land.end.247

land.end.247:                                     ; preds = %land.rhs.239, %land.lhs.true.235, %land.lhs.true.231, %do.cond
  %143 = phi i1 [ false, %land.lhs.true.235 ], [ false, %land.lhs.true.231 ], [ false, %do.cond ], [ %cmp245, %land.rhs.239 ]
  br i1 %143, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.247
  %144 = load i64, i64* %bc, align 8
  %inc248 = add i64 %144, 1
  store i64 %inc248, i64* %bc, align 8
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %146 = load i16, i16* %tc, align 2
  %conv249 = trunc i16 %146 to i8
  call void @fli_write_char(%struct._IO_FILE* %145, i8 zeroext %conv249)
  %147 = load i8*, i8** %linebuf, align 8
  %148 = load i16, i16* %xc, align 2
  %conv250 = zext i16 %148 to i32
  %idx.ext251 = sext i32 %conv250 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %147, i64 %idx.ext251
  %149 = load i16, i16* %tc, align 2
  %conv253 = zext i16 %149 to i64
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call254 = call i64 @fwrite(i8* %add.ptr252, i64 %conv253, i64 1, %struct._IO_FILE* %150)
  %151 = load i16, i16* %tc, align 2
  %conv255 = zext i16 %151 to i32
  %152 = load i16, i16* %xc, align 2
  %conv256 = zext i16 %152 to i32
  %add257 = add nsw i32 %conv256, %conv255
  %conv258 = trunc i32 %add257 to i16
  store i16 %conv258, i16* %xc, align 2
  br label %if.end.259

if.end.259:                                       ; preds = %do.end, %if.then.143
  br label %while.cond.83

while.end.260:                                    ; preds = %while.cond.83
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call261 = call i64 @ftell(%struct._IO_FILE* %153)
  store i64 %call261, i64* %lineend, align 8
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %155 = load i64, i64* %linepos, align 8
  %call262 = call i32 @fseek(%struct._IO_FILE* %154, i64 %155, i32 0)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %157 = load i64, i64* %bc, align 8
  %conv263 = trunc i64 %157 to i8
  call void @fli_write_char(%struct._IO_FILE* %156, i8 zeroext %conv263)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %159 = load i64, i64* %lineend, align 8
  %call264 = call i32 @fseek(%struct._IO_FILE* %158, i64 %159, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %while.end.260
  %160 = load i16, i16* %yc, align 2
  %inc265 = add i16 %160, 1
  store i16 %inc265, i16* %yc, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call266 = call i64 @ftell(%struct._IO_FILE* %161)
  %162 = load i64, i64* %chunkpos, align 8
  %sub267 = sub i64 %call266, %162
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %sub267, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 12, i16* %magic, align 2
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %164 = load i64, i64* %chunkpos, align 8
  %call268 = call i32 @fseek(%struct._IO_FILE* %163, i64 %164, i32 0)
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size269 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %166 = load i64, i64* %size269, align 8
  call void @fli_write_long(%struct._IO_FILE* %165, i64 %166)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic270 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %168 = load i16, i16* %magic270, align 2
  call void @fli_write_short(%struct._IO_FILE* %167, i16 zeroext %168)
  %size271 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %169 = load i64, i64* %size271, align 8
  %and = and i64 %169, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.272, label %if.end.275

if.then.272:                                      ; preds = %for.end
  %size273 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %170 = load i64, i64* %size273, align 8
  %inc274 = add i64 %170, 1
  store i64 %inc274, i64* %size273, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.272, %for.end
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %172 = load i64, i64* %chunkpos, align 8
  %size276 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %173 = load i64, i64* %size276, align 8
  %add277 = add i64 %172, %173
  %call278 = call i32 @fseek(%struct._IO_FILE* %171, i64 %add277, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @fli_read_char(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %b = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %b, i64 1, i64 1, %struct._IO_FILE* %0)
  %1 = load i8, i8* %b, align 1
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define internal void @fli_write_char(%struct._IO_FILE* %f, i8 zeroext %b) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %b.addr = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8 %b, i8* %b.addr, align 1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %b.addr, i64 1, i64 1, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @fli_write_black(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  %chunk = alloca %struct._fli_chunk, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 6, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 13, i16* %magic, align 2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size1 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %1 = load i64, i64* %size1, align 8
  call void @fli_write_long(%struct._IO_FILE* %0, i64 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic2 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %3 = load i16, i16* %magic2, align 2
  call void @fli_write_short(%struct._IO_FILE* %2, i16 zeroext %3)
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @fli_write_copy(%struct._IO_FILE* %f, %struct._fli_header* %fli_header, i8* %framebuf) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %fli_header.addr = alloca %struct._fli_header*, align 8
  %framebuf.addr = alloca i8*, align 8
  %chunkpos = alloca i64, align 8
  %chunk = alloca %struct._fli_chunk, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._fli_header* %fli_header, %struct._fli_header** %fli_header.addr, align 8
  store i8* %framebuf, i8** %framebuf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %chunkpos, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i64, i64* %chunkpos, align 8
  %add = add i64 %2, 6
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add, i32 0)
  %3 = load i8*, i8** %framebuf.addr, align 8
  %4 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %4, i32 0, i32 3
  %5 = load i16, i16* %width, align 2
  %conv = zext i16 %5 to i64
  %6 = load %struct._fli_header*, %struct._fli_header** %fli_header.addr, align 8
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %6, i32 0, i32 4
  %7 = load i16, i16* %height, align 2
  %conv2 = zext i16 %7 to i64
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call i64 @fwrite(i8* %3, i64 %conv, i64 %conv2, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i64 @ftell(%struct._IO_FILE* %9)
  %10 = load i64, i64* %chunkpos, align 8
  %sub = sub i64 %call4, %10
  %size = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  store i64 %sub, i64* %size, align 8
  %magic = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  store i16 16, i16* %magic, align 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %12 = load i64, i64* %chunkpos, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* %11, i64 %12, i32 0)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %size6 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %14 = load i64, i64* %size6, align 8
  call void @fli_write_long(%struct._IO_FILE* %13, i64 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %magic7 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 1
  %16 = load i16, i16* %magic7, align 2
  call void @fli_write_short(%struct._IO_FILE* %15, i16 zeroext %16)
  %size8 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %17 = load i64, i64* %size8, align 8
  %and = and i64 %17, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %size9 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %18 = load i64, i64* %size9, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %size9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %20 = load i64, i64* %chunkpos, align 8
  %size10 = getelementptr inbounds %struct._fli_chunk, %struct._fli_chunk* %chunk, i32 0, i32 0
  %21 = load i64, i64* %size10, align 8
  %add11 = add i64 %20, %21
  %call12 = call i32 @fseek(%struct._IO_FILE* %19, i64 %add11, i32 0)
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
