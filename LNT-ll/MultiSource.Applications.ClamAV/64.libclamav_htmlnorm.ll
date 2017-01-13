; ModuleID = './MultiSource.Applications.ClamAV/64.libclamav_htmlnorm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.m_area_tag = type { i8*, i64, i64 }
%struct.tag_arguments_tag = type { i32, i32, i8**, i8**, %struct.blob** }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.file_buff_tag = type { i32, [8192 x i8], i32 }
%struct.entity_conv = type { i8*, i8*, i32, i16, %struct.hashtable*, i8, i8, i8, i8, i32, [4 x i8], i64, i64, i8, [24 x i8], %struct.m_area_tag, %struct.m_area_tag, %struct.m_area_tag, i32 }
%struct.hashtable = type { %struct.element*, i64, i64, i64 }
%struct.element = type { i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@table_order = global [64 x i32] [i32 0, i32 2, i32 1, i32 0, i32 2, i32 1, i32 2, i32 1, i32 1, i32 2, i32 1, i32 2, i32 0, i32 1, i32 2, i32 1, i32 0, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 1, i32 2, i32 0, i32 1, i32 2, i32 1, i32 1, i32 2, i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 1, i32 0, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2], align 16
@decrypt_tables = global [3 x [128 x i32]] [[128 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 87, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 46, i32 71, i32 122, i32 86, i32 66, i32 106, i32 47, i32 38, i32 73, i32 65, i32 52, i32 50, i32 91, i32 118, i32 114, i32 67, i32 56, i32 57, i32 112, i32 69, i32 104, i32 113, i32 79, i32 9, i32 98, i32 68, i32 35, i32 117, i32 60, i32 126, i32 62, i32 94, i32 255, i32 119, i32 74, i32 97, i32 93, i32 34, i32 75, i32 111, i32 78, i32 59, i32 76, i32 80, i32 103, i32 42, i32 125, i32 116, i32 84, i32 43, i32 45, i32 44, i32 48, i32 110, i32 107, i32 102, i32 53, i32 37, i32 33, i32 100, i32 77, i32 82, i32 99, i32 63, i32 123, i32 120, i32 41, i32 40, i32 115, i32 89, i32 51, i32 127, i32 109, i32 85, i32 83, i32 124, i32 58, i32 95, i32 101, i32 70, i32 88, i32 49, i32 105, i32 108, i32 90, i32 72, i32 39, i32 92, i32 61, i32 36, i32 121, i32 55, i32 96, i32 81, i32 32, i32 54], [128 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 123, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 50, i32 48, i32 33, i32 41, i32 91, i32 56, i32 51, i32 61, i32 88, i32 58, i32 53, i32 101, i32 57, i32 92, i32 86, i32 115, i32 102, i32 78, i32 69, i32 107, i32 98, i32 89, i32 120, i32 94, i32 125, i32 74, i32 109, i32 113, i32 60, i32 96, i32 62, i32 83, i32 255, i32 66, i32 39, i32 72, i32 114, i32 117, i32 49, i32 55, i32 77, i32 82, i32 34, i32 84, i32 106, i32 71, i32 100, i32 45, i32 32, i32 127, i32 46, i32 76, i32 93, i32 126, i32 108, i32 111, i32 121, i32 116, i32 67, i32 38, i32 118, i32 37, i32 36, i32 43, i32 40, i32 35, i32 65, i32 52, i32 9, i32 42, i32 68, i32 63, i32 119, i32 59, i32 85, i32 105, i32 97, i32 99, i32 80, i32 103, i32 81, i32 73, i32 79, i32 70, i32 104, i32 124, i32 54, i32 112, i32 110, i32 122, i32 47, i32 95, i32 75, i32 90, i32 44, i32 87], [128 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 110, i32 10, i32 11, i32 12, i32 6, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 45, i32 117, i32 82, i32 96, i32 113, i32 94, i32 73, i32 92, i32 98, i32 125, i32 41, i32 54, i32 32, i32 124, i32 122, i32 127, i32 107, i32 99, i32 51, i32 43, i32 104, i32 81, i32 102, i32 118, i32 49, i32 100, i32 84, i32 67, i32 60, i32 58, i32 62, i32 126, i32 255, i32 69, i32 44, i32 42, i32 116, i32 39, i32 55, i32 68, i32 121, i32 89, i32 47, i32 111, i32 38, i32 114, i32 106, i32 57, i32 123, i32 63, i32 56, i32 119, i32 103, i32 83, i32 71, i32 52, i32 120, i32 93, i32 48, i32 35, i32 90, i32 91, i32 108, i32 72, i32 85, i32 112, i32 105, i32 46, i32 76, i32 33, i32 36, i32 78, i32 80, i32 9, i32 86, i32 115, i32 53, i32 97, i32 75, i32 88, i32 59, i32 87, i32 34, i32 109, i32 77, i32 37, i32 40, i32 70, i32 74, i32 50, i32 65, i32 61, i32 95, i32 79, i32 66, i32 101]], align 16
@.str = private unnamed_addr constant [16 x i8] c"No HTML stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mmap HTML failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mmap'ed file\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fstat HTML failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s/screnc.html\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"open failed: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"#@~^\00", align 1
@base64_chars = internal constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 62, i32 -1, i32 -1, i32 -1, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.8 = private unnamed_addr constant [17 x i8] c"Invalid HTML fd\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%s/rfc2397\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%s/comment.html\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%s/nocomment.html\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%s/script.html\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Impossible, special_char can't occur here\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"HTML Engine Error\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"data:\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\22data:\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"/script\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"/a\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"/form\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"jscript.encode\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"javascript\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"vbscript.encode\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"vbscript\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"http-equiv\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" \22'\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"href_title\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"form\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"dynsrc\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"iframe\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"&#%d;\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"</script>\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"RFC2397 data file: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"From html-normalise\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Content-type: \00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"text/plain\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c";base64\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"Content-transfer-encoding: base64\0A\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1

; Function Attrs: nounwind uwtable
define i8* @cli_readline(%struct._IO_FILE* %stream, %struct.m_area_tag* %m_area, i32 %max_len) #0 {
entry:
  %retval = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %m_area.addr = alloca %struct.m_area_tag*, align 8
  %max_len.addr = alloca i32, align 4
  %line = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %line_len = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.m_area_tag* %m_area, %struct.m_area_tag** %m_area.addr, align 8
  store i32 %max_len, i32* %max_len.addr, align 4
  %0 = load i32, i32* %max_len.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call i8* @cli_malloc(i64 %conv)
  store i8* %call, i8** %line, align 8
  %1 = load i8*, i8** %line, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %tobool1 = icmp ne %struct.m_area_tag* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else.53

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %buffer = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %3, i32 0, i32 0
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %offset = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %5, i32 0, i32 2
  %6 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %ptr, align 8
  store i8* %add.ptr, i8** %start, align 8
  %7 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %buffer3 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %7, i32 0, i32 0
  %8 = load i8*, i8** %buffer3, align 8
  %9 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %length = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %length, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %add.ptr4, i8** %end, align 8
  %11 = load i8*, i8** %start, align 8
  %12 = load i8*, i8** %end, align 8
  %cmp = icmp uge i8* %11, %12
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  %13 = load i8*, i8** %line, align 8
  call void @free(i8* %13) #3
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.2
  store i32 1, i32* %line_len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8*, i8** %end, align 8
  %cmp8 = icmp ult i8* %14, %15
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %16 = load i8*, i8** %ptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv10 = zext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv10, 10
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* %line_len, align 4
  %19 = load i32, i32* %max_len.addr, align 4
  %sub = sub i32 %19, 1
  %cmp13 = icmp ult i32 %18, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %22 = load i32, i32* %line_len, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %line_len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load i8*, i8** %ptr, align 8
  %24 = load i8*, i8** %end, align 8
  %cmp15 = icmp eq i8* %23, %24
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.end
  %25 = load i32, i32* %line_len, align 4
  %dec = add i32 %25, -1
  store i32 %dec, i32* %line_len, align 4
  %26 = load i8*, i8** %line, align 8
  %27 = load i8*, i8** %start, align 8
  %28 = load i32, i32* %line_len, align 4
  %conv18 = zext i32 %28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %conv18, i32 1, i1 false)
  %29 = load i32, i32* %line_len, align 4
  %idxprom = zext i32 %29 to i64
  %30 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.50

if.else:                                          ; preds = %while.end
  %31 = load i8*, i8** %ptr, align 8
  %32 = load i8, i8* %31, align 1
  %conv19 = zext i8 %32 to i32
  %cmp20 = icmp eq i32 %conv19, 10
  br i1 %cmp20, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %if.else
  %33 = load i8*, i8** %line, align 8
  %34 = load i8*, i8** %start, align 8
  %35 = load i32, i32* %line_len, align 4
  %conv23 = zext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %conv23, i32 1, i1 false)
  %36 = load i32, i32* %line_len, align 4
  %idxprom24 = zext i32 %36 to i64
  %37 = load i8*, i8** %line, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end.49

if.else.26:                                       ; preds = %if.else
  %38 = load i32, i32* %line_len, align 4
  store i32 %38, i32* %count, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.38, %if.else.26
  %39 = load i8*, i8** %ptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv28 = zext i8 %40 to i32
  %idxprom29 = sext i32 %conv28 to i64
  %call30 = call i16** @__ctype_b_loc() #7
  %41 = load i16*, i16** %call30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %41, i64 %idxprom29
  %42 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %42 to i32
  %and = and i32 %conv32, 8192
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %land.end.37, label %land.rhs.34

land.rhs.34:                                      ; preds = %while.cond.27
  %43 = load i32, i32* %line_len, align 4
  %cmp35 = icmp ugt i32 %43, 1
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.34, %while.cond.27
  %44 = phi i1 [ false, %while.cond.27 ], [ %cmp35, %land.rhs.34 ]
  br i1 %44, label %while.body.38, label %while.end.41

while.body.38:                                    ; preds = %land.end.37
  %45 = load i8*, i8** %ptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %incdec.ptr39, i8** %ptr, align 8
  %46 = load i32, i32* %line_len, align 4
  %dec40 = add i32 %46, -1
  store i32 %dec40, i32* %line_len, align 4
  br label %while.cond.27

while.end.41:                                     ; preds = %land.end.37
  %47 = load i32, i32* %line_len, align 4
  %cmp42 = icmp eq i32 %47, 1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.end.41
  %48 = load i32, i32* %count, align 4
  store i32 %48, i32* %line_len, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %while.end.41
  %49 = load i8*, i8** %line, align 8
  %50 = load i8*, i8** %start, align 8
  %51 = load i32, i32* %line_len, align 4
  %conv46 = zext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %conv46, i32 1, i1 false)
  %52 = load i32, i32* %line_len, align 4
  %idxprom47 = zext i32 %52 to i64
  %53 = load i8*, i8** %line, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %53, i64 %idxprom47
  store i8 0, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.then.22
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.17
  %54 = load i32, i32* %line_len, align 4
  %conv51 = zext i32 %54 to i64
  %55 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %offset52 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %55, i32 0, i32 2
  %56 = load i64, i64* %offset52, align 8
  %add = add nsw i64 %56, %conv51
  store i64 %add, i64* %offset52, align 8
  br label %if.end.96

if.else.53:                                       ; preds = %if.end
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tobool54 = icmp ne %struct._IO_FILE* %57, null
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.else.53
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %58 = load i8*, i8** %line, align 8
  call void @free(i8* %58) #3
  store i8* null, i8** %retval
  br label %return

if.end.56:                                        ; preds = %if.else.53
  %59 = load i8*, i8** %line, align 8
  %60 = load i32, i32* %max_len.addr, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call57 = call i8* @fgets(i8* %59, i32 %60, %struct._IO_FILE* %61)
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %62 = load i8*, i8** %line, align 8
  call void @free(i8* %62) #3
  store i8* null, i8** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.56
  %63 = load i8*, i8** %line, align 8
  %call62 = call i64 @strlen(i8* %63) #8
  %conv63 = trunc i64 %call62 to i32
  store i32 %conv63, i32* %line_len, align 4
  %64 = load i32, i32* %line_len, align 4
  %cmp64 = icmp eq i32 %64, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.61
  %65 = load i8*, i8** %line, align 8
  call void @free(i8* %65) #3
  store i8* null, i8** %retval
  br label %return

if.end.67:                                        ; preds = %if.end.61
  %66 = load i32, i32* %line_len, align 4
  %67 = load i32, i32* %max_len.addr, align 4
  %sub68 = sub i32 %67, 1
  %cmp69 = icmp eq i32 %66, %sub68
  br i1 %cmp69, label %if.then.71, label %if.end.95

if.then.71:                                       ; preds = %if.end.67
  store i32 0, i32* %count, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %if.end.88, %if.then.71
  %68 = load i32, i32* %line_len, align 4
  %dec73 = add i32 %68, -1
  store i32 %dec73, i32* %line_len, align 4
  %idxprom74 = zext i32 %dec73 to i64
  %69 = load i8*, i8** %line, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %69, i64 %idxprom74
  %70 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %70 to i32
  %idxprom77 = sext i32 %conv76 to i64
  %call78 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call78, align 8
  %arrayidx79 = getelementptr inbounds i16, i16* %71, i64 %idxprom77
  %72 = load i16, i16* %arrayidx79, align 2
  %conv80 = zext i16 %72 to i32
  %and81 = and i32 %conv80, 8192
  %tobool82 = icmp ne i32 %and81, 0
  %lnot = xor i1 %tobool82, true
  br i1 %lnot, label %while.body.83, label %while.end.89

while.body.83:                                    ; preds = %while.cond.72
  %73 = load i32, i32* %count, align 4
  %dec84 = add i32 %73, -1
  store i32 %dec84, i32* %count, align 4
  %74 = load i32, i32* %line_len, align 4
  %cmp85 = icmp eq i32 %74, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %while.body.83
  %75 = load i8*, i8** %line, align 8
  store i8* %75, i8** %retval
  br label %return

if.end.88:                                        ; preds = %while.body.83
  br label %while.cond.72

while.end.89:                                     ; preds = %while.cond.72
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %77 = load i32, i32* %count, align 4
  %conv90 = zext i32 %77 to i64
  %call91 = call i32 @fseek(%struct._IO_FILE* %76, i64 %conv90, i32 1)
  %78 = load i32, i32* %line_len, align 4
  %add92 = add i32 %78, 1
  %idxprom93 = zext i32 %add92 to i64
  %79 = load i8*, i8** %line, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %79, i64 %idxprom93
  store i8 0, i8* %arrayidx94, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %while.end.89, %if.end.67
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.50
  %80 = load i8*, i8** %line, align 8
  store i8* %80, i8** %retval
  br label %return

return:                                           ; preds = %if.end.96, %if.then.87, %if.then.66, %if.then.60, %if.then.55, %if.then.6, %if.then
  %81 = load i8*, i8** %retval
  ret i8* %81
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare void @cli_dbgmsg(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define void @html_tag_arg_free(%struct.tag_arguments_tag* %tags) #0 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %i = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %1, i32 0, i32 0
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %4, i32 0, i32 2
  %5 = load i8**, i8*** %tag, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %6) #3
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %8, i32 0, i32 3
  %9 = load i8**, i8*** %value, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value4 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %12, i32 0, i32 3
  %13 = load i8**, i8*** %value4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %13, i64 %idxprom3
  %14 = load i8*, i8** %arrayidx5, align 8
  call void @free(i8* %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %15, i32 0, i32 4
  %16 = load %struct.blob**, %struct.blob*** %contents, align 8
  %tobool6 = icmp ne %struct.blob** %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents9 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %18, i32 0, i32 4
  %19 = load %struct.blob**, %struct.blob*** %contents9, align 8
  %arrayidx10 = getelementptr inbounds %struct.blob*, %struct.blob** %19, i64 %idxprom8
  %20 = load %struct.blob*, %struct.blob** %arrayidx10, align 8
  %tobool11 = icmp ne %struct.blob* %20, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.then.7
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents14 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %22, i32 0, i32 4
  %23 = load %struct.blob**, %struct.blob*** %contents14, align 8
  %arrayidx15 = getelementptr inbounds %struct.blob*, %struct.blob** %23, i64 %idxprom13
  %24 = load %struct.blob*, %struct.blob** %arrayidx15, align 8
  call void @blobDestroy(%struct.blob* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.then.7
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag18 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %26, i32 0, i32 2
  %27 = load i8**, i8*** %tag18, align 8
  %tobool19 = icmp ne i8** %27, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.end
  %28 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag21 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %28, i32 0, i32 2
  %29 = load i8**, i8*** %tag21, align 8
  %30 = bitcast i8** %29 to i8*
  call void @free(i8* %30) #3
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.end
  %31 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value23 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %31, i32 0, i32 3
  %32 = load i8**, i8*** %value23, align 8
  %tobool24 = icmp ne i8** %32, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %33 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value26 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %33, i32 0, i32 3
  %34 = load i8**, i8*** %value26, align 8
  %35 = bitcast i8** %34 to i8*
  call void @free(i8* %35) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %36 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents28 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %36, i32 0, i32 4
  %37 = load %struct.blob**, %struct.blob*** %contents28, align 8
  %tobool29 = icmp ne %struct.blob** %37, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %38 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents31 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %38, i32 0, i32 4
  %39 = load %struct.blob**, %struct.blob*** %contents31, align 8
  %40 = bitcast %struct.blob** %39 to i8*
  call void @free(i8* %40) #3
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  %41 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents33 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %41, i32 0, i32 4
  store %struct.blob** null, %struct.blob*** %contents33, align 8
  %42 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value34 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %42, i32 0, i32 3
  store i8** null, i8*** %value34, align 8
  %43 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag35 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %43, i32 0, i32 2
  store i8** null, i8*** %tag35, align 8
  %44 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count36 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %44, i32 0, i32 0
  store i32 0, i32* %count36, align 4
  ret void
}

declare void @blobDestroy(%struct.blob*) #1

; Function Attrs: nounwind uwtable
define i32 @html_normalise_mem(i8* %in_buff, i64 %in_size, i8* %dirname, %struct.tag_arguments_tag* %hrefs, %struct.cli_dconf* %dconf) #0 {
entry:
  %in_buff.addr = alloca i8*, align 8
  %in_size.addr = alloca i64, align 8
  %dirname.addr = alloca i8*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %dconf.addr = alloca %struct.cli_dconf*, align 8
  %m_area = alloca %struct.m_area_tag, align 8
  store i8* %in_buff, i8** %in_buff.addr, align 8
  store i64 %in_size, i64* %in_size.addr, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  store %struct.cli_dconf* %dconf, %struct.cli_dconf** %dconf.addr, align 8
  %0 = load i8*, i8** %in_buff.addr, align 8
  %buffer = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 0
  store i8* %0, i8** %buffer, align 8
  %1 = load i64, i64* %in_size.addr, align 8
  %length = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 1
  store i64 %1, i64* %length, align 8
  %offset = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 2
  store i64 0, i64* %offset, align 8
  %2 = load i8*, i8** %dirname.addr, align 8
  %3 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %4 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %call = call i32 @cli_html_normalise(i32 -1, %struct.m_area_tag* %m_area, i8* %2, %struct.tag_arguments_tag* %3, %struct.cli_dconf* %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_html_normalise(i32 %fd, %struct.m_area_tag* %m_area, i8* %dirname, %struct.tag_arguments_tag* %hrefs, %struct.cli_dconf* %dconf) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %m_area.addr = alloca %struct.m_area_tag*, align 8
  %dirname.addr = alloca i8*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %dconf.addr = alloca %struct.cli_dconf*, align 8
  %fd_tmp = alloca i32, align 4
  %tag_length = alloca i32, align 4
  %tag_arg_length = alloca i32, align 4
  %binary = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %escape = alloca i32, align 4
  %value = alloca i32, align 4
  %hex = alloca i32, align 4
  %tag_val_length = alloca i32, align 4
  %table_pos = alloca i32, align 4
  %in_script = alloca i32, align 4
  %stream_in = alloca %struct._IO_FILE*, align 8
  %state = alloca i32, align 4
  %next_state = alloca i32, align 4
  %filename = alloca [1024 x i8], align 16
  %tag = alloca [1025 x i8], align 16
  %tag_arg = alloca [1025 x i8], align 16
  %tag_val = alloca [1025 x i8], align 16
  %tmp_file = alloca i8*, align 8
  %line = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %arg_value = alloca i8*, align 8
  %tag_args = alloca %struct.tag_arguments_tag, align 8
  %quoted = alloca i32, align 4
  %length = alloca i64, align 8
  %file_buff_o1 = alloca %struct.file_buff_tag*, align 8
  %file_buff_o2 = alloca %struct.file_buff_tag*, align 8
  %file_buff_script = alloca %struct.file_buff_tag*, align 8
  %file_tmp_o1 = alloca %struct.file_buff_tag*, align 8
  %in_ahref = alloca i32, align 4
  %href_contents_begin = alloca i8*, align 8
  %ptrend = alloca i8*, align 8
  %in_form_action = alloca i8*, align 8
  %conv = alloca %struct.entity_conv, align 8
  %rc = alloca i32, align 4
  %entity_val = alloca [1025 x i8], align 16
  %entity_val_length = alloca i64, align 8
  %dconf_entconv = alloca i32, align 4
  %http_equiv = alloca i8*, align 8
  %http_content = alloca i8*, align 8
  %len = alloca i64, align 8
  %http_content2 = alloca i8*, align 8
  %charset = alloca i8*, align 8
  %i = alloca i64, align 8
  %arg_value_title = alloca i8*, align 8
  %arg_action_value = alloca i8*, align 8
  %i953 = alloca i64, align 8
  %normalized = alloca i8*, align 8
  %c = alloca i8, align 1
  %c996 = alloca i8, align 1
  %i1054 = alloca i64, align 8
  %c1069 = alloca i8, align 1
  %buff = alloca [10 x i8], align 1
  %i1599 = alloca i64, align 8
  %normalized1600 = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.m_area_tag* %m_area, %struct.m_area_tag** %m_area.addr, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  store %struct.cli_dconf* %dconf, %struct.cli_dconf** %dconf.addr, align 8
  store i32 0, i32* %retval1, align 4
  store i32 0, i32* %value, align 4
  store i32 0, i32* %tag_val_length, align 4
  store i32 0, i32* %in_script, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream_in, align 8
  store i32 1, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  store i32 0, i32* %in_ahref, align 4
  store i8* null, i8** %href_contents_begin, align 8
  store i8* null, i8** %ptrend, align 8
  store i8* null, i8** %in_form_action, align 8
  store i64 0, i64* %entity_val_length, align 8
  %0 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %tobool = icmp ne %struct.cli_dconf* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %1, i32 0, i32 6
  %2 = load i32, i32* %phishing, align 4
  %and = and i32 %2, 2
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %dconf_entconv, align 4
  %scanContents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %tag_args, i32 0, i32 1
  store i32 0, i32* %scanContents, align 4
  %4 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %tobool3 = icmp ne %struct.m_area_tag* %4, null
  br i1 %tobool3, label %if.end.16, label %if.then

if.then:                                          ; preds = %land.end
  %5 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %6, i64 0, i32 0) #3
  %7 = load i32, i32* %fd.addr, align 4
  %call6 = call i32 @dup(i32 %7) #3
  store i32 %call6, i32* %fd_tmp, align 4
  %8 = load i32, i32* %fd_tmp, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %9 = load i32, i32* %fd_tmp, align 4
  %call11 = call %struct._IO_FILE* @fdopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #3
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %stream_in, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %tobool12 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %11 = load i32, i32* %fd_tmp, align 4
  %call14 = call i32 @close(i32 %11)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.end
  %12 = load i32, i32* %dconf_entconv, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.16
  %call18 = call i32 @init_entity_converter(%struct.entity_conv* %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 16384)
  store i32 %call18, i32* %rc, align 4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %land.lhs.true
  %13 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %tobool21 = icmp ne %struct.m_area_tag* %13, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.then.20
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %14)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  %15 = load i32, i32* %rc, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %if.end.16
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %tag_args, i32 0, i32 0
  store i32 0, i32* %count, align 4
  %tag26 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %tag_args, i32 0, i32 2
  store i8** null, i8*** %tag26, align 8
  %value27 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %tag_args, i32 0, i32 3
  store i8** null, i8*** %value27, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %tag_args, i32 0, i32 4
  store %struct.blob** null, %struct.blob*** %contents, align 8
  %16 = load i8*, i8** %dirname.addr, align 8
  %tobool28 = icmp ne i8* %16, null
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.25
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %17 = load i8*, i8** %dirname.addr, align 8
  %call30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %17) #3
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call32 = call i32 @mkdir(i8* %arraydecay31, i32 448) #3
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %if.then.29
  %call35 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call35, align 4
  %cmp36 = icmp ne i32 %18, 17
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.39:                                        ; preds = %land.lhs.true.34, %if.then.29
  %call40 = call i8* @cli_malloc(i64 8200)
  %19 = bitcast i8* %call40 to %struct.file_buff_tag*
  store %struct.file_buff_tag* %19, %struct.file_buff_tag** %file_buff_o1, align 8
  %20 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %tobool41 = icmp ne %struct.file_buff_tag* %20, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.43:                                        ; preds = %if.end.39
  %call44 = call i8* @cli_malloc(i64 8200)
  %21 = bitcast i8* %call44 to %struct.file_buff_tag*
  store %struct.file_buff_tag* %21, %struct.file_buff_tag** %file_buff_o2, align 8
  %22 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %tobool45 = icmp ne %struct.file_buff_tag* %22, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %23 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %24 = bitcast %struct.file_buff_tag* %23 to i8*
  call void @free(i8* %24) #3
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.47:                                        ; preds = %if.end.43
  %call48 = call i8* @cli_malloc(i64 8200)
  %25 = bitcast i8* %call48 to %struct.file_buff_tag*
  store %struct.file_buff_tag* %25, %struct.file_buff_tag** %file_buff_script, align 8
  %26 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %tobool49 = icmp ne %struct.file_buff_tag* %26, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.47
  %27 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %28 = bitcast %struct.file_buff_tag* %27 to i8*
  call void @free(i8* %28) #3
  %29 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %30 = bitcast %struct.file_buff_tag* %29 to i8*
  call void @free(i8* %30) #3
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.51:                                        ; preds = %if.end.47
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %31 = load i8*, i8** %dirname.addr, align 8
  %call53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay52, i64 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* %31) #3
  %arraydecay54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call55 = call i32 (i8*, i32, ...) @open(i8* %arraydecay54, i32 577, i32 384)
  %32 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %fd56 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %32, i32 0, i32 0
  store i32 %call55, i32* %fd56, align 4
  %33 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %fd57 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %33, i32 0, i32 0
  %34 = load i32, i32* %fd57, align 4
  %tobool58 = icmp ne i32 %34, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.end.51
  %arraydecay60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay60)
  %35 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %36 = bitcast %struct.file_buff_tag* %35 to i8*
  call void @free(i8* %36) #3
  %37 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %38 = bitcast %struct.file_buff_tag* %37 to i8*
  call void @free(i8* %38) #3
  %39 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %40 = bitcast %struct.file_buff_tag* %39 to i8*
  call void @free(i8* %40) #3
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.61:                                        ; preds = %if.end.51
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %41 = load i8*, i8** %dirname.addr, align 8
  %call63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay62, i64 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* %41) #3
  %arraydecay64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call65 = call i32 (i8*, i32, ...) @open(i8* %arraydecay64, i32 577, i32 384)
  %42 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %fd66 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %42, i32 0, i32 0
  store i32 %call65, i32* %fd66, align 4
  %43 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %fd67 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %43, i32 0, i32 0
  %44 = load i32, i32* %fd67, align 4
  %tobool68 = icmp ne i32 %44, 0
  br i1 %tobool68, label %if.end.73, label %if.then.69

if.then.69:                                       ; preds = %if.end.61
  %arraydecay70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay70)
  %45 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %fd71 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %45, i32 0, i32 0
  %46 = load i32, i32* %fd71, align 4
  %call72 = call i32 @close(i32 %46)
  %47 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %48 = bitcast %struct.file_buff_tag* %47 to i8*
  call void @free(i8* %48) #3
  %49 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %50 = bitcast %struct.file_buff_tag* %49 to i8*
  call void @free(i8* %50) #3
  %51 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %52 = bitcast %struct.file_buff_tag* %51 to i8*
  call void @free(i8* %52) #3
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.73:                                        ; preds = %if.end.61
  %arraydecay74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %53 = load i8*, i8** %dirname.addr, align 8
  %call75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay74, i64 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %53) #3
  %arraydecay76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call77 = call i32 (i8*, i32, ...) @open(i8* %arraydecay76, i32 577, i32 384)
  %54 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %fd78 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %54, i32 0, i32 0
  store i32 %call77, i32* %fd78, align 4
  %55 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %fd79 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %55, i32 0, i32 0
  %56 = load i32, i32* %fd79, align 4
  %tobool80 = icmp ne i32 %56, 0
  br i1 %tobool80, label %if.end.87, label %if.then.81

if.then.81:                                       ; preds = %if.end.73
  %arraydecay82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay82)
  %57 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %fd83 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %57, i32 0, i32 0
  %58 = load i32, i32* %fd83, align 4
  %call84 = call i32 @close(i32 %58)
  %59 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %fd85 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %59, i32 0, i32 0
  %60 = load i32, i32* %fd85, align 4
  %call86 = call i32 @close(i32 %60)
  %61 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %62 = bitcast %struct.file_buff_tag* %61 to i8*
  call void @free(i8* %62) #3
  %63 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %64 = bitcast %struct.file_buff_tag* %63 to i8*
  call void @free(i8* %64) #3
  %65 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %66 = bitcast %struct.file_buff_tag* %65 to i8*
  call void @free(i8* %66) #3
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  br label %abort

if.end.87:                                        ; preds = %if.end.73
  %67 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %length88 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %67, i32 0, i32 2
  store i32 0, i32* %length88, align 4
  %68 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length89 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %68, i32 0, i32 2
  store i32 0, i32* %length89, align 4
  %69 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %length90 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %69, i32 0, i32 2
  store i32 0, i32* %length90, align 4
  br label %if.end.91

if.else:                                          ; preds = %if.end.25
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o1, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_o2, align 8
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_buff_script, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %if.end.87
  store i32 0, i32* %binary, align 4
  %70 = load i32, i32* %dconf_entconv, align 4
  %tobool92 = icmp ne i32 %70, 0
  br i1 %tobool92, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.end.91
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %72 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %call94 = call i8* @encoding_norm_readline(%struct.entity_conv* %conv, %struct._IO_FILE* %71, %struct.m_area_tag* %72, i64 8192)
  store i8* %call94, i8** %line, align 8
  store i8* %call94, i8** %ptr, align 8
  br label %if.end.97

if.else.95:                                       ; preds = %if.end.91
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %74 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %call96 = call i8* @cli_readline(%struct._IO_FILE* %73, %struct.m_area_tag* %74, i32 8192)
  store i8* %call96, i8** %line, align 8
  store i8* %call96, i8** %ptr, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.then.93
  br label %while.cond

while.cond:                                       ; preds = %if.end.1595, %if.end.97
  %75 = load i8*, i8** %line, align 8
  %tobool98 = icmp ne i8* %75, null
  br i1 %tobool98, label %while.body, label %while.end.1596

while.body:                                       ; preds = %while.cond
  %76 = load i8*, i8** %href_contents_begin, align 8
  %tobool99 = icmp ne i8* %76, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %while.body
  %77 = load i8*, i8** %ptr, align 8
  store i8* %77, i8** %href_contents_begin, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %while.body
  br label %while.cond.102

while.cond.102:                                   ; preds = %while.body.113, %if.end.101
  %78 = load i8*, i8** %ptr, align 8
  %79 = load i8, i8* %78, align 1
  %conv103 = zext i8 %79 to i32
  %tobool104 = icmp ne i32 %conv103, 0
  br i1 %tobool104, label %land.rhs.105, label %land.end.111

land.rhs.105:                                     ; preds = %while.cond.102
  %80 = load i8*, i8** %ptr, align 8
  %81 = load i8, i8* %80, align 1
  %conv106 = zext i8 %81 to i32
  %idxprom = sext i32 %conv106 to i64
  %call107 = call i16** @__ctype_b_loc() #7
  %82 = load i16*, i16** %call107, align 8
  %arrayidx = getelementptr inbounds i16, i16* %82, i64 %idxprom
  %83 = load i16, i16* %arrayidx, align 2
  %conv108 = zext i16 %83 to i32
  %and109 = and i32 %conv108, 8192
  %tobool110 = icmp ne i32 %and109, 0
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.105, %while.cond.102
  %84 = phi i1 [ false, %while.cond.102 ], [ %tobool110, %land.rhs.105 ]
  br i1 %84, label %while.body.113, label %while.end

while.body.113:                                   ; preds = %land.end.111
  %85 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond.102

while.end:                                        ; preds = %land.end.111
  br label %while.cond.114

while.cond.114:                                   ; preds = %sw.epilog.1578, %if.then.129, %if.then.122, %while.end
  %86 = load i8*, i8** %ptr, align 8
  %87 = load i8, i8* %86, align 1
  %tobool115 = icmp ne i8 %87, 0
  br i1 %tobool115, label %while.body.116, label %while.end.1579

while.body.116:                                   ; preds = %while.cond.114
  %88 = load i32, i32* %binary, align 4
  %tobool117 = icmp ne i32 %88, 0
  br i1 %tobool117, label %if.end.123, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %while.body.116
  %89 = load i8*, i8** %ptr, align 8
  %90 = load i8, i8* %89, align 1
  %conv119 = zext i8 %90 to i32
  %cmp120 = icmp eq i32 %conv119, 10
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %land.lhs.true.118
  %91 = load i8*, i8** %ptr, align 8
  store i8 32, i8* %91, align 1
  br label %while.cond.114

if.end.123:                                       ; preds = %land.lhs.true.118, %while.body.116
  %92 = load i32, i32* %binary, align 4
  %tobool124 = icmp ne i32 %92, 0
  br i1 %tobool124, label %if.end.131, label %land.lhs.true.125

land.lhs.true.125:                                ; preds = %if.end.123
  %93 = load i8*, i8** %ptr, align 8
  %94 = load i8, i8* %93, align 1
  %conv126 = zext i8 %94 to i32
  %cmp127 = icmp eq i32 %conv126, 13
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %land.lhs.true.125
  %95 = load i8*, i8** %ptr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr130, i8** %ptr, align 8
  br label %while.cond.114

if.end.131:                                       ; preds = %land.lhs.true.125, %if.end.123
  %96 = load i32, i32* %state, align 4
  switch i32 %96, label %sw.epilog.1578 [
    i32 17, label %sw.bb
    i32 0, label %sw.bb.132
    i32 13, label %sw.bb.133
    i32 5, label %sw.bb.138
    i32 6, label %sw.bb.150
    i32 1, label %sw.bb.162
    i32 7, label %sw.bb.210
    i32 8, label %sw.bb.276
    i32 10, label %sw.bb.331
    i32 9, label %sw.bb.346
    i32 2, label %sw.bb.570
    i32 11, label %sw.bb.586
    i32 3, label %sw.bb.926
    i32 4, label %sw.bb.948
    i32 12, label %sw.bb.1089
    i32 14, label %sw.bb.1192
    i32 15, label %sw.bb.1207
    i32 16, label %sw.bb.1264
    i32 18, label %sw.bb.1301
    i32 19, label %sw.bb.1412
    i32 20, label %sw.bb.1449
    i32 21, label %sw.bb.1522
    i32 22, label %sw.bb.1528
    i32 23, label %sw.bb.1542
  ]

sw.bb:                                            ; preds = %if.end.131
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog.1578

sw.bb.132:                                        ; preds = %if.end.131
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  br label %abort

sw.bb.133:                                        ; preds = %if.end.131
  %97 = load i64, i64* %length, align 8
  %dec = add i64 %97, -1
  store i64 %dec, i64* %length, align 8
  %98 = load i8*, i8** %ptr, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr134, i8** %ptr, align 8
  %99 = load i64, i64* %length, align 8
  %tobool135 = icmp ne i64 %99, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %sw.bb.133
  %100 = load i32, i32* %next_state, align 4
  store i32 %100, i32* %state, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %sw.bb.133
  br label %sw.epilog.1578

sw.bb.138:                                        ; preds = %if.end.131
  %101 = load i8*, i8** %ptr, align 8
  %102 = load i8, i8* %101, align 1
  %conv139 = zext i8 %102 to i32
  %idxprom140 = sext i32 %conv139 to i64
  %call141 = call i16** @__ctype_b_loc() #7
  %103 = load i16*, i16** %call141, align 8
  %arrayidx142 = getelementptr inbounds i16, i16* %103, i64 %idxprom140
  %104 = load i16, i16* %arrayidx142, align 2
  %conv143 = zext i16 %104 to i32
  %and144 = and i32 %conv143, 8192
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.else.148

if.then.146:                                      ; preds = %sw.bb.138
  %105 = load i8*, i8** %ptr, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr147, i8** %ptr, align 8
  br label %if.end.149

if.else.148:                                      ; preds = %sw.bb.138
  %106 = load i32, i32* %next_state, align 4
  store i32 %106, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.146
  br label %sw.epilog.1578

sw.bb.150:                                        ; preds = %if.end.131
  %107 = load i8*, i8** %ptr, align 8
  %108 = load i8, i8* %107, align 1
  %conv151 = zext i8 %108 to i32
  %idxprom152 = sext i32 %conv151 to i64
  %call153 = call i16** @__ctype_b_loc() #7
  %109 = load i16*, i16** %call153, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %109, i64 %idxprom152
  %110 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %110 to i32
  %and156 = and i32 %conv155, 8192
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %sw.bb.150
  %111 = load i8*, i8** %ptr, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr159, i8** %ptr, align 8
  br label %if.end.161

if.else.160:                                      ; preds = %sw.bb.150
  %112 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %113 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %112, %struct.file_buff_tag* %113, i8 zeroext 32)
  %114 = load i32, i32* %next_state, align 4
  store i32 %114, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %if.then.158
  br label %sw.epilog.1578

sw.bb.162:                                        ; preds = %if.end.131
  %115 = load i8*, i8** %ptr, align 8
  %116 = load i8, i8* %115, align 1
  %conv163 = zext i8 %116 to i32
  %cmp164 = icmp eq i32 %conv163, 60
  br i1 %cmp164, label %if.then.166, label %if.else.181

if.then.166:                                      ; preds = %sw.bb.162
  %117 = load i8*, i8** %ptr, align 8
  store i8* %117, i8** %ptrend, align 8
  %118 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %119 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %118, %struct.file_buff_tag* %119, i8 zeroext 60)
  %120 = load i32, i32* %in_script, align 4
  %tobool167 = icmp ne i32 %120, 0
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.166
  %121 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %121, %struct.file_buff_tag* null, i8 zeroext 60)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.then.166
  %122 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tobool170 = icmp ne %struct.tag_arguments_tag* %122, null
  br i1 %tobool170, label %land.lhs.true.171, label %if.end.179

land.lhs.true.171:                                ; preds = %if.end.169
  %123 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents172 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %123, i32 0, i32 1
  %124 = load i32, i32* %scanContents172, align 4
  %tobool173 = icmp ne i32 %124, 0
  br i1 %tobool173, label %land.lhs.true.174, label %if.end.179

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %125 = load i32, i32* %in_ahref, align 4
  %tobool175 = icmp ne i32 %125, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.179

land.lhs.true.176:                                ; preds = %land.lhs.true.174
  %126 = load i8*, i8** %href_contents_begin, align 8
  %tobool177 = icmp ne i8* %126, null
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %land.lhs.true.176
  %127 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %128 = load i32, i32* %in_ahref, align 4
  %129 = load i8*, i8** %href_contents_begin, align 8
  %130 = load i8*, i8** %ptr, align 8
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %127, i32 %128, i8* %129, i8* %130)
  store i8* null, i8** %href_contents_begin, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %land.lhs.true.176, %land.lhs.true.174, %land.lhs.true.171, %if.end.169
  %131 = load i8*, i8** %ptr, align 8
  %incdec.ptr180 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr180, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_length, align 4
  store i32 7, i32* %next_state, align 4
  br label %if.end.209

if.else.181:                                      ; preds = %sw.bb.162
  %132 = load i8*, i8** %ptr, align 8
  %133 = load i8, i8* %132, align 1
  %conv182 = zext i8 %133 to i32
  %idxprom183 = sext i32 %conv182 to i64
  %call184 = call i16** @__ctype_b_loc() #7
  %134 = load i16*, i16** %call184, align 8
  %arrayidx185 = getelementptr inbounds i16, i16* %134, i64 %idxprom183
  %135 = load i16, i16* %arrayidx185, align 2
  %conv186 = zext i16 %135 to i32
  %and187 = and i32 %conv186, 8192
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %if.else.181
  store i32 6, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  br label %if.end.208

if.else.190:                                      ; preds = %if.else.181
  %136 = load i8*, i8** %ptr, align 8
  %137 = load i8, i8* %136, align 1
  %conv191 = zext i8 %137 to i32
  %cmp192 = icmp eq i32 %conv191, 38
  br i1 %cmp192, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.else.190
  store i32 3, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  %138 = load i8*, i8** %ptr, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr195, i8** %ptr, align 8
  br label %if.end.207

if.else.196:                                      ; preds = %if.else.190
  %139 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %140 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %141 = load i8*, i8** %ptr, align 8
  %142 = load i8, i8* %141, align 1
  %conv197 = zext i8 %142 to i32
  %call198 = call i32 @tolower(i32 %conv197) #3
  %conv199 = trunc i32 %call198 to i8
  call void @html_output_c(%struct.file_buff_tag* %139, %struct.file_buff_tag* %140, i8 zeroext %conv199)
  %143 = load i32, i32* %in_script, align 4
  %tobool200 = icmp ne i32 %143, 0
  br i1 %tobool200, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.else.196
  %144 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %145 = load i8*, i8** %ptr, align 8
  %146 = load i8, i8* %145, align 1
  %conv202 = zext i8 %146 to i32
  %call203 = call i32 @tolower(i32 %conv202) #3
  %conv204 = trunc i32 %call203 to i8
  call void @html_output_c(%struct.file_buff_tag* %144, %struct.file_buff_tag* null, i8 zeroext %conv204)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.201, %if.else.196
  %147 = load i8*, i8** %ptr, align 8
  %incdec.ptr206 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr206, i8** %ptr, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.205, %if.then.194
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.189
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.179
  br label %sw.epilog.1578

sw.bb.210:                                        ; preds = %if.end.131
  %148 = load i32, i32* %tag_length, align 4
  %cmp211 = icmp eq i32 %148, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.else.231

land.lhs.true.213:                                ; preds = %sw.bb.210
  %149 = load i8*, i8** %ptr, align 8
  %150 = load i8, i8* %149, align 1
  %conv214 = zext i8 %150 to i32
  %cmp215 = icmp eq i32 %conv214, 33
  br i1 %cmp215, label %if.then.217, label %if.else.231

if.then.217:                                      ; preds = %land.lhs.true.213
  %151 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  call void @html_output_c(%struct.file_buff_tag* %151, %struct.file_buff_tag* null, i8 zeroext 33)
  %152 = load i32, i32* %in_script, align 4
  %tobool218 = icmp ne i32 %152, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.217
  %153 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %153, %struct.file_buff_tag* null, i8 zeroext 33)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %if.then.217
  %154 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %tobool221 = icmp ne %struct.file_buff_tag* %154, null
  br i1 %tobool221, label %land.lhs.true.222, label %if.end.229

land.lhs.true.222:                                ; preds = %if.end.220
  %155 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length223 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %155, i32 0, i32 2
  %156 = load i32, i32* %length223, align 4
  %cmp224 = icmp sgt i32 %156, 0
  br i1 %cmp224, label %if.then.226, label %if.end.229

if.then.226:                                      ; preds = %land.lhs.true.222
  %157 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length227 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %157, i32 0, i32 2
  %158 = load i32, i32* %length227, align 4
  %dec228 = add nsw i32 %158, -1
  store i32 %dec228, i32* %length227, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.226, %land.lhs.true.222, %if.end.220
  store i32 2, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  %159 = load i8*, i8** %ptr, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr230, i8** %ptr, align 8
  br label %if.end.275

if.else.231:                                      ; preds = %land.lhs.true.213, %sw.bb.210
  %160 = load i8*, i8** %ptr, align 8
  %161 = load i8, i8* %160, align 1
  %conv232 = zext i8 %161 to i32
  %cmp233 = icmp eq i32 %conv232, 62
  br i1 %cmp233, label %if.then.235, label %if.else.242

if.then.235:                                      ; preds = %if.else.231
  %162 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %163 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %162, %struct.file_buff_tag* %163, i8 zeroext 62)
  %164 = load i32, i32* %in_script, align 4
  %tobool236 = icmp ne i32 %164, 0
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.then.235
  %165 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %165, %struct.file_buff_tag* null, i8 zeroext 62)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %if.then.235
  %166 = load i8*, i8** %ptr, align 8
  %incdec.ptr239 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr239, i8** %ptr, align 8
  %167 = load i32, i32* %tag_length, align 4
  %idxprom240 = sext i32 %167 to i64
  %arrayidx241 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i64 %idxprom240
  store i8 0, i8* %arrayidx241, align 1
  store i32 5, i32* %state, align 4
  store i32 11, i32* %next_state, align 4
  br label %if.end.274

if.else.242:                                      ; preds = %if.else.231
  %168 = load i8*, i8** %ptr, align 8
  %169 = load i8, i8* %168, align 1
  %conv243 = zext i8 %169 to i32
  %idxprom244 = sext i32 %conv243 to i64
  %call245 = call i16** @__ctype_b_loc() #7
  %170 = load i16*, i16** %call245, align 8
  %arrayidx246 = getelementptr inbounds i16, i16* %170, i64 %idxprom244
  %171 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %171 to i32
  %and248 = and i32 %conv247, 8192
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.else.270, label %if.then.250

if.then.250:                                      ; preds = %if.else.242
  %172 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %173 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %174 = load i8*, i8** %ptr, align 8
  %175 = load i8, i8* %174, align 1
  %conv251 = zext i8 %175 to i32
  %call252 = call i32 @tolower(i32 %conv251) #3
  %conv253 = trunc i32 %call252 to i8
  call void @html_output_c(%struct.file_buff_tag* %172, %struct.file_buff_tag* %173, i8 zeroext %conv253)
  %176 = load i32, i32* %in_script, align 4
  %tobool254 = icmp ne i32 %176, 0
  br i1 %tobool254, label %if.then.255, label %if.end.259

if.then.255:                                      ; preds = %if.then.250
  %177 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %178 = load i8*, i8** %ptr, align 8
  %179 = load i8, i8* %178, align 1
  %conv256 = zext i8 %179 to i32
  %call257 = call i32 @tolower(i32 %conv256) #3
  %conv258 = trunc i32 %call257 to i8
  call void @html_output_c(%struct.file_buff_tag* %177, %struct.file_buff_tag* null, i8 zeroext %conv258)
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.255, %if.then.250
  %180 = load i32, i32* %tag_length, align 4
  %cmp260 = icmp slt i32 %180, 1024
  br i1 %cmp260, label %if.then.262, label %if.end.268

if.then.262:                                      ; preds = %if.end.259
  %181 = load i8*, i8** %ptr, align 8
  %182 = load i8, i8* %181, align 1
  %conv263 = zext i8 %182 to i32
  %call264 = call i32 @tolower(i32 %conv263) #3
  %conv265 = trunc i32 %call264 to i8
  %183 = load i32, i32* %tag_length, align 4
  %inc = add nsw i32 %183, 1
  store i32 %inc, i32* %tag_length, align 4
  %idxprom266 = sext i32 %183 to i64
  %arrayidx267 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i64 %idxprom266
  store i8 %conv265, i8* %arrayidx267, align 1
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.262, %if.end.259
  %184 = load i8*, i8** %ptr, align 8
  %incdec.ptr269 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr269, i8** %ptr, align 8
  br label %if.end.273

if.else.270:                                      ; preds = %if.else.242
  %185 = load i32, i32* %tag_length, align 4
  %idxprom271 = sext i32 %185 to i64
  %arrayidx272 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i64 %idxprom271
  store i8 0, i8* %arrayidx272, align 1
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.270, %if.end.268
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.end.238
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.229
  br label %sw.epilog.1578

sw.bb.276:                                        ; preds = %if.end.131
  %186 = load i8*, i8** %ptr, align 8
  %187 = load i8, i8* %186, align 1
  %conv277 = zext i8 %187 to i32
  %cmp278 = icmp eq i32 %conv277, 61
  br i1 %cmp278, label %if.then.280, label %if.else.284

if.then.280:                                      ; preds = %sw.bb.276
  %188 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %189 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %188, %struct.file_buff_tag* %189, i8 zeroext 61)
  %190 = load i32, i32* %tag_arg_length, align 4
  %idxprom281 = sext i32 %190 to i64
  %arrayidx282 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i64 %idxprom281
  store i8 0, i8* %arrayidx282, align 1
  %191 = load i8*, i8** %ptr, align 8
  %incdec.ptr283 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr283, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 2, i32* %quoted, align 4
  store i32 0, i32* %tag_val_length, align 4
  store i32 9, i32* %next_state, align 4
  br label %if.end.330

if.else.284:                                      ; preds = %sw.bb.276
  %192 = load i8*, i8** %ptr, align 8
  %193 = load i8, i8* %192, align 1
  %conv285 = zext i8 %193 to i32
  %idxprom286 = sext i32 %conv285 to i64
  %call287 = call i16** @__ctype_b_loc() #7
  %194 = load i16*, i16** %call287, align 8
  %arrayidx288 = getelementptr inbounds i16, i16* %194, i64 %idxprom286
  %195 = load i16, i16* %arrayidx288, align 2
  %conv289 = zext i16 %195 to i32
  %and290 = and i32 %conv289, 8192
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %if.then.292, label %if.else.296

if.then.292:                                      ; preds = %if.else.284
  %196 = load i8*, i8** %ptr, align 8
  %incdec.ptr293 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr293, i8** %ptr, align 8
  %197 = load i32, i32* %tag_arg_length, align 4
  %idxprom294 = sext i32 %197 to i64
  %arrayidx295 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i64 %idxprom294
  store i8 0, i8* %arrayidx295, align 1
  store i32 5, i32* %state, align 4
  store i32 10, i32* %next_state, align 4
  br label %if.end.329

if.else.296:                                      ; preds = %if.else.284
  %198 = load i8*, i8** %ptr, align 8
  %199 = load i8, i8* %198, align 1
  %conv297 = zext i8 %199 to i32
  %cmp298 = icmp eq i32 %conv297, 62
  br i1 %cmp298, label %if.then.300, label %if.else.309

if.then.300:                                      ; preds = %if.else.296
  %200 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %201 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %200, %struct.file_buff_tag* %201, i8 zeroext 62)
  %202 = load i32, i32* %tag_arg_length, align 4
  %cmp301 = icmp sgt i32 %202, 0
  br i1 %cmp301, label %if.then.303, label %if.end.307

if.then.303:                                      ; preds = %if.then.300
  %203 = load i32, i32* %tag_arg_length, align 4
  %idxprom304 = sext i32 %203 to i64
  %arrayidx305 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i64 %idxprom304
  store i8 0, i8* %arrayidx305, align 1
  %arraydecay306 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i32 0
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %tag_args, i8* %arraydecay306, i8* null)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.303, %if.then.300
  %204 = load i8*, i8** %ptr, align 8
  %incdec.ptr308 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %incdec.ptr308, i8** %ptr, align 8
  store i32 11, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.328

if.else.309:                                      ; preds = %if.else.296
  %205 = load i32, i32* %tag_arg_length, align 4
  %cmp310 = icmp eq i32 %205, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.else.309
  %206 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %207 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %206, %struct.file_buff_tag* %207, i8 zeroext 32)
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.else.309
  %208 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %209 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %210 = load i8*, i8** %ptr, align 8
  %211 = load i8, i8* %210, align 1
  %conv314 = zext i8 %211 to i32
  %call315 = call i32 @tolower(i32 %conv314) #3
  %conv316 = trunc i32 %call315 to i8
  call void @html_output_c(%struct.file_buff_tag* %208, %struct.file_buff_tag* %209, i8 zeroext %conv316)
  %212 = load i32, i32* %tag_arg_length, align 4
  %cmp317 = icmp slt i32 %212, 1024
  br i1 %cmp317, label %if.then.319, label %if.end.326

if.then.319:                                      ; preds = %if.end.313
  %213 = load i8*, i8** %ptr, align 8
  %214 = load i8, i8* %213, align 1
  %conv320 = zext i8 %214 to i32
  %call321 = call i32 @tolower(i32 %conv320) #3
  %conv322 = trunc i32 %call321 to i8
  %215 = load i32, i32* %tag_arg_length, align 4
  %inc323 = add nsw i32 %215, 1
  store i32 %inc323, i32* %tag_arg_length, align 4
  %idxprom324 = sext i32 %215 to i64
  %arrayidx325 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i64 %idxprom324
  store i8 %conv322, i8* %arrayidx325, align 1
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.319, %if.end.313
  %216 = load i8*, i8** %ptr, align 8
  %incdec.ptr327 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr327, i8** %ptr, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.326, %if.end.307
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.292
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.280
  br label %sw.epilog.1578

sw.bb.331:                                        ; preds = %if.end.131
  %217 = load i8*, i8** %ptr, align 8
  %218 = load i8, i8* %217, align 1
  %conv332 = zext i8 %218 to i32
  %cmp333 = icmp eq i32 %conv332, 61
  br i1 %cmp333, label %if.then.335, label %if.else.337

if.then.335:                                      ; preds = %sw.bb.331
  %219 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %220 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %219, %struct.file_buff_tag* %220, i8 zeroext 61)
  %221 = load i8*, i8** %ptr, align 8
  %incdec.ptr336 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr336, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 2, i32* %quoted, align 4
  store i32 0, i32* %tag_val_length, align 4
  store i32 9, i32* %next_state, align 4
  br label %if.end.345

if.else.337:                                      ; preds = %sw.bb.331
  %222 = load i32, i32* %tag_arg_length, align 4
  %cmp338 = icmp sgt i32 %222, 0
  br i1 %cmp338, label %if.then.340, label %if.end.344

if.then.340:                                      ; preds = %if.else.337
  %223 = load i32, i32* %tag_arg_length, align 4
  %idxprom341 = sext i32 %223 to i64
  %arrayidx342 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i64 %idxprom341
  store i8 0, i8* %arrayidx342, align 1
  %arraydecay343 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i32 0
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %tag_args, i8* %arraydecay343, i8* null)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.340, %if.else.337
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.335
  br label %sw.epilog.1578

sw.bb.346:                                        ; preds = %if.end.131
  %224 = load i32, i32* %tag_val_length, align 4
  %cmp347 = icmp eq i32 %224, 5
  br i1 %cmp347, label %land.lhs.true.349, label %if.else.377

land.lhs.true.349:                                ; preds = %sw.bb.346
  %arraydecay350 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  %call351 = call i32 @strncmp(i8* %arraydecay350, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 5) #8
  %cmp352 = icmp eq i32 %call351, 0
  br i1 %cmp352, label %if.then.354, label %if.else.377

if.then.354:                                      ; preds = %land.lhs.true.349
  %225 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %tobool355 = icmp ne %struct.file_buff_tag* %225, null
  br i1 %tobool355, label %land.lhs.true.356, label %if.end.363

land.lhs.true.356:                                ; preds = %if.then.354
  %226 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %length357 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %226, i32 0, i32 2
  %227 = load i32, i32* %length357, align 4
  %cmp358 = icmp sgt i32 %227, 0
  br i1 %cmp358, label %if.then.360, label %if.end.363

if.then.360:                                      ; preds = %land.lhs.true.356
  %228 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %length361 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %228, i32 0, i32 2
  %229 = load i32, i32* %length361, align 4
  %dec362 = add nsw i32 %229, -1
  store i32 %dec362, i32* %length361, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.360, %land.lhs.true.356, %if.then.354
  %230 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %tobool364 = icmp ne %struct.file_buff_tag* %230, null
  br i1 %tobool364, label %land.lhs.true.365, label %if.end.372

land.lhs.true.365:                                ; preds = %if.end.363
  %231 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length366 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %231, i32 0, i32 2
  %232 = load i32, i32* %length366, align 4
  %cmp367 = icmp sgt i32 %232, 0
  br i1 %cmp367, label %if.then.369, label %if.end.372

if.then.369:                                      ; preds = %land.lhs.true.365
  %233 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length370 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %233, i32 0, i32 2
  %234 = load i32, i32* %length370, align 4
  %dec371 = add nsw i32 %234, -1
  store i32 %dec371, i32* %length370, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.369, %land.lhs.true.365, %if.end.363
  %235 = load i32, i32* %quoted, align 4
  %cmp373 = icmp ne i32 %235, 2
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.372
  %236 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %237 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %236, %struct.file_buff_tag* %237, i8 zeroext 34)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.end.372
  store i32 0, i32* %tag_val_length, align 4
  store i32 18, i32* %state, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.563

if.else.377:                                      ; preds = %land.lhs.true.349, %sw.bb.346
  %238 = load i32, i32* %tag_val_length, align 4
  %cmp378 = icmp eq i32 %238, 6
  br i1 %cmp378, label %land.lhs.true.380, label %if.else.408

land.lhs.true.380:                                ; preds = %if.else.377
  %arraydecay381 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  %call382 = call i32 @strncmp(i8* %arraydecay381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64 6) #8
  %cmp383 = icmp eq i32 %call382, 0
  br i1 %cmp383, label %if.then.385, label %if.else.408

if.then.385:                                      ; preds = %land.lhs.true.380
  %239 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %tobool386 = icmp ne %struct.file_buff_tag* %239, null
  br i1 %tobool386, label %land.lhs.true.387, label %if.end.394

land.lhs.true.387:                                ; preds = %if.then.385
  %240 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %length388 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %240, i32 0, i32 2
  %241 = load i32, i32* %length388, align 4
  %cmp389 = icmp sgt i32 %241, 0
  br i1 %cmp389, label %if.then.391, label %if.end.394

if.then.391:                                      ; preds = %land.lhs.true.387
  %242 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %length392 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %242, i32 0, i32 2
  %243 = load i32, i32* %length392, align 4
  %dec393 = add nsw i32 %243, -1
  store i32 %dec393, i32* %length392, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.391, %land.lhs.true.387, %if.then.385
  %244 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %tobool395 = icmp ne %struct.file_buff_tag* %244, null
  br i1 %tobool395, label %land.lhs.true.396, label %if.end.403

land.lhs.true.396:                                ; preds = %if.end.394
  %245 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length397 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %245, i32 0, i32 2
  %246 = load i32, i32* %length397, align 4
  %cmp398 = icmp sgt i32 %246, 0
  br i1 %cmp398, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %land.lhs.true.396
  %247 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %length401 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %247, i32 0, i32 2
  %248 = load i32, i32* %length401, align 4
  %dec402 = add nsw i32 %248, -1
  store i32 %dec402, i32* %length401, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.400, %land.lhs.true.396, %if.end.394
  %249 = load i32, i32* %quoted, align 4
  %cmp404 = icmp ne i32 %249, 2
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %if.end.403
  %250 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %251 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %250, %struct.file_buff_tag* %251, i8 zeroext 34)
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.406, %if.end.403
  store i32 0, i32* %tag_val_length, align 4
  store i32 18, i32* %state, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.562

if.else.408:                                      ; preds = %land.lhs.true.380, %if.else.377
  %252 = load i8*, i8** %ptr, align 8
  %253 = load i8, i8* %252, align 1
  %conv409 = zext i8 %253 to i32
  %cmp410 = icmp eq i32 %conv409, 38
  br i1 %cmp410, label %if.then.412, label %if.else.414

if.then.412:                                      ; preds = %if.else.408
  store i32 3, i32* %state, align 4
  store i32 9, i32* %next_state, align 4
  %254 = load i8*, i8** %ptr, align 8
  %incdec.ptr413 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr413, i8** %ptr, align 8
  br label %if.end.561

if.else.414:                                      ; preds = %if.else.408
  %255 = load i8*, i8** %ptr, align 8
  %256 = load i8, i8* %255, align 1
  %conv415 = zext i8 %256 to i32
  %cmp416 = icmp eq i32 %conv415, 39
  br i1 %cmp416, label %if.then.418, label %if.else.459

if.then.418:                                      ; preds = %if.else.414
  %257 = load i32, i32* %tag_val_length, align 4
  %cmp419 = icmp eq i32 %257, 0
  br i1 %cmp419, label %if.then.421, label %if.else.430

if.then.421:                                      ; preds = %if.then.418
  store i32 0, i32* %quoted, align 4
  %258 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %259 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %258, %struct.file_buff_tag* %259, i8 zeroext 34)
  %260 = load i32, i32* %tag_val_length, align 4
  %cmp422 = icmp slt i32 %260, 1024
  br i1 %cmp422, label %if.then.424, label %if.end.428

if.then.424:                                      ; preds = %if.then.421
  %261 = load i32, i32* %tag_val_length, align 4
  %inc425 = add nsw i32 %261, 1
  store i32 %inc425, i32* %tag_val_length, align 4
  %idxprom426 = sext i32 %261 to i64
  %arrayidx427 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom426
  store i8 34, i8* %arrayidx427, align 1
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.424, %if.then.421
  %262 = load i8*, i8** %ptr, align 8
  %incdec.ptr429 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr429, i8** %ptr, align 8
  br label %if.end.458

if.else.430:                                      ; preds = %if.then.418
  %263 = load i32, i32* %escape, align 4
  %tobool431 = icmp ne i32 %263, 0
  br i1 %tobool431, label %if.else.448, label %land.lhs.true.432

land.lhs.true.432:                                ; preds = %if.else.430
  %264 = load i32, i32* %quoted, align 4
  %cmp433 = icmp eq i32 %264, 0
  br i1 %cmp433, label %if.then.435, label %if.else.448

if.then.435:                                      ; preds = %land.lhs.true.432
  %265 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %266 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %265, %struct.file_buff_tag* %266, i8 zeroext 34)
  %267 = load i32, i32* %tag_val_length, align 4
  %cmp436 = icmp slt i32 %267, 1024
  br i1 %cmp436, label %if.then.438, label %if.end.442

if.then.438:                                      ; preds = %if.then.435
  %268 = load i32, i32* %tag_val_length, align 4
  %inc439 = add nsw i32 %268, 1
  store i32 %inc439, i32* %tag_val_length, align 4
  %idxprom440 = sext i32 %268 to i64
  %arrayidx441 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom440
  store i8 34, i8* %arrayidx441, align 1
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.438, %if.then.435
  %269 = load i32, i32* %tag_val_length, align 4
  %idxprom443 = sext i32 %269 to i64
  %arrayidx444 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom443
  store i8 0, i8* %arrayidx444, align 1
  %arraydecay445 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i32 0
  %arraydecay446 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %tag_args, i8* %arraydecay445, i8* %arraydecay446)
  %270 = load i8*, i8** %ptr, align 8
  %incdec.ptr447 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr447, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.457

if.else.448:                                      ; preds = %land.lhs.true.432, %if.else.430
  %271 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %272 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %271, %struct.file_buff_tag* %272, i8 zeroext 34)
  %273 = load i32, i32* %tag_val_length, align 4
  %cmp449 = icmp slt i32 %273, 1024
  br i1 %cmp449, label %if.then.451, label %if.end.455

if.then.451:                                      ; preds = %if.else.448
  %274 = load i32, i32* %tag_val_length, align 4
  %inc452 = add nsw i32 %274, 1
  store i32 %inc452, i32* %tag_val_length, align 4
  %idxprom453 = sext i32 %274 to i64
  %arrayidx454 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom453
  store i8 34, i8* %arrayidx454, align 1
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.451, %if.else.448
  %275 = load i8*, i8** %ptr, align 8
  %incdec.ptr456 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %incdec.ptr456, i8** %ptr, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.455, %if.end.442
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %if.end.428
  br label %if.end.560

if.else.459:                                      ; preds = %if.else.414
  %276 = load i8*, i8** %ptr, align 8
  %277 = load i8, i8* %276, align 1
  %conv460 = zext i8 %277 to i32
  %cmp461 = icmp eq i32 %conv460, 34
  br i1 %cmp461, label %if.then.463, label %if.else.504

if.then.463:                                      ; preds = %if.else.459
  %278 = load i32, i32* %tag_val_length, align 4
  %cmp464 = icmp eq i32 %278, 0
  br i1 %cmp464, label %if.then.466, label %if.else.475

if.then.466:                                      ; preds = %if.then.463
  store i32 1, i32* %quoted, align 4
  %279 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %280 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %279, %struct.file_buff_tag* %280, i8 zeroext 34)
  %281 = load i32, i32* %tag_val_length, align 4
  %cmp467 = icmp slt i32 %281, 1024
  br i1 %cmp467, label %if.then.469, label %if.end.473

if.then.469:                                      ; preds = %if.then.466
  %282 = load i32, i32* %tag_val_length, align 4
  %inc470 = add nsw i32 %282, 1
  store i32 %inc470, i32* %tag_val_length, align 4
  %idxprom471 = sext i32 %282 to i64
  %arrayidx472 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom471
  store i8 34, i8* %arrayidx472, align 1
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.469, %if.then.466
  %283 = load i8*, i8** %ptr, align 8
  %incdec.ptr474 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %incdec.ptr474, i8** %ptr, align 8
  br label %if.end.503

if.else.475:                                      ; preds = %if.then.463
  %284 = load i32, i32* %escape, align 4
  %tobool476 = icmp ne i32 %284, 0
  br i1 %tobool476, label %if.else.493, label %land.lhs.true.477

land.lhs.true.477:                                ; preds = %if.else.475
  %285 = load i32, i32* %quoted, align 4
  %cmp478 = icmp eq i32 %285, 1
  br i1 %cmp478, label %if.then.480, label %if.else.493

if.then.480:                                      ; preds = %land.lhs.true.477
  %286 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %287 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %286, %struct.file_buff_tag* %287, i8 zeroext 34)
  %288 = load i32, i32* %tag_val_length, align 4
  %cmp481 = icmp slt i32 %288, 1024
  br i1 %cmp481, label %if.then.483, label %if.end.487

if.then.483:                                      ; preds = %if.then.480
  %289 = load i32, i32* %tag_val_length, align 4
  %inc484 = add nsw i32 %289, 1
  store i32 %inc484, i32* %tag_val_length, align 4
  %idxprom485 = sext i32 %289 to i64
  %arrayidx486 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom485
  store i8 34, i8* %arrayidx486, align 1
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.483, %if.then.480
  %290 = load i32, i32* %tag_val_length, align 4
  %idxprom488 = sext i32 %290 to i64
  %arrayidx489 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom488
  store i8 0, i8* %arrayidx489, align 1
  %arraydecay490 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i32 0
  %arraydecay491 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %tag_args, i8* %arraydecay490, i8* %arraydecay491)
  %291 = load i8*, i8** %ptr, align 8
  %incdec.ptr492 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr492, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.502

if.else.493:                                      ; preds = %land.lhs.true.477, %if.else.475
  %292 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %293 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %292, %struct.file_buff_tag* %293, i8 zeroext 34)
  %294 = load i32, i32* %tag_val_length, align 4
  %cmp494 = icmp slt i32 %294, 1024
  br i1 %cmp494, label %if.then.496, label %if.end.500

if.then.496:                                      ; preds = %if.else.493
  %295 = load i32, i32* %tag_val_length, align 4
  %inc497 = add nsw i32 %295, 1
  store i32 %inc497, i32* %tag_val_length, align 4
  %idxprom498 = sext i32 %295 to i64
  %arrayidx499 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom498
  store i8 34, i8* %arrayidx499, align 1
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.496, %if.else.493
  %296 = load i8*, i8** %ptr, align 8
  %incdec.ptr501 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr501, i8** %ptr, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.500, %if.end.487
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.end.473
  br label %if.end.559

if.else.504:                                      ; preds = %if.else.459
  %297 = load i8*, i8** %ptr, align 8
  %298 = load i8, i8* %297, align 1
  %conv505 = zext i8 %298 to i32
  %idxprom506 = sext i32 %conv505 to i64
  %call507 = call i16** @__ctype_b_loc() #7
  %299 = load i16*, i16** %call507, align 8
  %arrayidx508 = getelementptr inbounds i16, i16* %299, i64 %idxprom506
  %300 = load i16, i16* %arrayidx508, align 2
  %conv509 = zext i16 %300 to i32
  %and510 = and i32 %conv509, 8192
  %tobool511 = icmp ne i32 %and510, 0
  br i1 %tobool511, label %if.then.515, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.504
  %301 = load i8*, i8** %ptr, align 8
  %302 = load i8, i8* %301, align 1
  %conv512 = zext i8 %302 to i32
  %cmp513 = icmp eq i32 %conv512, 62
  br i1 %cmp513, label %if.then.515, label %if.else.546

if.then.515:                                      ; preds = %lor.lhs.false, %if.else.504
  %303 = load i32, i32* %quoted, align 4
  %cmp516 = icmp eq i32 %303, 2
  br i1 %cmp516, label %if.then.518, label %if.else.523

if.then.518:                                      ; preds = %if.then.515
  %304 = load i32, i32* %tag_val_length, align 4
  %idxprom519 = sext i32 %304 to i64
  %arrayidx520 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom519
  store i8 0, i8* %arrayidx520, align 1
  %arraydecay521 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_arg, i32 0, i32 0
  %arraydecay522 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %tag_args, i8* %arraydecay521, i8* %arraydecay522)
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.545

if.else.523:                                      ; preds = %if.then.515
  %305 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %306 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %307 = load i8*, i8** %ptr, align 8
  %308 = load i8, i8* %307, align 1
  call void @html_output_c(%struct.file_buff_tag* %305, %struct.file_buff_tag* %306, i8 zeroext %308)
  %309 = load i32, i32* %tag_val_length, align 4
  %cmp524 = icmp slt i32 %309, 1024
  br i1 %cmp524, label %if.then.526, label %if.end.543

if.then.526:                                      ; preds = %if.else.523
  %310 = load i8*, i8** %ptr, align 8
  %311 = load i8, i8* %310, align 1
  %conv527 = zext i8 %311 to i32
  %idxprom528 = sext i32 %conv527 to i64
  %call529 = call i16** @__ctype_b_loc() #7
  %312 = load i16*, i16** %call529, align 8
  %arrayidx530 = getelementptr inbounds i16, i16* %312, i64 %idxprom528
  %313 = load i16, i16* %arrayidx530, align 2
  %conv531 = zext i16 %313 to i32
  %and532 = and i32 %conv531, 8192
  %tobool533 = icmp ne i32 %and532, 0
  br i1 %tobool533, label %if.then.534, label %if.else.538

if.then.534:                                      ; preds = %if.then.526
  %314 = load i32, i32* %tag_val_length, align 4
  %inc535 = add nsw i32 %314, 1
  store i32 %inc535, i32* %tag_val_length, align 4
  %idxprom536 = sext i32 %314 to i64
  %arrayidx537 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom536
  store i8 32, i8* %arrayidx537, align 1
  br label %if.end.542

if.else.538:                                      ; preds = %if.then.526
  %315 = load i32, i32* %tag_val_length, align 4
  %inc539 = add nsw i32 %315, 1
  store i32 %inc539, i32* %tag_val_length, align 4
  %idxprom540 = sext i32 %315 to i64
  %arrayidx541 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom540
  store i8 62, i8* %arrayidx541, align 1
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.538, %if.then.534
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %if.else.523
  store i32 5, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 2, i32* %quoted, align 4
  store i32 9, i32* %next_state, align 4
  %316 = load i8*, i8** %ptr, align 8
  %incdec.ptr544 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr544, i8** %ptr, align 8
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.543, %if.then.518
  br label %if.end.558

if.else.546:                                      ; preds = %lor.lhs.false
  %317 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %318 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %319 = load i8*, i8** %ptr, align 8
  %320 = load i8, i8* %319, align 1
  %conv547 = zext i8 %320 to i32
  %call548 = call i32 @tolower(i32 %conv547) #3
  %conv549 = trunc i32 %call548 to i8
  call void @html_output_c(%struct.file_buff_tag* %317, %struct.file_buff_tag* %318, i8 zeroext %conv549)
  %321 = load i32, i32* %tag_val_length, align 4
  %cmp550 = icmp slt i32 %321, 1024
  br i1 %cmp550, label %if.then.552, label %if.end.556

if.then.552:                                      ; preds = %if.else.546
  %322 = load i8*, i8** %ptr, align 8
  %323 = load i8, i8* %322, align 1
  %324 = load i32, i32* %tag_val_length, align 4
  %inc553 = add nsw i32 %324, 1
  store i32 %inc553, i32* %tag_val_length, align 4
  %idxprom554 = sext i32 %324 to i64
  %arrayidx555 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom554
  store i8 %323, i8* %arrayidx555, align 1
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.552, %if.else.546
  %325 = load i8*, i8** %ptr, align 8
  %incdec.ptr557 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr557, i8** %ptr, align 8
  br label %if.end.558

if.end.558:                                       ; preds = %if.end.556, %if.end.545
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %if.end.503
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %if.end.458
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %if.then.412
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.end.407
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.end.376
  %326 = load i8*, i8** %ptr, align 8
  %327 = load i8, i8* %326, align 1
  %conv564 = zext i8 %327 to i32
  %cmp565 = icmp eq i32 %conv564, 92
  br i1 %cmp565, label %if.then.567, label %if.else.568

if.then.567:                                      ; preds = %if.end.563
  store i32 1, i32* %escape, align 4
  br label %if.end.569

if.else.568:                                      ; preds = %if.end.563
  store i32 0, i32* %escape, align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.568, %if.then.567
  br label %sw.epilog.1578

sw.bb.570:                                        ; preds = %if.end.131
  %328 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %329 = load i8*, i8** %ptr, align 8
  %330 = load i8, i8* %329, align 1
  %conv571 = zext i8 %330 to i32
  %call572 = call i32 @tolower(i32 %conv571) #3
  %conv573 = trunc i32 %call572 to i8
  call void @html_output_c(%struct.file_buff_tag* %328, %struct.file_buff_tag* null, i8 zeroext %conv573)
  %331 = load i32, i32* %in_script, align 4
  %tobool574 = icmp ne i32 %331, 0
  br i1 %tobool574, label %if.then.575, label %if.end.579

if.then.575:                                      ; preds = %sw.bb.570
  %332 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %333 = load i8*, i8** %ptr, align 8
  %334 = load i8, i8* %333, align 1
  %conv576 = zext i8 %334 to i32
  %call577 = call i32 @tolower(i32 %conv576) #3
  %conv578 = trunc i32 %call577 to i8
  call void @html_output_c(%struct.file_buff_tag* %332, %struct.file_buff_tag* null, i8 zeroext %conv578)
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.575, %sw.bb.570
  %335 = load i8*, i8** %ptr, align 8
  %336 = load i8, i8* %335, align 1
  %conv580 = zext i8 %336 to i32
  %cmp581 = icmp eq i32 %conv580, 62
  br i1 %cmp581, label %if.then.583, label %if.end.584

if.then.583:                                      ; preds = %if.end.579
  store i32 5, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  br label %if.end.584

if.end.584:                                       ; preds = %if.then.583, %if.end.579
  %337 = load i8*, i8** %ptr, align 8
  %incdec.ptr585 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr585, i8** %ptr, align 8
  br label %sw.epilog.1578

sw.bb.586:                                        ; preds = %if.end.131
  store i32 5, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  %arrayidx587 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i64 0
  %338 = load i8, i8* %arrayidx587, align 1
  %conv588 = sext i8 %338 to i32
  %cmp589 = icmp eq i32 %conv588, 47
  br i1 %cmp589, label %if.then.591, label %if.else.621

if.then.591:                                      ; preds = %sw.bb.586
  store i32 5, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  %arraydecay592 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call593 = call i32 @strcmp(i8* %arraydecay592, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #8
  %cmp594 = icmp eq i32 %call593, 0
  br i1 %cmp594, label %if.then.596, label %if.end.597

if.then.596:                                      ; preds = %if.then.591
  store i32 0, i32* %in_script, align 4
  %339 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %339, %struct.file_buff_tag* null, i8 zeroext 10)
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.596, %if.then.591
  %340 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tobool598 = icmp ne %struct.tag_arguments_tag* %340, null
  br i1 %tobool598, label %land.lhs.true.599, label %if.end.611

land.lhs.true.599:                                ; preds = %if.end.597
  %341 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents600 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %341, i32 0, i32 1
  %342 = load i32, i32* %scanContents600, align 4
  %tobool601 = icmp ne i32 %342, 0
  br i1 %tobool601, label %land.lhs.true.602, label %if.end.611

land.lhs.true.602:                                ; preds = %land.lhs.true.599
  %343 = load i32, i32* %in_ahref, align 4
  %tobool603 = icmp ne i32 %343, 0
  br i1 %tobool603, label %if.then.604, label %if.end.611

if.then.604:                                      ; preds = %land.lhs.true.602
  %arraydecay605 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call606 = call i32 @strcmp(i8* %arraydecay605, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #8
  %cmp607 = icmp eq i32 %call606, 0
  br i1 %cmp607, label %if.then.609, label %if.end.610

if.then.609:                                      ; preds = %if.then.604
  %344 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %345 = load i32, i32* %in_ahref, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %344, i32 %345)
  store i32 0, i32* %in_ahref, align 4
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.609, %if.then.604
  %346 = load i8*, i8** %ptr, align 8
  store i8* %346, i8** %href_contents_begin, align 8
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %land.lhs.true.602, %land.lhs.true.599, %if.end.597
  %arraydecay612 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call613 = call i32 @strcmp(i8* %arraydecay612, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #8
  %cmp614 = icmp eq i32 %call613, 0
  br i1 %cmp614, label %if.then.616, label %if.end.620

if.then.616:                                      ; preds = %if.end.611
  %347 = load i8*, i8** %in_form_action, align 8
  %tobool617 = icmp ne i8* %347, null
  br i1 %tobool617, label %if.then.618, label %if.end.619

if.then.618:                                      ; preds = %if.then.616
  %348 = load i8*, i8** %in_form_action, align 8
  call void @free(i8* %348) #3
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.618, %if.then.616
  store i8* null, i8** %in_form_action, align 8
  br label %if.end.620

if.end.620:                                       ; preds = %if.end.619, %if.end.611
  br label %if.end.925

if.else.621:                                      ; preds = %sw.bb.586
  %arraydecay622 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call623 = call i32 @strcmp(i8* %arraydecay622, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #8
  %cmp624 = icmp eq i32 %call623, 0
  br i1 %cmp624, label %if.then.626, label %if.else.645

if.then.626:                                      ; preds = %if.else.621
  %call627 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call627, i8** %arg_value, align 8
  %349 = load i8*, i8** %arg_value, align 8
  %tobool628 = icmp ne i8* %349, null
  br i1 %tobool628, label %land.lhs.true.629, label %if.else.634

land.lhs.true.629:                                ; preds = %if.then.626
  %350 = load i8*, i8** %arg_value, align 8
  %call630 = call i32 @strcasecmp(i8* %350, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #8
  %cmp631 = icmp eq i32 %call630, 0
  br i1 %cmp631, label %if.then.633, label %if.else.634

if.then.633:                                      ; preds = %land.lhs.true.629
  call void @html_tag_arg_set(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0))
  store i32 5, i32* %state, align 4
  store i32 14, i32* %next_state, align 4
  br label %if.end.643

if.else.634:                                      ; preds = %land.lhs.true.629, %if.then.626
  %351 = load i8*, i8** %arg_value, align 8
  %tobool635 = icmp ne i8* %351, null
  br i1 %tobool635, label %land.lhs.true.636, label %if.else.641

land.lhs.true.636:                                ; preds = %if.else.634
  %352 = load i8*, i8** %arg_value, align 8
  %call637 = call i32 @strcasecmp(i8* %352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp638 = icmp eq i32 %call637, 0
  br i1 %cmp638, label %if.then.640, label %if.else.641

if.then.640:                                      ; preds = %land.lhs.true.636
  call void @html_tag_arg_set(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0))
  store i32 5, i32* %state, align 4
  store i32 14, i32* %next_state, align 4
  br label %if.end.642

if.else.641:                                      ; preds = %land.lhs.true.636, %if.else.634
  store i32 1, i32* %in_script, align 4
  br label %if.end.642

if.end.642:                                       ; preds = %if.else.641, %if.then.640
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.642, %if.then.633
  %353 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %arraydecay644 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  call void @html_output_tag(%struct.file_buff_tag* %353, i8* %arraydecay644, %struct.tag_arguments_tag* %tag_args)
  br label %if.end.924

if.else.645:                                      ; preds = %if.else.621
  %354 = load i32, i32* %dconf_entconv, align 4
  %tobool646 = icmp ne i32 %354, 0
  br i1 %tobool646, label %land.lhs.true.647, label %if.else.703

land.lhs.true.647:                                ; preds = %if.else.645
  %arraydecay648 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call649 = call i32 @strcmp(i8* %arraydecay648, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp650 = icmp eq i32 %call649, 0
  br i1 %cmp650, label %if.then.652, label %if.else.703

if.then.652:                                      ; preds = %land.lhs.true.647
  %call653 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call653, i8** %http_equiv, align 8
  %call654 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  store i8* %call654, i8** %http_content, align 8
  %355 = load i8*, i8** %http_equiv, align 8
  %tobool655 = icmp ne i8* %355, null
  br i1 %tobool655, label %land.lhs.true.656, label %if.end.702

land.lhs.true.656:                                ; preds = %if.then.652
  %356 = load i8*, i8** %http_content, align 8
  %tobool657 = icmp ne i8* %356, null
  br i1 %tobool657, label %land.lhs.true.658, label %if.end.702

land.lhs.true.658:                                ; preds = %land.lhs.true.656
  %357 = load i8*, i8** %http_equiv, align 8
  %call659 = call i32 @strcasecmp(i8* %357, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp660 = icmp eq i32 %call659, 0
  br i1 %cmp660, label %if.then.662, label %if.end.702

if.then.662:                                      ; preds = %land.lhs.true.658
  %358 = load i8*, i8** %http_content, align 8
  %call663 = call i64 @strlen(i8* %358) #8
  store i64 %call663, i64* %len, align 8
  %359 = load i64, i64* %len, align 8
  %add = add i64 %359, 1
  %call664 = call i8* @cli_malloc(i64 %add)
  store i8* %call664, i8** %http_content2, align 8
  %360 = load i8*, i8** %http_content2, align 8
  %tobool665 = icmp ne i8* %360, null
  br i1 %tobool665, label %if.end.667, label %if.then.666

if.then.666:                                      ; preds = %if.then.662
  store i32 -114, i32* %retval
  br label %return

if.end.667:                                       ; preds = %if.then.662
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.667
  %361 = load i64, i64* %i, align 8
  %362 = load i64, i64* %len, align 8
  %cmp668 = icmp ult i64 %361, %362
  br i1 %cmp668, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %363 = load i64, i64* %i, align 8
  %364 = load i8*, i8** %http_content, align 8
  %arrayidx670 = getelementptr inbounds i8, i8* %364, i64 %363
  %365 = load i8, i8* %arrayidx670, align 1
  %conv671 = zext i8 %365 to i32
  %call672 = call i32 @tolower(i32 %conv671) #3
  %conv673 = trunc i32 %call672 to i8
  %366 = load i64, i64* %i, align 8
  %367 = load i8*, i8** %http_content2, align 8
  %arrayidx674 = getelementptr inbounds i8, i8* %367, i64 %366
  store i8 %conv673, i8* %arrayidx674, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %368 = load i64, i64* %i, align 8
  %inc675 = add i64 %368, 1
  store i64 %inc675, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %369 = load i64, i64* %len, align 8
  %370 = load i8*, i8** %http_content2, align 8
  %arrayidx676 = getelementptr inbounds i8, i8* %370, i64 %369
  store i8 0, i8* %arrayidx676, align 1
  %371 = load i8*, i8** %http_content2, align 8
  %call677 = call i8* @strstr(i8* %371, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #8
  store i8* %call677, i8** %charset, align 8
  %372 = load i8*, i8** %charset, align 8
  %tobool678 = icmp ne i8* %372, null
  br i1 %tobool678, label %if.then.679, label %if.end.701

if.then.679:                                      ; preds = %for.end
  br label %while.cond.680

while.cond.680:                                   ; preds = %while.body.689, %if.then.679
  %373 = load i8*, i8** %charset, align 8
  %374 = load i8, i8* %373, align 1
  %conv681 = zext i8 %374 to i32
  %tobool682 = icmp ne i32 %conv681, 0
  br i1 %tobool682, label %land.rhs.683, label %land.end.687

land.rhs.683:                                     ; preds = %while.cond.680
  %375 = load i8*, i8** %charset, align 8
  %376 = load i8, i8* %375, align 1
  %conv684 = zext i8 %376 to i32
  %cmp685 = icmp ne i32 %conv684, 61
  br label %land.end.687

land.end.687:                                     ; preds = %land.rhs.683, %while.cond.680
  %377 = phi i1 [ false, %while.cond.680 ], [ %cmp685, %land.rhs.683 ]
  br i1 %377, label %while.body.689, label %while.end.691

while.body.689:                                   ; preds = %land.end.687
  %378 = load i8*, i8** %charset, align 8
  %incdec.ptr690 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr690, i8** %charset, align 8
  br label %while.cond.680

while.end.691:                                    ; preds = %land.end.687
  %379 = load i8*, i8** %charset, align 8
  %380 = load i8, i8* %379, align 1
  %tobool692 = icmp ne i8 %380, 0
  br i1 %tobool692, label %if.then.693, label %if.end.695

if.then.693:                                      ; preds = %while.end.691
  %381 = load i8*, i8** %charset, align 8
  %incdec.ptr694 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %incdec.ptr694, i8** %charset, align 8
  br label %if.end.695

if.end.695:                                       ; preds = %if.then.693, %while.end.691
  %382 = load i8*, i8** %charset, align 8
  %call696 = call i64 @strcspn(i8* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)) #8
  store i64 %call696, i64* %len, align 8
  %383 = load i64, i64* %len, align 8
  %384 = load i8*, i8** %charset, align 8
  %arrayidx697 = getelementptr inbounds i8, i8* %384, i64 %383
  store i8 0, i8* %arrayidx697, align 1
  %385 = load i64, i64* %len, align 8
  %tobool698 = icmp ne i64 %385, 0
  br i1 %tobool698, label %if.then.699, label %if.end.700

if.then.699:                                      ; preds = %if.end.695
  %386 = load i8*, i8** %charset, align 8
  call void @process_encoding_set(%struct.entity_conv* %conv, i8* %386, i32 5)
  br label %if.end.700

if.end.700:                                       ; preds = %if.then.699, %if.end.695
  br label %if.end.701

if.end.701:                                       ; preds = %if.end.700, %for.end
  %387 = load i8*, i8** %http_content2, align 8
  call void @free(i8* %387) #3
  br label %if.end.702

if.end.702:                                       ; preds = %if.end.701, %land.lhs.true.658, %land.lhs.true.656, %if.then.652
  br label %if.end.923

if.else.703:                                      ; preds = %land.lhs.true.647, %if.else.645
  %388 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tobool704 = icmp ne %struct.tag_arguments_tag* %388, null
  br i1 %tobool704, label %if.then.705, label %if.end.922

if.then.705:                                      ; preds = %if.else.703
  %389 = load i32, i32* %in_ahref, align 4
  %tobool706 = icmp ne i32 %389, 0
  br i1 %tobool706, label %land.lhs.true.707, label %if.end.710

land.lhs.true.707:                                ; preds = %if.then.705
  %390 = load i8*, i8** %href_contents_begin, align 8
  %tobool708 = icmp ne i8* %390, null
  br i1 %tobool708, label %if.end.710, label %if.then.709

if.then.709:                                      ; preds = %land.lhs.true.707
  %391 = load i8*, i8** %ptr, align 8
  store i8* %391, i8** %href_contents_begin, align 8
  br label %if.end.710

if.end.710:                                       ; preds = %if.then.709, %land.lhs.true.707, %if.then.705
  %arraydecay711 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call712 = call i32 @strcmp(i8* %arraydecay711, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #8
  %cmp713 = icmp eq i32 %call712, 0
  br i1 %cmp713, label %if.then.715, label %if.else.770

if.then.715:                                      ; preds = %if.end.710
  %call716 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call716, i8** %arg_value, align 8
  %392 = load i8*, i8** %arg_value, align 8
  %tobool717 = icmp ne i8* %392, null
  br i1 %tobool717, label %land.lhs.true.718, label %if.end.769

land.lhs.true.718:                                ; preds = %if.then.715
  %393 = load i8*, i8** %arg_value, align 8
  %call719 = call i64 @strlen(i8* %393) #8
  %cmp720 = icmp ugt i64 %call719, 0
  br i1 %cmp720, label %if.then.722, label %if.end.769

if.then.722:                                      ; preds = %land.lhs.true.718
  %394 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents723 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %394, i32 0, i32 1
  %395 = load i32, i32* %scanContents723, align 4
  %tobool724 = icmp ne i32 %395, 0
  br i1 %tobool724, label %if.then.725, label %if.end.757

if.then.725:                                      ; preds = %if.then.722
  %call726 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call726, i8** %arg_value_title, align 8
  %396 = load i32, i32* %in_ahref, align 4
  %tobool727 = icmp ne i32 %396, 0
  br i1 %tobool727, label %if.then.728, label %if.end.732

if.then.728:                                      ; preds = %if.then.725
  %397 = load i8*, i8** %href_contents_begin, align 8
  %tobool729 = icmp ne i8* %397, null
  br i1 %tobool729, label %if.then.730, label %if.end.731

if.then.730:                                      ; preds = %if.then.728
  %398 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %399 = load i32, i32* %in_ahref, align 4
  %400 = load i8*, i8** %href_contents_begin, align 8
  %401 = load i8*, i8** %ptrend, align 8
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %398, i32 %399, i8* %400, i8* %401)
  %402 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %403 = load i32, i32* %in_ahref, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %402, i32 %403)
  store i32 0, i32* %in_ahref, align 4
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.730, %if.then.728
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.then.725
  %404 = load i8*, i8** %arg_value_title, align 8
  %tobool733 = icmp ne i8* %404, null
  br i1 %tobool733, label %if.then.734, label %if.end.743

if.then.734:                                      ; preds = %if.end.732
  %405 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %406 = load i8*, i8** %arg_value_title, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %405, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* %406)
  %call735 = call %struct.blob* @blobCreate()
  %407 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count736 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %407, i32 0, i32 0
  %408 = load i32, i32* %count736, align 4
  %sub = sub nsw i32 %408, 1
  %idxprom737 = sext i32 %sub to i64
  %409 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents738 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %409, i32 0, i32 4
  %410 = load %struct.blob**, %struct.blob*** %contents738, align 8
  %arrayidx739 = getelementptr inbounds %struct.blob*, %struct.blob** %410, i64 %idxprom737
  store %struct.blob* %call735, %struct.blob** %arrayidx739, align 8
  %411 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %412 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count740 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %412, i32 0, i32 0
  %413 = load i32, i32* %count740, align 4
  %414 = load i8*, i8** %arg_value, align 8
  %415 = load i8*, i8** %arg_value, align 8
  %416 = load i8*, i8** %arg_value, align 8
  %call741 = call i64 @strlen(i8* %416) #8
  %add.ptr = getelementptr inbounds i8, i8* %415, i64 %call741
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %411, i32 %413, i8* %414, i8* %add.ptr)
  %417 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %418 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count742 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %418, i32 0, i32 0
  %419 = load i32, i32* %count742, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %417, i32 %419)
  br label %if.end.743

if.end.743:                                       ; preds = %if.then.734, %if.end.732
  %420 = load i8*, i8** %in_form_action, align 8
  %tobool744 = icmp ne i8* %420, null
  br i1 %tobool744, label %if.then.745, label %if.end.756

if.then.745:                                      ; preds = %if.end.743
  %421 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %422 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %421, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %422)
  %call746 = call %struct.blob* @blobCreate()
  %423 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count747 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %423, i32 0, i32 0
  %424 = load i32, i32* %count747, align 4
  %sub748 = sub nsw i32 %424, 1
  %idxprom749 = sext i32 %sub748 to i64
  %425 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents750 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %425, i32 0, i32 4
  %426 = load %struct.blob**, %struct.blob*** %contents750, align 8
  %arrayidx751 = getelementptr inbounds %struct.blob*, %struct.blob** %426, i64 %idxprom749
  store %struct.blob* %call746, %struct.blob** %arrayidx751, align 8
  %427 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %428 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count752 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %428, i32 0, i32 0
  %429 = load i32, i32* %count752, align 4
  %430 = load i8*, i8** %in_form_action, align 8
  %431 = load i8*, i8** %in_form_action, align 8
  %432 = load i8*, i8** %in_form_action, align 8
  %call753 = call i64 @strlen(i8* %432) #8
  %add.ptr754 = getelementptr inbounds i8, i8* %431, i64 %call753
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %427, i32 %429, i8* %430, i8* %add.ptr754)
  %433 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %434 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count755 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %434, i32 0, i32 0
  %435 = load i32, i32* %count755, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %433, i32 %435)
  br label %if.end.756

if.end.756:                                       ; preds = %if.then.745, %if.end.743
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756, %if.then.722
  %436 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %437 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %436, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* %437)
  %438 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents758 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %438, i32 0, i32 1
  %439 = load i32, i32* %scanContents758, align 4
  %tobool759 = icmp ne i32 %439, 0
  br i1 %tobool759, label %if.then.760, label %if.end.768

if.then.760:                                      ; preds = %if.end.757
  %440 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count761 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %440, i32 0, i32 0
  %441 = load i32, i32* %count761, align 4
  store i32 %441, i32* %in_ahref, align 4
  %442 = load i8*, i8** %ptr, align 8
  store i8* %442, i8** %href_contents_begin, align 8
  %call762 = call %struct.blob* @blobCreate()
  %443 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count763 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %443, i32 0, i32 0
  %444 = load i32, i32* %count763, align 4
  %sub764 = sub nsw i32 %444, 1
  %idxprom765 = sext i32 %sub764 to i64
  %445 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents766 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %445, i32 0, i32 4
  %446 = load %struct.blob**, %struct.blob*** %contents766, align 8
  %arrayidx767 = getelementptr inbounds %struct.blob*, %struct.blob** %446, i64 %idxprom765
  store %struct.blob* %call762, %struct.blob** %arrayidx767, align 8
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.760, %if.end.757
  br label %if.end.769

if.end.769:                                       ; preds = %if.end.768, %land.lhs.true.718, %if.then.715
  br label %if.end.921

if.else.770:                                      ; preds = %if.end.710
  %arraydecay771 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call772 = call i32 @strcmp(i8* %arraydecay771, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #8
  %cmp773 = icmp eq i32 %call772, 0
  br i1 %cmp773, label %land.lhs.true.775, label %if.else.787

land.lhs.true.775:                                ; preds = %if.else.770
  %447 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents776 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %447, i32 0, i32 1
  %448 = load i32, i32* %scanContents776, align 4
  %tobool777 = icmp ne i32 %448, 0
  br i1 %tobool777, label %if.then.778, label %if.else.787

if.then.778:                                      ; preds = %land.lhs.true.775
  %call779 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0))
  store i8* %call779, i8** %arg_action_value, align 8
  %449 = load i8*, i8** %arg_action_value, align 8
  %tobool780 = icmp ne i8* %449, null
  br i1 %tobool780, label %if.then.781, label %if.end.786

if.then.781:                                      ; preds = %if.then.778
  %450 = load i8*, i8** %in_form_action, align 8
  %tobool782 = icmp ne i8* %450, null
  br i1 %tobool782, label %if.then.783, label %if.end.784

if.then.783:                                      ; preds = %if.then.781
  %451 = load i8*, i8** %in_form_action, align 8
  call void @free(i8* %451) #3
  br label %if.end.784

if.end.784:                                       ; preds = %if.then.783, %if.then.781
  %452 = load i8*, i8** %arg_action_value, align 8
  %call785 = call i8* @cli_strdup(i8* %452)
  store i8* %call785, i8** %in_form_action, align 8
  br label %if.end.786

if.end.786:                                       ; preds = %if.end.784, %if.then.778
  br label %if.end.920

if.else.787:                                      ; preds = %land.lhs.true.775, %if.else.770
  %arraydecay788 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call789 = call i32 @strcmp(i8* %arraydecay788, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp790 = icmp eq i32 %call789, 0
  br i1 %cmp790, label %if.then.792, label %if.else.849

if.then.792:                                      ; preds = %if.else.787
  %call793 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call793, i8** %arg_value, align 8
  %453 = load i8*, i8** %arg_value, align 8
  %tobool794 = icmp ne i8* %453, null
  br i1 %tobool794, label %land.lhs.true.795, label %if.end.820

land.lhs.true.795:                                ; preds = %if.then.792
  %454 = load i8*, i8** %arg_value, align 8
  %call796 = call i64 @strlen(i8* %454) #8
  %cmp797 = icmp ugt i64 %call796, 0
  br i1 %cmp797, label %if.then.799, label %if.end.820

if.then.799:                                      ; preds = %land.lhs.true.795
  %455 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %456 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %455, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %456)
  %457 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents800 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %457, i32 0, i32 1
  %458 = load i32, i32* %scanContents800, align 4
  %tobool801 = icmp ne i32 %458, 0
  br i1 %tobool801, label %land.lhs.true.802, label %if.end.806

land.lhs.true.802:                                ; preds = %if.then.799
  %459 = load i32, i32* %in_ahref, align 4
  %tobool803 = icmp ne i32 %459, 0
  br i1 %tobool803, label %if.then.804, label %if.end.806

if.then.804:                                      ; preds = %land.lhs.true.802
  %460 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %461 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count805 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %461, i32 0, i32 0
  %462 = load i32, i32* %count805, align 4
  %463 = load i32, i32* %in_ahref, align 4
  call void @html_tag_set_inahref(%struct.tag_arguments_tag* %460, i32 %462, i32 %463)
  br label %if.end.806

if.end.806:                                       ; preds = %if.then.804, %land.lhs.true.802, %if.then.799
  %464 = load i8*, i8** %in_form_action, align 8
  %tobool807 = icmp ne i8* %464, null
  br i1 %tobool807, label %if.then.808, label %if.end.819

if.then.808:                                      ; preds = %if.end.806
  %465 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %466 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %465, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %466)
  %call809 = call %struct.blob* @blobCreate()
  %467 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count810 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %467, i32 0, i32 0
  %468 = load i32, i32* %count810, align 4
  %sub811 = sub nsw i32 %468, 1
  %idxprom812 = sext i32 %sub811 to i64
  %469 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents813 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %469, i32 0, i32 4
  %470 = load %struct.blob**, %struct.blob*** %contents813, align 8
  %arrayidx814 = getelementptr inbounds %struct.blob*, %struct.blob** %470, i64 %idxprom812
  store %struct.blob* %call809, %struct.blob** %arrayidx814, align 8
  %471 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %472 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count815 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %472, i32 0, i32 0
  %473 = load i32, i32* %count815, align 4
  %474 = load i8*, i8** %in_form_action, align 8
  %475 = load i8*, i8** %in_form_action, align 8
  %476 = load i8*, i8** %in_form_action, align 8
  %call816 = call i64 @strlen(i8* %476) #8
  %add.ptr817 = getelementptr inbounds i8, i8* %475, i64 %call816
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %471, i32 %473, i8* %474, i8* %add.ptr817)
  %477 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %478 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count818 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %478, i32 0, i32 0
  %479 = load i32, i32* %count818, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %477, i32 %479)
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.808, %if.end.806
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %land.lhs.true.795, %if.then.792
  %call821 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  store i8* %call821, i8** %arg_value, align 8
  %480 = load i8*, i8** %arg_value, align 8
  %tobool822 = icmp ne i8* %480, null
  br i1 %tobool822, label %land.lhs.true.823, label %if.end.848

land.lhs.true.823:                                ; preds = %if.end.820
  %481 = load i8*, i8** %arg_value, align 8
  %call824 = call i64 @strlen(i8* %481) #8
  %cmp825 = icmp ugt i64 %call824, 0
  br i1 %cmp825, label %if.then.827, label %if.end.848

if.then.827:                                      ; preds = %land.lhs.true.823
  %482 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %483 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* %483)
  %484 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents828 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %484, i32 0, i32 1
  %485 = load i32, i32* %scanContents828, align 4
  %tobool829 = icmp ne i32 %485, 0
  br i1 %tobool829, label %land.lhs.true.830, label %if.end.834

land.lhs.true.830:                                ; preds = %if.then.827
  %486 = load i32, i32* %in_ahref, align 4
  %tobool831 = icmp ne i32 %486, 0
  br i1 %tobool831, label %if.then.832, label %if.end.834

if.then.832:                                      ; preds = %land.lhs.true.830
  %487 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %488 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count833 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %488, i32 0, i32 0
  %489 = load i32, i32* %count833, align 4
  %490 = load i32, i32* %in_ahref, align 4
  call void @html_tag_set_inahref(%struct.tag_arguments_tag* %487, i32 %489, i32 %490)
  br label %if.end.834

if.end.834:                                       ; preds = %if.then.832, %land.lhs.true.830, %if.then.827
  %491 = load i8*, i8** %in_form_action, align 8
  %tobool835 = icmp ne i8* %491, null
  br i1 %tobool835, label %if.then.836, label %if.end.847

if.then.836:                                      ; preds = %if.end.834
  %492 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %493 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %493)
  %call837 = call %struct.blob* @blobCreate()
  %494 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count838 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %494, i32 0, i32 0
  %495 = load i32, i32* %count838, align 4
  %sub839 = sub nsw i32 %495, 1
  %idxprom840 = sext i32 %sub839 to i64
  %496 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents841 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %496, i32 0, i32 4
  %497 = load %struct.blob**, %struct.blob*** %contents841, align 8
  %arrayidx842 = getelementptr inbounds %struct.blob*, %struct.blob** %497, i64 %idxprom840
  store %struct.blob* %call837, %struct.blob** %arrayidx842, align 8
  %498 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %499 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count843 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %499, i32 0, i32 0
  %500 = load i32, i32* %count843, align 4
  %501 = load i8*, i8** %in_form_action, align 8
  %502 = load i8*, i8** %in_form_action, align 8
  %503 = load i8*, i8** %in_form_action, align 8
  %call844 = call i64 @strlen(i8* %503) #8
  %add.ptr845 = getelementptr inbounds i8, i8* %502, i64 %call844
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %498, i32 %500, i8* %501, i8* %add.ptr845)
  %504 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %505 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count846 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %505, i32 0, i32 0
  %506 = load i32, i32* %count846, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %504, i32 %506)
  br label %if.end.847

if.end.847:                                       ; preds = %if.then.836, %if.end.834
  br label %if.end.848

if.end.848:                                       ; preds = %if.end.847, %land.lhs.true.823, %if.end.820
  br label %if.end.919

if.else.849:                                      ; preds = %if.else.787
  %arraydecay850 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call851 = call i32 @strcmp(i8* %arraydecay850, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #8
  %cmp852 = icmp eq i32 %call851, 0
  br i1 %cmp852, label %if.then.854, label %if.else.883

if.then.854:                                      ; preds = %if.else.849
  %call855 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call855, i8** %arg_value, align 8
  %507 = load i8*, i8** %arg_value, align 8
  %tobool856 = icmp ne i8* %507, null
  br i1 %tobool856, label %land.lhs.true.857, label %if.end.882

land.lhs.true.857:                                ; preds = %if.then.854
  %508 = load i8*, i8** %arg_value, align 8
  %call858 = call i64 @strlen(i8* %508) #8
  %cmp859 = icmp ugt i64 %call858, 0
  br i1 %cmp859, label %if.then.861, label %if.end.882

if.then.861:                                      ; preds = %land.lhs.true.857
  %509 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %510 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %510)
  %511 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents862 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %511, i32 0, i32 1
  %512 = load i32, i32* %scanContents862, align 4
  %tobool863 = icmp ne i32 %512, 0
  br i1 %tobool863, label %land.lhs.true.864, label %if.end.868

land.lhs.true.864:                                ; preds = %if.then.861
  %513 = load i32, i32* %in_ahref, align 4
  %tobool865 = icmp ne i32 %513, 0
  br i1 %tobool865, label %if.then.866, label %if.end.868

if.then.866:                                      ; preds = %land.lhs.true.864
  %514 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %515 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count867 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %515, i32 0, i32 0
  %516 = load i32, i32* %count867, align 4
  %517 = load i32, i32* %in_ahref, align 4
  call void @html_tag_set_inahref(%struct.tag_arguments_tag* %514, i32 %516, i32 %517)
  br label %if.end.868

if.end.868:                                       ; preds = %if.then.866, %land.lhs.true.864, %if.then.861
  %518 = load i8*, i8** %in_form_action, align 8
  %tobool869 = icmp ne i8* %518, null
  br i1 %tobool869, label %if.then.870, label %if.end.881

if.then.870:                                      ; preds = %if.end.868
  %519 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %520 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %519, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %520)
  %call871 = call %struct.blob* @blobCreate()
  %521 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count872 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %521, i32 0, i32 0
  %522 = load i32, i32* %count872, align 4
  %sub873 = sub nsw i32 %522, 1
  %idxprom874 = sext i32 %sub873 to i64
  %523 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents875 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %523, i32 0, i32 4
  %524 = load %struct.blob**, %struct.blob*** %contents875, align 8
  %arrayidx876 = getelementptr inbounds %struct.blob*, %struct.blob** %524, i64 %idxprom874
  store %struct.blob* %call871, %struct.blob** %arrayidx876, align 8
  %525 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %526 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count877 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %526, i32 0, i32 0
  %527 = load i32, i32* %count877, align 4
  %528 = load i8*, i8** %in_form_action, align 8
  %529 = load i8*, i8** %in_form_action, align 8
  %530 = load i8*, i8** %in_form_action, align 8
  %call878 = call i64 @strlen(i8* %530) #8
  %add.ptr879 = getelementptr inbounds i8, i8* %529, i64 %call878
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %525, i32 %527, i8* %528, i8* %add.ptr879)
  %531 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %532 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count880 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %532, i32 0, i32 0
  %533 = load i32, i32* %count880, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %531, i32 %533)
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.870, %if.end.868
  br label %if.end.882

if.end.882:                                       ; preds = %if.end.881, %land.lhs.true.857, %if.then.854
  br label %if.end.918

if.else.883:                                      ; preds = %if.else.849
  %arraydecay884 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag, i32 0, i32 0
  %call885 = call i32 @strcmp(i8* %arraydecay884, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #8
  %cmp886 = icmp eq i32 %call885, 0
  br i1 %cmp886, label %if.then.888, label %if.end.917

if.then.888:                                      ; preds = %if.else.883
  %call889 = call i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tag_args, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call889, i8** %arg_value, align 8
  %534 = load i8*, i8** %arg_value, align 8
  %tobool890 = icmp ne i8* %534, null
  br i1 %tobool890, label %land.lhs.true.891, label %if.end.916

land.lhs.true.891:                                ; preds = %if.then.888
  %535 = load i8*, i8** %arg_value, align 8
  %call892 = call i64 @strlen(i8* %535) #8
  %cmp893 = icmp ugt i64 %call892, 0
  br i1 %cmp893, label %if.then.895, label %if.end.916

if.then.895:                                      ; preds = %land.lhs.true.891
  %536 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %537 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* %537)
  %538 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents896 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %538, i32 0, i32 1
  %539 = load i32, i32* %scanContents896, align 4
  %tobool897 = icmp ne i32 %539, 0
  br i1 %tobool897, label %land.lhs.true.898, label %if.end.902

land.lhs.true.898:                                ; preds = %if.then.895
  %540 = load i32, i32* %in_ahref, align 4
  %tobool899 = icmp ne i32 %540, 0
  br i1 %tobool899, label %if.then.900, label %if.end.902

if.then.900:                                      ; preds = %land.lhs.true.898
  %541 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %542 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count901 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %542, i32 0, i32 0
  %543 = load i32, i32* %count901, align 4
  %544 = load i32, i32* %in_ahref, align 4
  call void @html_tag_set_inahref(%struct.tag_arguments_tag* %541, i32 %543, i32 %544)
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.900, %land.lhs.true.898, %if.then.895
  %545 = load i8*, i8** %in_form_action, align 8
  %tobool903 = icmp ne i8* %545, null
  br i1 %tobool903, label %if.then.904, label %if.end.915

if.then.904:                                      ; preds = %if.end.902
  %546 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %547 = load i8*, i8** %arg_value, align 8
  call void @html_tag_arg_add(%struct.tag_arguments_tag* %546, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %547)
  %call905 = call %struct.blob* @blobCreate()
  %548 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count906 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %548, i32 0, i32 0
  %549 = load i32, i32* %count906, align 4
  %sub907 = sub nsw i32 %549, 1
  %idxprom908 = sext i32 %sub907 to i64
  %550 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents909 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %550, i32 0, i32 4
  %551 = load %struct.blob**, %struct.blob*** %contents909, align 8
  %arrayidx910 = getelementptr inbounds %struct.blob*, %struct.blob** %551, i64 %idxprom908
  store %struct.blob* %call905, %struct.blob** %arrayidx910, align 8
  %552 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %553 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count911 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %553, i32 0, i32 0
  %554 = load i32, i32* %count911, align 4
  %555 = load i8*, i8** %in_form_action, align 8
  %556 = load i8*, i8** %in_form_action, align 8
  %557 = load i8*, i8** %in_form_action, align 8
  %call912 = call i64 @strlen(i8* %557) #8
  %add.ptr913 = getelementptr inbounds i8, i8* %556, i64 %call912
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %552, i32 %554, i8* %555, i8* %add.ptr913)
  %558 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %559 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count914 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %559, i32 0, i32 0
  %560 = load i32, i32* %count914, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %558, i32 %560)
  br label %if.end.915

if.end.915:                                       ; preds = %if.then.904, %if.end.902
  br label %if.end.916

if.end.916:                                       ; preds = %if.end.915, %land.lhs.true.891, %if.then.888
  br label %if.end.917

if.end.917:                                       ; preds = %if.end.916, %if.else.883
  br label %if.end.918

if.end.918:                                       ; preds = %if.end.917, %if.end.882
  br label %if.end.919

if.end.919:                                       ; preds = %if.end.918, %if.end.848
  br label %if.end.920

if.end.920:                                       ; preds = %if.end.919, %if.end.786
  br label %if.end.921

if.end.921:                                       ; preds = %if.end.920, %if.end.769
  br label %if.end.922

if.end.922:                                       ; preds = %if.end.921, %if.else.703
  br label %if.end.923

if.end.923:                                       ; preds = %if.end.922, %if.end.702
  br label %if.end.924

if.end.924:                                       ; preds = %if.end.923, %if.end.643
  br label %if.end.925

if.end.925:                                       ; preds = %if.end.924, %if.end.620
  call void @html_tag_arg_free(%struct.tag_arguments_tag* %tag_args)
  br label %sw.epilog.1578

sw.bb.926:                                        ; preds = %if.end.131
  %561 = load i8*, i8** %ptr, align 8
  %562 = load i8, i8* %561, align 1
  %conv927 = zext i8 %562 to i32
  %cmp928 = icmp eq i32 %conv927, 35
  br i1 %cmp928, label %if.then.930, label %if.else.932

if.then.930:                                      ; preds = %sw.bb.926
  store i32 0, i32* %value, align 4
  store i32 0, i32* %hex, align 4
  store i32 12, i32* %state, align 4
  %563 = load i8*, i8** %ptr, align 8
  %incdec.ptr931 = getelementptr inbounds i8, i8* %563, i32 1
  store i8* %incdec.ptr931, i8** %ptr, align 8
  br label %if.end.947

if.else.932:                                      ; preds = %sw.bb.926
  %564 = load i32, i32* %dconf_entconv, align 4
  %tobool933 = icmp ne i32 %564, 0
  br i1 %tobool933, label %if.then.934, label %if.else.935

if.then.934:                                      ; preds = %if.else.932
  store i32 4, i32* %state, align 4
  br label %if.end.946

if.else.935:                                      ; preds = %if.else.932
  %565 = load i32, i32* %next_state, align 4
  %cmp936 = icmp eq i32 %565, 9
  br i1 %cmp936, label %land.lhs.true.938, label %if.end.945

land.lhs.true.938:                                ; preds = %if.else.935
  %566 = load i32, i32* %tag_val_length, align 4
  %cmp939 = icmp slt i32 %566, 1024
  br i1 %cmp939, label %if.then.941, label %if.end.945

if.then.941:                                      ; preds = %land.lhs.true.938
  %567 = load i32, i32* %tag_val_length, align 4
  %inc942 = add nsw i32 %567, 1
  store i32 %inc942, i32* %tag_val_length, align 4
  %idxprom943 = sext i32 %567 to i64
  %arrayidx944 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom943
  store i8 38, i8* %arrayidx944, align 1
  br label %if.end.945

if.end.945:                                       ; preds = %if.then.941, %land.lhs.true.938, %if.else.935
  %568 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %569 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %568, %struct.file_buff_tag* %569, i8 zeroext 38)
  %570 = load i32, i32* %next_state, align 4
  store i32 %570, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.946

if.end.946:                                       ; preds = %if.end.945, %if.then.934
  br label %if.end.947

if.end.947:                                       ; preds = %if.end.946, %if.then.930
  br label %sw.epilog.1578

sw.bb.948:                                        ; preds = %if.end.131
  %571 = load i8*, i8** %ptr, align 8
  %572 = load i8, i8* %571, align 1
  %conv949 = zext i8 %572 to i32
  %cmp950 = icmp eq i32 %conv949, 59
  br i1 %cmp950, label %if.then.952, label %if.else.1026

if.then.952:                                      ; preds = %sw.bb.948
  %573 = load i64, i64* %entity_val_length, align 8
  %arrayidx954 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %573
  store i8 0, i8* %arrayidx954, align 1
  %arraydecay955 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i32 0
  %call956 = call i8* @entity_norm(%struct.entity_conv* %conv, i8* %arraydecay955)
  store i8* %call956, i8** %normalized, align 8
  %574 = load i8*, i8** %normalized, align 8
  %tobool957 = icmp ne i8* %574, null
  br i1 %tobool957, label %if.then.958, label %if.else.981

if.then.958:                                      ; preds = %if.then.952
  store i64 0, i64* %i953, align 8
  br label %for.cond.959

for.cond.959:                                     ; preds = %for.inc.978, %if.then.958
  %575 = load i64, i64* %i953, align 8
  %576 = load i8*, i8** %normalized, align 8
  %call960 = call i64 @strlen(i8* %576) #8
  %cmp961 = icmp ult i64 %575, %call960
  br i1 %cmp961, label %for.body.963, label %for.end.980

for.body.963:                                     ; preds = %for.cond.959
  %577 = load i64, i64* %i953, align 8
  %578 = load i8*, i8** %normalized, align 8
  %arrayidx964 = getelementptr inbounds i8, i8* %578, i64 %577
  %579 = load i8, i8* %arrayidx964, align 1
  %conv965 = zext i8 %579 to i32
  %call966 = call i32 @tolower(i32 %conv965) #3
  %conv967 = trunc i32 %call966 to i8
  store i8 %conv967, i8* %c, align 1
  %580 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %581 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %582 = load i8, i8* %c, align 1
  call void @html_output_c(%struct.file_buff_tag* %580, %struct.file_buff_tag* %581, i8 zeroext %582)
  %583 = load i32, i32* %next_state, align 4
  %cmp968 = icmp eq i32 %583, 9
  br i1 %cmp968, label %land.lhs.true.970, label %if.end.977

land.lhs.true.970:                                ; preds = %for.body.963
  %584 = load i32, i32* %tag_val_length, align 4
  %cmp971 = icmp slt i32 %584, 1024
  br i1 %cmp971, label %if.then.973, label %if.end.977

if.then.973:                                      ; preds = %land.lhs.true.970
  %585 = load i8, i8* %c, align 1
  %586 = load i32, i32* %tag_val_length, align 4
  %inc974 = add nsw i32 %586, 1
  store i32 %inc974, i32* %tag_val_length, align 4
  %idxprom975 = sext i32 %586 to i64
  %arrayidx976 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom975
  store i8 %585, i8* %arrayidx976, align 1
  br label %if.end.977

if.end.977:                                       ; preds = %if.then.973, %land.lhs.true.970, %for.body.963
  br label %for.inc.978

for.inc.978:                                      ; preds = %if.end.977
  %587 = load i64, i64* %i953, align 8
  %inc979 = add i64 %587, 1
  store i64 %inc979, i64* %i953, align 8
  br label %for.cond.959

for.end.980:                                      ; preds = %for.cond.959
  %588 = load i8*, i8** %normalized, align 8
  call void @free(i8* %588) #3
  br label %if.end.1024

if.else.981:                                      ; preds = %if.then.952
  %589 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %590 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %589, %struct.file_buff_tag* %590, i8 zeroext 38)
  %591 = load i32, i32* %next_state, align 4
  %cmp982 = icmp eq i32 %591, 9
  br i1 %cmp982, label %land.lhs.true.984, label %if.end.991

land.lhs.true.984:                                ; preds = %if.else.981
  %592 = load i32, i32* %tag_val_length, align 4
  %cmp985 = icmp slt i32 %592, 1024
  br i1 %cmp985, label %if.then.987, label %if.end.991

if.then.987:                                      ; preds = %land.lhs.true.984
  %593 = load i32, i32* %tag_val_length, align 4
  %inc988 = add nsw i32 %593, 1
  store i32 %inc988, i32* %tag_val_length, align 4
  %idxprom989 = sext i32 %593 to i64
  %arrayidx990 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom989
  store i8 38, i8* %arrayidx990, align 1
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.987, %land.lhs.true.984, %if.else.981
  store i64 0, i64* %i953, align 8
  br label %for.cond.992

for.cond.992:                                     ; preds = %for.inc.1011, %if.end.991
  %594 = load i64, i64* %i953, align 8
  %595 = load i64, i64* %entity_val_length, align 8
  %cmp993 = icmp ult i64 %594, %595
  br i1 %cmp993, label %for.body.995, label %for.end.1013

for.body.995:                                     ; preds = %for.cond.992
  %596 = load i64, i64* %i953, align 8
  %arrayidx997 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %596
  %597 = load i8, i8* %arrayidx997, align 1
  %conv998 = zext i8 %597 to i32
  %call999 = call i32 @tolower(i32 %conv998) #3
  %conv1000 = trunc i32 %call999 to i8
  store i8 %conv1000, i8* %c996, align 1
  %598 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %599 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %600 = load i8, i8* %c996, align 1
  call void @html_output_c(%struct.file_buff_tag* %598, %struct.file_buff_tag* %599, i8 zeroext %600)
  %601 = load i32, i32* %next_state, align 4
  %cmp1001 = icmp eq i32 %601, 9
  br i1 %cmp1001, label %land.lhs.true.1003, label %if.end.1010

land.lhs.true.1003:                               ; preds = %for.body.995
  %602 = load i32, i32* %tag_val_length, align 4
  %cmp1004 = icmp slt i32 %602, 1024
  br i1 %cmp1004, label %if.then.1006, label %if.end.1010

if.then.1006:                                     ; preds = %land.lhs.true.1003
  %603 = load i8, i8* %c996, align 1
  %604 = load i32, i32* %tag_val_length, align 4
  %inc1007 = add nsw i32 %604, 1
  store i32 %inc1007, i32* %tag_val_length, align 4
  %idxprom1008 = sext i32 %604 to i64
  %arrayidx1009 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1008
  store i8 %603, i8* %arrayidx1009, align 1
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.then.1006, %land.lhs.true.1003, %for.body.995
  br label %for.inc.1011

for.inc.1011:                                     ; preds = %if.end.1010
  %605 = load i64, i64* %i953, align 8
  %inc1012 = add i64 %605, 1
  store i64 %inc1012, i64* %i953, align 8
  br label %for.cond.992

for.end.1013:                                     ; preds = %for.cond.992
  %606 = load i32, i32* %next_state, align 4
  %cmp1014 = icmp eq i32 %606, 9
  br i1 %cmp1014, label %land.lhs.true.1016, label %if.end.1023

land.lhs.true.1016:                               ; preds = %for.end.1013
  %607 = load i32, i32* %tag_val_length, align 4
  %cmp1017 = icmp slt i32 %607, 1024
  br i1 %cmp1017, label %if.then.1019, label %if.end.1023

if.then.1019:                                     ; preds = %land.lhs.true.1016
  %608 = load i32, i32* %tag_val_length, align 4
  %inc1020 = add nsw i32 %608, 1
  store i32 %inc1020, i32* %tag_val_length, align 4
  %idxprom1021 = sext i32 %608 to i64
  %arrayidx1022 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1021
  store i8 59, i8* %arrayidx1022, align 1
  br label %if.end.1023

if.end.1023:                                      ; preds = %if.then.1019, %land.lhs.true.1016, %for.end.1013
  %609 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %610 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %609, %struct.file_buff_tag* %610, i8 zeroext 59)
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.end.1023, %for.end.980
  store i64 0, i64* %entity_val_length, align 8
  %611 = load i32, i32* %next_state, align 4
  store i32 %611, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  %612 = load i8*, i8** %ptr, align 8
  %incdec.ptr1025 = getelementptr inbounds i8, i8* %612, i32 1
  store i8* %incdec.ptr1025, i8** %ptr, align 8
  br label %if.end.1088

if.else.1026:                                     ; preds = %sw.bb.948
  %613 = load i8*, i8** %ptr, align 8
  %614 = load i8, i8* %613, align 1
  %conv1027 = zext i8 %614 to i32
  %idxprom1028 = sext i32 %conv1027 to i64
  %call1029 = call i16** @__ctype_b_loc() #7
  %615 = load i16*, i16** %call1029, align 8
  %arrayidx1030 = getelementptr inbounds i16, i16* %615, i64 %idxprom1028
  %616 = load i16, i16* %arrayidx1030, align 2
  %conv1031 = zext i16 %616 to i32
  %and1032 = and i32 %conv1031, 8
  %tobool1033 = icmp ne i32 %and1032, 0
  br i1 %tobool1033, label %land.lhs.true.1046, label %lor.lhs.false.1034

lor.lhs.false.1034:                               ; preds = %if.else.1026
  %617 = load i8*, i8** %ptr, align 8
  %618 = load i8, i8* %617, align 1
  %conv1035 = zext i8 %618 to i32
  %cmp1036 = icmp eq i32 %conv1035, 95
  br i1 %cmp1036, label %land.lhs.true.1046, label %lor.lhs.false.1038

lor.lhs.false.1038:                               ; preds = %lor.lhs.false.1034
  %619 = load i8*, i8** %ptr, align 8
  %620 = load i8, i8* %619, align 1
  %conv1039 = zext i8 %620 to i32
  %cmp1040 = icmp eq i32 %conv1039, 58
  br i1 %cmp1040, label %land.lhs.true.1046, label %lor.lhs.false.1042

lor.lhs.false.1042:                               ; preds = %lor.lhs.false.1038
  %621 = load i8*, i8** %ptr, align 8
  %622 = load i8, i8* %621, align 1
  %conv1043 = zext i8 %622 to i32
  %cmp1044 = icmp eq i32 %conv1043, 45
  br i1 %cmp1044, label %land.lhs.true.1046, label %if.else.1053

land.lhs.true.1046:                               ; preds = %lor.lhs.false.1042, %lor.lhs.false.1038, %lor.lhs.false.1034, %if.else.1026
  %623 = load i64, i64* %entity_val_length, align 8
  %cmp1047 = icmp ult i64 %623, 1024
  br i1 %cmp1047, label %if.then.1049, label %if.else.1053

if.then.1049:                                     ; preds = %land.lhs.true.1046
  %624 = load i8*, i8** %ptr, align 8
  %incdec.ptr1050 = getelementptr inbounds i8, i8* %624, i32 1
  store i8* %incdec.ptr1050, i8** %ptr, align 8
  %625 = load i8, i8* %624, align 1
  %626 = load i64, i64* %entity_val_length, align 8
  %inc1051 = add i64 %626, 1
  store i64 %inc1051, i64* %entity_val_length, align 8
  %arrayidx1052 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %626
  store i8 %625, i8* %arrayidx1052, align 1
  br label %if.end.1087

if.else.1053:                                     ; preds = %land.lhs.true.1046, %lor.lhs.false.1042
  %627 = load i32, i32* %next_state, align 4
  %cmp1055 = icmp eq i32 %627, 9
  br i1 %cmp1055, label %land.lhs.true.1057, label %if.end.1064

land.lhs.true.1057:                               ; preds = %if.else.1053
  %628 = load i32, i32* %tag_val_length, align 4
  %cmp1058 = icmp slt i32 %628, 1024
  br i1 %cmp1058, label %if.then.1060, label %if.end.1064

if.then.1060:                                     ; preds = %land.lhs.true.1057
  %629 = load i32, i32* %tag_val_length, align 4
  %inc1061 = add nsw i32 %629, 1
  store i32 %inc1061, i32* %tag_val_length, align 4
  %idxprom1062 = sext i32 %629 to i64
  %arrayidx1063 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1062
  store i8 38, i8* %arrayidx1063, align 1
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.then.1060, %land.lhs.true.1057, %if.else.1053
  %630 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %631 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %630, %struct.file_buff_tag* %631, i8 zeroext 38)
  store i64 0, i64* %i1054, align 8
  br label %for.cond.1065

for.cond.1065:                                    ; preds = %for.inc.1084, %if.end.1064
  %632 = load i64, i64* %i1054, align 8
  %633 = load i64, i64* %entity_val_length, align 8
  %cmp1066 = icmp ult i64 %632, %633
  br i1 %cmp1066, label %for.body.1068, label %for.end.1086

for.body.1068:                                    ; preds = %for.cond.1065
  %634 = load i64, i64* %i1054, align 8
  %arrayidx1070 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %634
  %635 = load i8, i8* %arrayidx1070, align 1
  %conv1071 = zext i8 %635 to i32
  %call1072 = call i32 @tolower(i32 %conv1071) #3
  %conv1073 = trunc i32 %call1072 to i8
  store i8 %conv1073, i8* %c1069, align 1
  %636 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %637 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %638 = load i8, i8* %c1069, align 1
  call void @html_output_c(%struct.file_buff_tag* %636, %struct.file_buff_tag* %637, i8 zeroext %638)
  %639 = load i32, i32* %next_state, align 4
  %cmp1074 = icmp eq i32 %639, 9
  br i1 %cmp1074, label %land.lhs.true.1076, label %if.end.1083

land.lhs.true.1076:                               ; preds = %for.body.1068
  %640 = load i32, i32* %tag_val_length, align 4
  %cmp1077 = icmp slt i32 %640, 1024
  br i1 %cmp1077, label %if.then.1079, label %if.end.1083

if.then.1079:                                     ; preds = %land.lhs.true.1076
  %641 = load i8, i8* %c1069, align 1
  %642 = load i32, i32* %tag_val_length, align 4
  %inc1080 = add nsw i32 %642, 1
  store i32 %inc1080, i32* %tag_val_length, align 4
  %idxprom1081 = sext i32 %642 to i64
  %arrayidx1082 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1081
  store i8 %641, i8* %arrayidx1082, align 1
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1079, %land.lhs.true.1076, %for.body.1068
  br label %for.inc.1084

for.inc.1084:                                     ; preds = %if.end.1083
  %643 = load i64, i64* %i1054, align 8
  %inc1085 = add i64 %643, 1
  store i64 %inc1085, i64* %i1054, align 8
  br label %for.cond.1065

for.end.1086:                                     ; preds = %for.cond.1065
  %644 = load i32, i32* %next_state, align 4
  store i32 %644, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  store i64 0, i64* %entity_val_length, align 8
  br label %if.end.1087

if.end.1087:                                      ; preds = %for.end.1086, %if.then.1049
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.end.1087, %if.end.1024
  br label %sw.epilog.1578

sw.bb.1089:                                       ; preds = %if.end.131
  %645 = load i32, i32* %value, align 4
  %cmp1090 = icmp eq i32 %645, 0
  br i1 %cmp1090, label %land.lhs.true.1092, label %if.else.1102

land.lhs.true.1092:                               ; preds = %sw.bb.1089
  %646 = load i8*, i8** %ptr, align 8
  %647 = load i8, i8* %646, align 1
  %conv1093 = zext i8 %647 to i32
  %cmp1094 = icmp eq i32 %conv1093, 120
  br i1 %cmp1094, label %if.then.1100, label %lor.lhs.false.1096

lor.lhs.false.1096:                               ; preds = %land.lhs.true.1092
  %648 = load i8*, i8** %ptr, align 8
  %649 = load i8, i8* %648, align 1
  %conv1097 = zext i8 %649 to i32
  %cmp1098 = icmp eq i32 %conv1097, 88
  br i1 %cmp1098, label %if.then.1100, label %if.else.1102

if.then.1100:                                     ; preds = %lor.lhs.false.1096, %land.lhs.true.1092
  store i32 1, i32* %hex, align 4
  %650 = load i8*, i8** %ptr, align 8
  %incdec.ptr1101 = getelementptr inbounds i8, i8* %650, i32 1
  store i8* %incdec.ptr1101, i8** %ptr, align 8
  br label %if.end.1191

if.else.1102:                                     ; preds = %lor.lhs.false.1096, %sw.bb.1089
  %651 = load i8*, i8** %ptr, align 8
  %652 = load i8, i8* %651, align 1
  %conv1103 = zext i8 %652 to i32
  %cmp1104 = icmp eq i32 %conv1103, 59
  br i1 %cmp1104, label %if.then.1106, label %if.else.1144

if.then.1106:                                     ; preds = %if.else.1102
  %653 = load i32, i32* %next_state, align 4
  %cmp1107 = icmp eq i32 %653, 9
  br i1 %cmp1107, label %land.lhs.true.1109, label %if.end.1117

land.lhs.true.1109:                               ; preds = %if.then.1106
  %654 = load i32, i32* %tag_val_length, align 4
  %cmp1110 = icmp slt i32 %654, 1024
  br i1 %cmp1110, label %if.then.1112, label %if.end.1117

if.then.1112:                                     ; preds = %land.lhs.true.1109
  %655 = load i32, i32* %value, align 4
  %conv1113 = trunc i32 %655 to i8
  %656 = load i32, i32* %tag_val_length, align 4
  %inc1114 = add nsw i32 %656, 1
  store i32 %inc1114, i32* %tag_val_length, align 4
  %idxprom1115 = sext i32 %656 to i64
  %arrayidx1116 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1115
  store i8 %conv1113, i8* %arrayidx1116, align 1
  br label %if.end.1117

if.end.1117:                                      ; preds = %if.then.1112, %land.lhs.true.1109, %if.then.1106
  %657 = load i32, i32* %dconf_entconv, align 4
  %tobool1118 = icmp ne i32 %657, 0
  br i1 %tobool1118, label %if.then.1119, label %if.else.1138

if.then.1119:                                     ; preds = %if.end.1117
  %658 = load i32, i32* %value, align 4
  %cmp1120 = icmp slt i32 %658, 128
  br i1 %cmp1120, label %if.then.1122, label %if.else.1125

if.then.1122:                                     ; preds = %if.then.1119
  %659 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %660 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %661 = load i32, i32* %value, align 4
  %call1123 = call i32 @tolower(i32 %661) #3
  %conv1124 = trunc i32 %call1123 to i8
  call void @html_output_c(%struct.file_buff_tag* %659, %struct.file_buff_tag* %660, i8 zeroext %conv1124)
  br label %if.end.1137

if.else.1125:                                     ; preds = %if.then.1119
  %arraydecay1126 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %662 = load i32, i32* %value, align 4
  %call1127 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay1126, i64 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %662) #3
  %arrayidx1128 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i64 9
  store i8 0, i8* %arrayidx1128, align 1
  %663 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %arraydecay1129 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %arraydecay1130 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %call1131 = call i64 @strlen(i8* %arraydecay1130) #8
  %conv1132 = trunc i64 %call1131 to i32
  call void @html_output_str(%struct.file_buff_tag* %663, i8* %arraydecay1129, i32 %conv1132)
  %664 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %arraydecay1133 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %arraydecay1134 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %call1135 = call i64 @strlen(i8* %arraydecay1134) #8
  %conv1136 = trunc i64 %call1135 to i32
  call void @html_output_str(%struct.file_buff_tag* %664, i8* %arraydecay1133, i32 %conv1136)
  br label %if.end.1137

if.end.1137:                                      ; preds = %if.else.1125, %if.then.1122
  br label %if.end.1142

if.else.1138:                                     ; preds = %if.end.1117
  %665 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %666 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %667 = load i32, i32* %value, align 4
  %and1139 = and i32 %667, 255
  %call1140 = call i32 @tolower(i32 %and1139) #3
  %conv1141 = trunc i32 %call1140 to i8
  call void @html_output_c(%struct.file_buff_tag* %665, %struct.file_buff_tag* %666, i8 zeroext %conv1141)
  br label %if.end.1142

if.end.1142:                                      ; preds = %if.else.1138, %if.end.1137
  %668 = load i32, i32* %next_state, align 4
  store i32 %668, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  %669 = load i8*, i8** %ptr, align 8
  %incdec.ptr1143 = getelementptr inbounds i8, i8* %669, i32 1
  store i8* %incdec.ptr1143, i8** %ptr, align 8
  br label %if.end.1190

if.else.1144:                                     ; preds = %if.else.1102
  %670 = load i8*, i8** %ptr, align 8
  %671 = load i8, i8* %670, align 1
  %conv1145 = zext i8 %671 to i32
  %idxprom1146 = sext i32 %conv1145 to i64
  %call1147 = call i16** @__ctype_b_loc() #7
  %672 = load i16*, i16** %call1147, align 8
  %arrayidx1148 = getelementptr inbounds i16, i16* %672, i64 %idxprom1146
  %673 = load i16, i16* %arrayidx1148, align 2
  %conv1149 = zext i16 %673 to i32
  %and1150 = and i32 %conv1149, 2048
  %tobool1151 = icmp ne i32 %and1150, 0
  br i1 %tobool1151, label %if.then.1162, label %lor.lhs.false.1152

lor.lhs.false.1152:                               ; preds = %if.else.1144
  %674 = load i32, i32* %hex, align 4
  %tobool1153 = icmp ne i32 %674, 0
  br i1 %tobool1153, label %land.lhs.true.1154, label %if.else.1187

land.lhs.true.1154:                               ; preds = %lor.lhs.false.1152
  %675 = load i8*, i8** %ptr, align 8
  %676 = load i8, i8* %675, align 1
  %conv1155 = zext i8 %676 to i32
  %idxprom1156 = sext i32 %conv1155 to i64
  %call1157 = call i16** @__ctype_b_loc() #7
  %677 = load i16*, i16** %call1157, align 8
  %arrayidx1158 = getelementptr inbounds i16, i16* %677, i64 %idxprom1156
  %678 = load i16, i16* %arrayidx1158, align 2
  %conv1159 = zext i16 %678 to i32
  %and1160 = and i32 %conv1159, 4096
  %tobool1161 = icmp ne i32 %and1160, 0
  br i1 %tobool1161, label %if.then.1162, label %if.else.1187

if.then.1162:                                     ; preds = %land.lhs.true.1154, %if.else.1144
  %679 = load i32, i32* %hex, align 4
  %tobool1163 = icmp ne i32 %679, 0
  br i1 %tobool1163, label %if.then.1164, label %if.else.1165

if.then.1164:                                     ; preds = %if.then.1162
  %680 = load i32, i32* %value, align 4
  %mul = mul nsw i32 %680, 16
  store i32 %mul, i32* %value, align 4
  br label %if.end.1167

if.else.1165:                                     ; preds = %if.then.1162
  %681 = load i32, i32* %value, align 4
  %mul1166 = mul nsw i32 %681, 10
  store i32 %mul1166, i32* %value, align 4
  br label %if.end.1167

if.end.1167:                                      ; preds = %if.else.1165, %if.then.1164
  %682 = load i8*, i8** %ptr, align 8
  %683 = load i8, i8* %682, align 1
  %conv1168 = zext i8 %683 to i32
  %idxprom1169 = sext i32 %conv1168 to i64
  %call1170 = call i16** @__ctype_b_loc() #7
  %684 = load i16*, i16** %call1170, align 8
  %arrayidx1171 = getelementptr inbounds i16, i16* %684, i64 %idxprom1169
  %685 = load i16, i16* %arrayidx1171, align 2
  %conv1172 = zext i16 %685 to i32
  %and1173 = and i32 %conv1172, 2048
  %tobool1174 = icmp ne i32 %and1173, 0
  br i1 %tobool1174, label %if.then.1175, label %if.else.1179

if.then.1175:                                     ; preds = %if.end.1167
  %686 = load i8*, i8** %ptr, align 8
  %687 = load i8, i8* %686, align 1
  %conv1176 = zext i8 %687 to i32
  %sub1177 = sub nsw i32 %conv1176, 48
  %688 = load i32, i32* %value, align 4
  %add1178 = add nsw i32 %688, %sub1177
  store i32 %add1178, i32* %value, align 4
  br label %if.end.1185

if.else.1179:                                     ; preds = %if.end.1167
  %689 = load i8*, i8** %ptr, align 8
  %690 = load i8, i8* %689, align 1
  %conv1180 = zext i8 %690 to i32
  %call1181 = call i32 @tolower(i32 %conv1180) #3
  %sub1182 = sub nsw i32 %call1181, 97
  %add1183 = add nsw i32 %sub1182, 10
  %691 = load i32, i32* %value, align 4
  %add1184 = add nsw i32 %691, %add1183
  store i32 %add1184, i32* %value, align 4
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.else.1179, %if.then.1175
  %692 = load i8*, i8** %ptr, align 8
  %incdec.ptr1186 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %incdec.ptr1186, i8** %ptr, align 8
  br label %if.end.1189

if.else.1187:                                     ; preds = %land.lhs.true.1154, %lor.lhs.false.1152
  %693 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %694 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %695 = load i32, i32* %value, align 4
  %conv1188 = trunc i32 %695 to i8
  call void @html_output_c(%struct.file_buff_tag* %693, %struct.file_buff_tag* %694, i8 zeroext %conv1188)
  %696 = load i32, i32* %next_state, align 4
  store i32 %696, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.else.1187, %if.end.1185
  br label %if.end.1190

if.end.1190:                                      ; preds = %if.end.1189, %if.end.1142
  br label %if.end.1191

if.end.1191:                                      ; preds = %if.end.1190, %if.then.1100
  br label %sw.epilog.1578

sw.bb.1192:                                       ; preds = %if.end.131
  %697 = load i8*, i8** %ptr, align 8
  %call1193 = call i32 @strncmp(i8* %697, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #8
  %cmp1194 = icmp eq i32 %call1193, 0
  br i1 %cmp1194, label %if.then.1196, label %if.else.1198

if.then.1196:                                     ; preds = %sw.bb.1192
  %698 = load i8*, i8** %ptr, align 8
  %add.ptr1197 = getelementptr inbounds i8, i8* %698, i64 4
  store i8* %add.ptr1197, i8** %ptr, align 8
  store i32 15, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %if.end.1206

if.else.1198:                                     ; preds = %sw.bb.1192
  %699 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %700 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %701 = load i8*, i8** %ptr, align 8
  %702 = load i8, i8* %701, align 1
  %conv1199 = zext i8 %702 to i32
  %call1200 = call i32 @tolower(i32 %conv1199) #3
  %conv1201 = trunc i32 %call1200 to i8
  call void @html_output_c(%struct.file_buff_tag* %699, %struct.file_buff_tag* %700, i8 zeroext %conv1201)
  %703 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %704 = load i8*, i8** %ptr, align 8
  %705 = load i8, i8* %704, align 1
  %conv1202 = zext i8 %705 to i32
  %call1203 = call i32 @tolower(i32 %conv1202) #3
  %conv1204 = trunc i32 %call1203 to i8
  call void @html_output_c(%struct.file_buff_tag* %703, %struct.file_buff_tag* null, i8 zeroext %conv1204)
  %706 = load i8*, i8** %ptr, align 8
  %incdec.ptr1205 = getelementptr inbounds i8, i8* %706, i32 1
  store i8* %incdec.ptr1205, i8** %ptr, align 8
  br label %if.end.1206

if.end.1206:                                      ; preds = %if.else.1198, %if.then.1196
  br label %sw.epilog.1578

sw.bb.1207:                                       ; preds = %if.end.131
  %707 = load i8*, i8** %ptr, align 8
  %call1208 = call i64 @strlen(i8* %707) #8
  %cmp1209 = icmp ult i64 %call1208, 8
  br i1 %cmp1209, label %if.then.1211, label %if.end.1212

if.then.1211:                                     ; preds = %sw.bb.1207
  store i32 1, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  br label %sw.epilog.1578

if.end.1212:                                      ; preds = %sw.bb.1207
  %708 = load i8*, i8** %ptr, align 8
  %arrayidx1213 = getelementptr inbounds i8, i8* %708, i64 0
  %709 = load i8, i8* %arrayidx1213, align 1
  %idxprom1214 = zext i8 %709 to i64
  %arrayidx1215 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1214
  %710 = load i32, i32* %arrayidx1215, align 4
  %shl = shl i32 %710, 2
  %conv1216 = sext i32 %shl to i64
  store i64 %conv1216, i64* %length, align 8
  %711 = load i8*, i8** %ptr, align 8
  %arrayidx1217 = getelementptr inbounds i8, i8* %711, i64 1
  %712 = load i8, i8* %arrayidx1217, align 1
  %idxprom1218 = zext i8 %712 to i64
  %arrayidx1219 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1218
  %713 = load i32, i32* %arrayidx1219, align 4
  %shr = ashr i32 %713, 4
  %conv1220 = sext i32 %shr to i64
  %714 = load i64, i64* %length, align 8
  %add1221 = add i64 %714, %conv1220
  store i64 %add1221, i64* %length, align 8
  %715 = load i8*, i8** %ptr, align 8
  %arrayidx1222 = getelementptr inbounds i8, i8* %715, i64 1
  %716 = load i8, i8* %arrayidx1222, align 1
  %idxprom1223 = zext i8 %716 to i64
  %arrayidx1224 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1223
  %717 = load i32, i32* %arrayidx1224, align 4
  %and1225 = and i32 %717, 15
  %shl1226 = shl i32 %and1225, 12
  %conv1227 = sext i32 %shl1226 to i64
  %718 = load i64, i64* %length, align 8
  %add1228 = add i64 %718, %conv1227
  store i64 %add1228, i64* %length, align 8
  %719 = load i8*, i8** %ptr, align 8
  %arrayidx1229 = getelementptr inbounds i8, i8* %719, i64 2
  %720 = load i8, i8* %arrayidx1229, align 1
  %idxprom1230 = zext i8 %720 to i64
  %arrayidx1231 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1230
  %721 = load i32, i32* %arrayidx1231, align 4
  %shr1232 = ashr i32 %721, 2
  %shl1233 = shl i32 %shr1232, 8
  %conv1234 = sext i32 %shl1233 to i64
  %722 = load i64, i64* %length, align 8
  %add1235 = add i64 %722, %conv1234
  store i64 %add1235, i64* %length, align 8
  %723 = load i8*, i8** %ptr, align 8
  %arrayidx1236 = getelementptr inbounds i8, i8* %723, i64 2
  %724 = load i8, i8* %arrayidx1236, align 1
  %idxprom1237 = zext i8 %724 to i64
  %arrayidx1238 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1237
  %725 = load i32, i32* %arrayidx1238, align 4
  %and1239 = and i32 %725, 3
  %shl1240 = shl i32 %and1239, 22
  %conv1241 = sext i32 %shl1240 to i64
  %726 = load i64, i64* %length, align 8
  %add1242 = add i64 %726, %conv1241
  store i64 %add1242, i64* %length, align 8
  %727 = load i8*, i8** %ptr, align 8
  %arrayidx1243 = getelementptr inbounds i8, i8* %727, i64 3
  %728 = load i8, i8* %arrayidx1243, align 1
  %idxprom1244 = zext i8 %728 to i64
  %arrayidx1245 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1244
  %729 = load i32, i32* %arrayidx1245, align 4
  %shl1246 = shl i32 %729, 16
  %conv1247 = sext i32 %shl1246 to i64
  %730 = load i64, i64* %length, align 8
  %add1248 = add i64 %730, %conv1247
  store i64 %add1248, i64* %length, align 8
  %731 = load i8*, i8** %ptr, align 8
  %arrayidx1249 = getelementptr inbounds i8, i8* %731, i64 4
  %732 = load i8, i8* %arrayidx1249, align 1
  %idxprom1250 = zext i8 %732 to i64
  %arrayidx1251 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1250
  %733 = load i32, i32* %arrayidx1251, align 4
  %shl1252 = shl i32 %733, 2
  %shl1253 = shl i32 %shl1252, 24
  %conv1254 = sext i32 %shl1253 to i64
  %734 = load i64, i64* %length, align 8
  %add1255 = add i64 %734, %conv1254
  store i64 %add1255, i64* %length, align 8
  %735 = load i8*, i8** %ptr, align 8
  %arrayidx1256 = getelementptr inbounds i8, i8* %735, i64 5
  %736 = load i8, i8* %arrayidx1256, align 1
  %idxprom1257 = zext i8 %736 to i64
  %arrayidx1258 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom1257
  %737 = load i32, i32* %arrayidx1258, align 4
  %shr1259 = ashr i32 %737, 4
  %shl1260 = shl i32 %shr1259, 24
  %conv1261 = sext i32 %shl1260 to i64
  %738 = load i64, i64* %length, align 8
  %add1262 = add i64 %738, %conv1261
  store i64 %add1262, i64* %length, align 8
  store i32 0, i32* %table_pos, align 4
  store i32 16, i32* %state, align 4
  store i32 0, i32* %next_state, align 4
  %739 = load i8*, i8** %ptr, align 8
  %add.ptr1263 = getelementptr inbounds i8, i8* %739, i64 8
  store i8* %add.ptr1263, i8** %ptr, align 8
  br label %sw.epilog.1578

sw.bb.1264:                                       ; preds = %if.end.131
  %740 = load i64, i64* %length, align 8
  %cmp1265 = icmp eq i64 %740, 0
  br i1 %cmp1265, label %if.then.1267, label %if.end.1268

if.then.1267:                                     ; preds = %sw.bb.1264
  %741 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_str(%struct.file_buff_tag* %741, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 10)
  store i64 12, i64* %length, align 8
  store i32 13, i32* %state, align 4
  store i32 1, i32* %next_state, align 4
  br label %sw.epilog.1578

if.end.1268:                                      ; preds = %sw.bb.1264
  %742 = load i8*, i8** %ptr, align 8
  %743 = load i8, i8* %742, align 1
  %conv1269 = zext i8 %743 to i32
  %cmp1270 = icmp slt i32 %conv1269, 128
  br i1 %cmp1270, label %if.then.1272, label %if.end.1297

if.then.1272:                                     ; preds = %if.end.1268
  %744 = load i8*, i8** %ptr, align 8
  %745 = load i8, i8* %744, align 1
  %idxprom1273 = zext i8 %745 to i64
  %746 = load i32, i32* %table_pos, align 4
  %idxprom1274 = sext i32 %746 to i64
  %arrayidx1275 = getelementptr inbounds [64 x i32], [64 x i32]* @table_order, i32 0, i64 %idxprom1274
  %747 = load i32, i32* %arrayidx1275, align 4
  %idxprom1276 = sext i32 %747 to i64
  %arrayidx1277 = getelementptr inbounds [3 x [128 x i32]], [3 x [128 x i32]]* @decrypt_tables, i32 0, i64 %idxprom1276
  %arrayidx1278 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx1277, i32 0, i64 %idxprom1273
  %748 = load i32, i32* %arrayidx1278, align 4
  store i32 %748, i32* %value, align 4
  %749 = load i32, i32* %value, align 4
  %cmp1279 = icmp eq i32 %749, 255
  br i1 %cmp1279, label %if.then.1281, label %if.else.1292

if.then.1281:                                     ; preds = %if.then.1272
  %750 = load i8*, i8** %ptr, align 8
  %incdec.ptr1282 = getelementptr inbounds i8, i8* %750, i32 1
  store i8* %incdec.ptr1282, i8** %ptr, align 8
  %751 = load i64, i64* %length, align 8
  %dec1283 = add i64 %751, -1
  store i64 %dec1283, i64* %length, align 8
  %752 = load i8*, i8** %ptr, align 8
  %753 = load i8, i8* %752, align 1
  %conv1284 = zext i8 %753 to i32
  switch i32 %conv1284, label %sw.epilog [
    i32 0, label %sw.bb.1285
    i32 33, label %sw.bb.1287
    i32 35, label %sw.bb.1288
    i32 36, label %sw.bb.1289
    i32 38, label %sw.bb.1290
    i32 42, label %sw.bb.1291
  ]

sw.bb.1285:                                       ; preds = %if.then.1281
  %754 = load i8*, i8** %ptr, align 8
  %incdec.ptr1286 = getelementptr inbounds i8, i8* %754, i32 -1
  store i8* %incdec.ptr1286, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.1287:                                       ; preds = %if.then.1281
  %755 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %756 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %755, %struct.file_buff_tag* %756, i8 zeroext 60)
  %757 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %757, %struct.file_buff_tag* null, i8 zeroext 60)
  br label %sw.epilog

sw.bb.1288:                                       ; preds = %if.then.1281
  %758 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %759 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %758, %struct.file_buff_tag* %759, i8 zeroext 13)
  %760 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %760, %struct.file_buff_tag* null, i8 zeroext 13)
  br label %sw.epilog

sw.bb.1289:                                       ; preds = %if.then.1281
  %761 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %762 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %761, %struct.file_buff_tag* %762, i8 zeroext 64)
  %763 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %763, %struct.file_buff_tag* null, i8 zeroext 64)
  br label %sw.epilog

sw.bb.1290:                                       ; preds = %if.then.1281
  %764 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %765 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %764, %struct.file_buff_tag* %765, i8 zeroext 10)
  %766 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %766, %struct.file_buff_tag* null, i8 zeroext 10)
  br label %sw.epilog

sw.bb.1291:                                       ; preds = %if.then.1281
  %767 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %768 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %767, %struct.file_buff_tag* %768, i8 zeroext 62)
  %769 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_c(%struct.file_buff_tag* %769, %struct.file_buff_tag* null, i8 zeroext 62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.1281, %sw.bb.1291, %sw.bb.1290, %sw.bb.1289, %sw.bb.1288, %sw.bb.1287, %sw.bb.1285
  br label %if.end.1296

if.else.1292:                                     ; preds = %if.then.1272
  %770 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %771 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %772 = load i32, i32* %value, align 4
  %conv1293 = trunc i32 %772 to i8
  call void @html_output_c(%struct.file_buff_tag* %770, %struct.file_buff_tag* %771, i8 zeroext %conv1293)
  %773 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %774 = load i32, i32* %value, align 4
  %call1294 = call i32 @tolower(i32 %774) #3
  %conv1295 = trunc i32 %call1294 to i8
  call void @html_output_c(%struct.file_buff_tag* %773, %struct.file_buff_tag* null, i8 zeroext %conv1295)
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.else.1292, %sw.epilog
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.end.1296, %if.end.1268
  %775 = load i32, i32* %table_pos, align 4
  %add1298 = add nsw i32 %775, 1
  %rem = srem i32 %add1298, 64
  store i32 %rem, i32* %table_pos, align 4
  %776 = load i8*, i8** %ptr, align 8
  %incdec.ptr1299 = getelementptr inbounds i8, i8* %776, i32 1
  store i8* %incdec.ptr1299, i8** %ptr, align 8
  %777 = load i64, i64* %length, align 8
  %dec1300 = add i64 %777, -1
  store i64 %dec1300, i64* %length, align 8
  br label %sw.epilog.1578

sw.bb.1301:                                       ; preds = %if.end.131
  %778 = load i8*, i8** %ptr, align 8
  %779 = load i8, i8* %778, align 1
  %conv1302 = zext i8 %779 to i32
  %cmp1303 = icmp eq i32 %conv1302, 39
  br i1 %cmp1303, label %if.then.1305, label %if.else.1322

if.then.1305:                                     ; preds = %sw.bb.1301
  %780 = load i32, i32* %escape, align 4
  %tobool1306 = icmp ne i32 %780, 0
  br i1 %tobool1306, label %if.else.1312, label %land.lhs.true.1307

land.lhs.true.1307:                               ; preds = %if.then.1305
  %781 = load i32, i32* %quoted, align 4
  %cmp1308 = icmp eq i32 %781, 0
  br i1 %cmp1308, label %if.then.1310, label %if.else.1312

if.then.1310:                                     ; preds = %land.lhs.true.1307
  %782 = load i8*, i8** %ptr, align 8
  %incdec.ptr1311 = getelementptr inbounds i8, i8* %782, i32 1
  store i8* %incdec.ptr1311, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.1321

if.else.1312:                                     ; preds = %land.lhs.true.1307, %if.then.1305
  %783 = load i32, i32* %tag_val_length, align 4
  %cmp1313 = icmp slt i32 %783, 1024
  br i1 %cmp1313, label %if.then.1315, label %if.end.1319

if.then.1315:                                     ; preds = %if.else.1312
  %784 = load i32, i32* %tag_val_length, align 4
  %inc1316 = add nsw i32 %784, 1
  store i32 %inc1316, i32* %tag_val_length, align 4
  %idxprom1317 = sext i32 %784 to i64
  %arrayidx1318 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1317
  store i8 34, i8* %arrayidx1318, align 1
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.then.1315, %if.else.1312
  %785 = load i8*, i8** %ptr, align 8
  %incdec.ptr1320 = getelementptr inbounds i8, i8* %785, i32 1
  store i8* %incdec.ptr1320, i8** %ptr, align 8
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.end.1319, %if.then.1310
  br label %if.end.1405

if.else.1322:                                     ; preds = %sw.bb.1301
  %786 = load i8*, i8** %ptr, align 8
  %787 = load i8, i8* %786, align 1
  %conv1323 = zext i8 %787 to i32
  %cmp1324 = icmp eq i32 %conv1323, 34
  br i1 %cmp1324, label %if.then.1326, label %if.else.1343

if.then.1326:                                     ; preds = %if.else.1322
  %788 = load i32, i32* %escape, align 4
  %tobool1327 = icmp ne i32 %788, 0
  br i1 %tobool1327, label %if.else.1333, label %land.lhs.true.1328

land.lhs.true.1328:                               ; preds = %if.then.1326
  %789 = load i32, i32* %quoted, align 4
  %cmp1329 = icmp eq i32 %789, 1
  br i1 %cmp1329, label %if.then.1331, label %if.else.1333

if.then.1331:                                     ; preds = %land.lhs.true.1328
  %790 = load i8*, i8** %ptr, align 8
  %incdec.ptr1332 = getelementptr inbounds i8, i8* %790, i32 1
  store i8* %incdec.ptr1332, i8** %ptr, align 8
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.1342

if.else.1333:                                     ; preds = %land.lhs.true.1328, %if.then.1326
  %791 = load i32, i32* %tag_val_length, align 4
  %cmp1334 = icmp slt i32 %791, 1024
  br i1 %cmp1334, label %if.then.1336, label %if.end.1340

if.then.1336:                                     ; preds = %if.else.1333
  %792 = load i32, i32* %tag_val_length, align 4
  %inc1337 = add nsw i32 %792, 1
  store i32 %inc1337, i32* %tag_val_length, align 4
  %idxprom1338 = sext i32 %792 to i64
  %arrayidx1339 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1338
  store i8 34, i8* %arrayidx1339, align 1
  br label %if.end.1340

if.end.1340:                                      ; preds = %if.then.1336, %if.else.1333
  %793 = load i8*, i8** %ptr, align 8
  %incdec.ptr1341 = getelementptr inbounds i8, i8* %793, i32 1
  store i8* %incdec.ptr1341, i8** %ptr, align 8
  br label %if.end.1342

if.end.1342:                                      ; preds = %if.end.1340, %if.then.1331
  br label %if.end.1404

if.else.1343:                                     ; preds = %if.else.1322
  %794 = load i8*, i8** %ptr, align 8
  %795 = load i8, i8* %794, align 1
  %conv1344 = zext i8 %795 to i32
  %idxprom1345 = sext i32 %conv1344 to i64
  %call1346 = call i16** @__ctype_b_loc() #7
  %796 = load i16*, i16** %call1346, align 8
  %arrayidx1347 = getelementptr inbounds i16, i16* %796, i64 %idxprom1345
  %797 = load i16, i16* %arrayidx1347, align 2
  %conv1348 = zext i16 %797 to i32
  %and1349 = and i32 %conv1348, 8192
  %tobool1350 = icmp ne i32 %and1349, 0
  br i1 %tobool1350, label %if.then.1355, label %lor.lhs.false.1351

lor.lhs.false.1351:                               ; preds = %if.else.1343
  %798 = load i8*, i8** %ptr, align 8
  %799 = load i8, i8* %798, align 1
  %conv1352 = zext i8 %799 to i32
  %cmp1353 = icmp eq i32 %conv1352, 62
  br i1 %cmp1353, label %if.then.1355, label %if.else.1382

if.then.1355:                                     ; preds = %lor.lhs.false.1351, %if.else.1343
  %800 = load i32, i32* %quoted, align 4
  %cmp1356 = icmp eq i32 %800, 2
  br i1 %cmp1356, label %if.then.1358, label %if.else.1359

if.then.1358:                                     ; preds = %if.then.1355
  store i32 5, i32* %state, align 4
  store i32 0, i32* %tag_arg_length, align 4
  store i32 8, i32* %next_state, align 4
  br label %if.end.1381

if.else.1359:                                     ; preds = %if.then.1355
  %801 = load i32, i32* %tag_val_length, align 4
  %cmp1360 = icmp slt i32 %801, 1024
  br i1 %cmp1360, label %if.then.1362, label %if.end.1379

if.then.1362:                                     ; preds = %if.else.1359
  %802 = load i8*, i8** %ptr, align 8
  %803 = load i8, i8* %802, align 1
  %conv1363 = zext i8 %803 to i32
  %idxprom1364 = sext i32 %conv1363 to i64
  %call1365 = call i16** @__ctype_b_loc() #7
  %804 = load i16*, i16** %call1365, align 8
  %arrayidx1366 = getelementptr inbounds i16, i16* %804, i64 %idxprom1364
  %805 = load i16, i16* %arrayidx1366, align 2
  %conv1367 = zext i16 %805 to i32
  %and1368 = and i32 %conv1367, 8192
  %tobool1369 = icmp ne i32 %and1368, 0
  br i1 %tobool1369, label %if.then.1370, label %if.else.1374

if.then.1370:                                     ; preds = %if.then.1362
  %806 = load i32, i32* %tag_val_length, align 4
  %inc1371 = add nsw i32 %806, 1
  store i32 %inc1371, i32* %tag_val_length, align 4
  %idxprom1372 = sext i32 %806 to i64
  %arrayidx1373 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1372
  store i8 32, i8* %arrayidx1373, align 1
  br label %if.end.1378

if.else.1374:                                     ; preds = %if.then.1362
  %807 = load i32, i32* %tag_val_length, align 4
  %inc1375 = add nsw i32 %807, 1
  store i32 %inc1375, i32* %tag_val_length, align 4
  %idxprom1376 = sext i32 %807 to i64
  %arrayidx1377 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1376
  store i8 62, i8* %arrayidx1377, align 1
  br label %if.end.1378

if.end.1378:                                      ; preds = %if.else.1374, %if.then.1370
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.end.1378, %if.else.1359
  store i32 5, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 2, i32* %quoted, align 4
  store i32 18, i32* %next_state, align 4
  %808 = load i8*, i8** %ptr, align 8
  %incdec.ptr1380 = getelementptr inbounds i8, i8* %808, i32 1
  store i8* %incdec.ptr1380, i8** %ptr, align 8
  br label %if.end.1381

if.end.1381:                                      ; preds = %if.end.1379, %if.then.1358
  br label %if.end.1403

if.else.1382:                                     ; preds = %lor.lhs.false.1351
  %809 = load i8*, i8** %ptr, align 8
  %810 = load i8, i8* %809, align 1
  %conv1383 = zext i8 %810 to i32
  %cmp1384 = icmp eq i32 %conv1383, 44
  br i1 %cmp1384, label %if.then.1386, label %if.else.1390

if.then.1386:                                     ; preds = %if.else.1382
  %811 = load i32, i32* %tag_val_length, align 4
  %idxprom1387 = sext i32 %811 to i64
  %arrayidx1388 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1387
  store i8 0, i8* %arrayidx1388, align 1
  store i32 19, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 0, i32* %next_state, align 4
  %812 = load i8*, i8** %ptr, align 8
  %incdec.ptr1389 = getelementptr inbounds i8, i8* %812, i32 1
  store i8* %incdec.ptr1389, i8** %ptr, align 8
  br label %if.end.1402

if.else.1390:                                     ; preds = %if.else.1382
  %813 = load i32, i32* %tag_val_length, align 4
  %cmp1391 = icmp slt i32 %813, 1024
  br i1 %cmp1391, label %if.then.1393, label %if.end.1400

if.then.1393:                                     ; preds = %if.else.1390
  %814 = load i8*, i8** %ptr, align 8
  %815 = load i8, i8* %814, align 1
  %conv1394 = zext i8 %815 to i32
  %call1395 = call i32 @tolower(i32 %conv1394) #3
  %conv1396 = trunc i32 %call1395 to i8
  %816 = load i32, i32* %tag_val_length, align 4
  %inc1397 = add nsw i32 %816, 1
  store i32 %inc1397, i32* %tag_val_length, align 4
  %idxprom1398 = sext i32 %816 to i64
  %arrayidx1399 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i64 %idxprom1398
  store i8 %conv1396, i8* %arrayidx1399, align 1
  br label %if.end.1400

if.end.1400:                                      ; preds = %if.then.1393, %if.else.1390
  %817 = load i8*, i8** %ptr, align 8
  %incdec.ptr1401 = getelementptr inbounds i8, i8* %817, i32 1
  store i8* %incdec.ptr1401, i8** %ptr, align 8
  br label %if.end.1402

if.end.1402:                                      ; preds = %if.end.1400, %if.then.1386
  br label %if.end.1403

if.end.1403:                                      ; preds = %if.end.1402, %if.end.1381
  br label %if.end.1404

if.end.1404:                                      ; preds = %if.end.1403, %if.end.1342
  br label %if.end.1405

if.end.1405:                                      ; preds = %if.end.1404, %if.end.1321
  %818 = load i8*, i8** %ptr, align 8
  %819 = load i8, i8* %818, align 1
  %conv1406 = zext i8 %819 to i32
  %cmp1407 = icmp eq i32 %conv1406, 92
  br i1 %cmp1407, label %if.then.1409, label %if.else.1410

if.then.1409:                                     ; preds = %if.end.1405
  store i32 1, i32* %escape, align 4
  br label %if.end.1411

if.else.1410:                                     ; preds = %if.end.1405
  store i32 0, i32* %escape, align 4
  br label %if.end.1411

if.end.1411:                                      ; preds = %if.else.1410, %if.then.1409
  br label %sw.epilog.1578

sw.bb.1412:                                       ; preds = %if.end.131
  %820 = load i8*, i8** %dirname.addr, align 8
  %tobool1413 = icmp ne i8* %820, null
  br i1 %tobool1413, label %if.then.1414, label %if.else.1447

if.then.1414:                                     ; preds = %sw.bb.1412
  %call1415 = call i8* @cli_malloc(i64 8200)
  %821 = bitcast i8* %call1415 to %struct.file_buff_tag*
  store %struct.file_buff_tag* %821, %struct.file_buff_tag** %file_tmp_o1, align 8
  %822 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %tobool1416 = icmp ne %struct.file_buff_tag* %822, null
  br i1 %tobool1416, label %if.end.1418, label %if.then.1417

if.then.1417:                                     ; preds = %if.then.1414
  br label %abort

if.end.1418:                                      ; preds = %if.then.1414
  %arraydecay1419 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %823 = load i8*, i8** %dirname.addr, align 8
  %call1420 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay1419, i64 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %823) #3
  %arraydecay1421 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call1422 = call i8* @cli_gentemp(i8* %arraydecay1421)
  store i8* %call1422, i8** %tmp_file, align 8
  %824 = load i8*, i8** %tmp_file, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* %824)
  %825 = load i8*, i8** %tmp_file, align 8
  %call1423 = call i32 (i8*, i32, ...) @open(i8* %825, i32 577, i32 384)
  %826 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %fd1424 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %826, i32 0, i32 0
  store i32 %call1423, i32* %fd1424, align 4
  %827 = load i8*, i8** %tmp_file, align 8
  call void @free(i8* %827) #3
  %828 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %fd1425 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %828, i32 0, i32 0
  %829 = load i32, i32* %fd1425, align 4
  %tobool1426 = icmp ne i32 %829, 0
  br i1 %tobool1426, label %if.end.1429, label %if.then.1427

if.then.1427:                                     ; preds = %if.end.1418
  %arraydecay1428 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay1428)
  %830 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %831 = bitcast %struct.file_buff_tag* %830 to i8*
  call void @free(i8* %831) #3
  br label %abort

if.end.1429:                                      ; preds = %if.end.1418
  %832 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %length1430 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %832, i32 0, i32 2
  store i32 0, i32* %length1430, align 4
  %833 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_str(%struct.file_buff_tag* %833, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i32 20)
  %834 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_str(%struct.file_buff_tag* %834, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 14)
  %835 = load i32, i32* %tag_val_length, align 4
  %cmp1431 = icmp eq i32 %835, 0
  br i1 %cmp1431, label %land.lhs.true.1433, label %if.end.1439

land.lhs.true.1433:                               ; preds = %if.end.1429
  %arraydecay1434 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  %836 = load i8, i8* %arraydecay1434, align 1
  %conv1435 = sext i8 %836 to i32
  %cmp1436 = icmp eq i32 %conv1435, 59
  br i1 %cmp1436, label %if.then.1438, label %if.end.1439

if.then.1438:                                     ; preds = %land.lhs.true.1433
  %837 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_str(%struct.file_buff_tag* %837, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 11)
  br label %if.end.1439

if.end.1439:                                      ; preds = %if.then.1438, %land.lhs.true.1433, %if.end.1429
  %838 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %arraydecay1440 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  %839 = load i32, i32* %tag_val_length, align 4
  call void @html_output_str(%struct.file_buff_tag* %838, i8* %arraydecay1440, i32 %839)
  %840 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_c(%struct.file_buff_tag* %840, %struct.file_buff_tag* null, i8 zeroext 10)
  %arraydecay1441 = getelementptr inbounds [1025 x i8], [1025 x i8]* %tag_val, i32 0, i32 0
  %call1442 = call i8* @strstr(i8* %arraydecay1441, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #8
  %cmp1443 = icmp ne i8* %call1442, null
  br i1 %cmp1443, label %if.then.1445, label %if.end.1446

if.then.1445:                                     ; preds = %if.end.1439
  %841 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_str(%struct.file_buff_tag* %841, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0), i32 34)
  br label %if.end.1446

if.end.1446:                                      ; preds = %if.then.1445, %if.end.1439
  %842 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_c(%struct.file_buff_tag* %842, %struct.file_buff_tag* null, i8 zeroext 10)
  br label %if.end.1448

if.else.1447:                                     ; preds = %sw.bb.1412
  store %struct.file_buff_tag* null, %struct.file_buff_tag** %file_tmp_o1, align 8
  br label %if.end.1448

if.end.1448:                                      ; preds = %if.else.1447, %if.end.1446
  store i32 20, i32* %state, align 4
  store i32 1, i32* %binary, align 4
  br label %sw.epilog.1578

sw.bb.1449:                                       ; preds = %if.end.131
  %843 = load i8*, i8** %ptr, align 8
  %844 = load i8, i8* %843, align 1
  %conv1450 = zext i8 %844 to i32
  %cmp1451 = icmp eq i32 %conv1450, 38
  br i1 %cmp1451, label %if.then.1453, label %if.else.1455

if.then.1453:                                     ; preds = %sw.bb.1449
  store i32 3, i32* %state, align 4
  store i32 20, i32* %next_state, align 4
  %845 = load i8*, i8** %ptr, align 8
  %incdec.ptr1454 = getelementptr inbounds i8, i8* %845, i32 1
  store i8* %incdec.ptr1454, i8** %ptr, align 8
  br label %if.end.1515

if.else.1455:                                     ; preds = %sw.bb.1449
  %846 = load i8*, i8** %ptr, align 8
  %847 = load i8, i8* %846, align 1
  %conv1456 = zext i8 %847 to i32
  %cmp1457 = icmp eq i32 %conv1456, 37
  br i1 %cmp1457, label %if.then.1459, label %if.else.1461

if.then.1459:                                     ; preds = %if.else.1455
  store i64 0, i64* %length, align 8
  store i32 0, i32* %value, align 4
  store i32 23, i32* %state, align 4
  store i32 22, i32* %next_state, align 4
  %848 = load i8*, i8** %ptr, align 8
  %incdec.ptr1460 = getelementptr inbounds i8, i8* %848, i32 1
  store i8* %incdec.ptr1460, i8** %ptr, align 8
  br label %if.end.1514

if.else.1461:                                     ; preds = %if.else.1455
  %849 = load i8*, i8** %ptr, align 8
  %850 = load i8, i8* %849, align 1
  %conv1462 = zext i8 %850 to i32
  %cmp1463 = icmp eq i32 %conv1462, 39
  br i1 %cmp1463, label %if.then.1465, label %if.else.1475

if.then.1465:                                     ; preds = %if.else.1461
  %851 = load i32, i32* %escape, align 4
  %tobool1466 = icmp ne i32 %851, 0
  br i1 %tobool1466, label %if.else.1472, label %land.lhs.true.1467

land.lhs.true.1467:                               ; preds = %if.then.1465
  %852 = load i32, i32* %quoted, align 4
  %cmp1468 = icmp eq i32 %852, 0
  br i1 %cmp1468, label %if.then.1470, label %if.else.1472

if.then.1470:                                     ; preds = %land.lhs.true.1467
  store i32 21, i32* %state, align 4
  %853 = load i8*, i8** %ptr, align 8
  %incdec.ptr1471 = getelementptr inbounds i8, i8* %853, i32 1
  store i8* %incdec.ptr1471, i8** %ptr, align 8
  br label %if.end.1474

if.else.1472:                                     ; preds = %land.lhs.true.1467, %if.then.1465
  %854 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %855 = load i8*, i8** %ptr, align 8
  %856 = load i8, i8* %855, align 1
  call void @html_output_c(%struct.file_buff_tag* %854, %struct.file_buff_tag* null, i8 zeroext %856)
  %857 = load i8*, i8** %ptr, align 8
  %incdec.ptr1473 = getelementptr inbounds i8, i8* %857, i32 1
  store i8* %incdec.ptr1473, i8** %ptr, align 8
  br label %if.end.1474

if.end.1474:                                      ; preds = %if.else.1472, %if.then.1470
  br label %if.end.1513

if.else.1475:                                     ; preds = %if.else.1461
  %858 = load i8*, i8** %ptr, align 8
  %859 = load i8, i8* %858, align 1
  %conv1476 = zext i8 %859 to i32
  %cmp1477 = icmp eq i32 %conv1476, 34
  br i1 %cmp1477, label %if.then.1479, label %if.else.1489

if.then.1479:                                     ; preds = %if.else.1475
  %860 = load i32, i32* %escape, align 4
  %tobool1480 = icmp ne i32 %860, 0
  br i1 %tobool1480, label %if.else.1486, label %land.lhs.true.1481

land.lhs.true.1481:                               ; preds = %if.then.1479
  %861 = load i32, i32* %quoted, align 4
  %cmp1482 = icmp eq i32 %861, 1
  br i1 %cmp1482, label %if.then.1484, label %if.else.1486

if.then.1484:                                     ; preds = %land.lhs.true.1481
  store i32 21, i32* %state, align 4
  %862 = load i8*, i8** %ptr, align 8
  %incdec.ptr1485 = getelementptr inbounds i8, i8* %862, i32 1
  store i8* %incdec.ptr1485, i8** %ptr, align 8
  br label %if.end.1488

if.else.1486:                                     ; preds = %land.lhs.true.1481, %if.then.1479
  %863 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %864 = load i8*, i8** %ptr, align 8
  %865 = load i8, i8* %864, align 1
  call void @html_output_c(%struct.file_buff_tag* %863, %struct.file_buff_tag* null, i8 zeroext %865)
  %866 = load i8*, i8** %ptr, align 8
  %incdec.ptr1487 = getelementptr inbounds i8, i8* %866, i32 1
  store i8* %incdec.ptr1487, i8** %ptr, align 8
  br label %if.end.1488

if.end.1488:                                      ; preds = %if.else.1486, %if.then.1484
  br label %if.end.1512

if.else.1489:                                     ; preds = %if.else.1475
  %867 = load i8*, i8** %ptr, align 8
  %868 = load i8, i8* %867, align 1
  %conv1490 = zext i8 %868 to i32
  %idxprom1491 = sext i32 %conv1490 to i64
  %call1492 = call i16** @__ctype_b_loc() #7
  %869 = load i16*, i16** %call1492, align 8
  %arrayidx1493 = getelementptr inbounds i16, i16* %869, i64 %idxprom1491
  %870 = load i16, i16* %arrayidx1493, align 2
  %conv1494 = zext i16 %870 to i32
  %and1495 = and i32 %conv1494, 8192
  %tobool1496 = icmp ne i32 %and1495, 0
  br i1 %tobool1496, label %if.then.1501, label %lor.lhs.false.1497

lor.lhs.false.1497:                               ; preds = %if.else.1489
  %871 = load i8*, i8** %ptr, align 8
  %872 = load i8, i8* %871, align 1
  %conv1498 = zext i8 %872 to i32
  %cmp1499 = icmp eq i32 %conv1498, 62
  br i1 %cmp1499, label %if.then.1501, label %if.else.1509

if.then.1501:                                     ; preds = %lor.lhs.false.1497, %if.else.1489
  %873 = load i32, i32* %quoted, align 4
  %cmp1502 = icmp eq i32 %873, 2
  br i1 %cmp1502, label %if.then.1504, label %if.else.1506

if.then.1504:                                     ; preds = %if.then.1501
  store i32 21, i32* %state, align 4
  %874 = load i8*, i8** %ptr, align 8
  %incdec.ptr1505 = getelementptr inbounds i8, i8* %874, i32 1
  store i8* %incdec.ptr1505, i8** %ptr, align 8
  br label %if.end.1508

if.else.1506:                                     ; preds = %if.then.1501
  %875 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %876 = load i8*, i8** %ptr, align 8
  %877 = load i8, i8* %876, align 1
  call void @html_output_c(%struct.file_buff_tag* %875, %struct.file_buff_tag* null, i8 zeroext %877)
  %878 = load i8*, i8** %ptr, align 8
  %incdec.ptr1507 = getelementptr inbounds i8, i8* %878, i32 1
  store i8* %incdec.ptr1507, i8** %ptr, align 8
  br label %if.end.1508

if.end.1508:                                      ; preds = %if.else.1506, %if.then.1504
  br label %if.end.1511

if.else.1509:                                     ; preds = %lor.lhs.false.1497
  %879 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %880 = load i8*, i8** %ptr, align 8
  %881 = load i8, i8* %880, align 1
  call void @html_output_c(%struct.file_buff_tag* %879, %struct.file_buff_tag* null, i8 zeroext %881)
  %882 = load i8*, i8** %ptr, align 8
  %incdec.ptr1510 = getelementptr inbounds i8, i8* %882, i32 1
  store i8* %incdec.ptr1510, i8** %ptr, align 8
  br label %if.end.1511

if.end.1511:                                      ; preds = %if.else.1509, %if.end.1508
  br label %if.end.1512

if.end.1512:                                      ; preds = %if.end.1511, %if.end.1488
  br label %if.end.1513

if.end.1513:                                      ; preds = %if.end.1512, %if.end.1474
  br label %if.end.1514

if.end.1514:                                      ; preds = %if.end.1513, %if.then.1459
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.end.1514, %if.then.1453
  %883 = load i8*, i8** %ptr, align 8
  %884 = load i8, i8* %883, align 1
  %conv1516 = zext i8 %884 to i32
  %cmp1517 = icmp eq i32 %conv1516, 92
  br i1 %cmp1517, label %if.then.1519, label %if.else.1520

if.then.1519:                                     ; preds = %if.end.1515
  store i32 1, i32* %escape, align 4
  br label %if.end.1521

if.else.1520:                                     ; preds = %if.end.1515
  store i32 0, i32* %escape, align 4
  br label %if.end.1521

if.end.1521:                                      ; preds = %if.else.1520, %if.then.1519
  br label %sw.epilog.1578

sw.bb.1522:                                       ; preds = %if.end.131
  %885 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %tobool1523 = icmp ne %struct.file_buff_tag* %885, null
  br i1 %tobool1523, label %if.then.1524, label %if.end.1527

if.then.1524:                                     ; preds = %sw.bb.1522
  %886 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_flush(%struct.file_buff_tag* %886)
  %887 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %fd1525 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %887, i32 0, i32 0
  %888 = load i32, i32* %fd1525, align 4
  %call1526 = call i32 @close(i32 %888)
  %889 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %890 = bitcast %struct.file_buff_tag* %889 to i8*
  call void @free(i8* %890) #3
  br label %if.end.1527

if.end.1527:                                      ; preds = %if.then.1524, %sw.bb.1522
  store i32 5, i32* %state, align 4
  store i32 0, i32* %escape, align 4
  store i32 2, i32* %quoted, align 4
  store i32 8, i32* %next_state, align 4
  store i32 0, i32* %binary, align 4
  br label %sw.epilog.1578

sw.bb.1528:                                       ; preds = %if.end.131
  %891 = load i64, i64* %length, align 8
  %cmp1529 = icmp eq i64 %891, 2
  br i1 %cmp1529, label %if.then.1531, label %if.else.1533

if.then.1531:                                     ; preds = %sw.bb.1528
  %892 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %893 = load i32, i32* %value, align 4
  %conv1532 = trunc i32 %893 to i8
  call void @html_output_c(%struct.file_buff_tag* %892, %struct.file_buff_tag* null, i8 zeroext %conv1532)
  br label %if.end.1541

if.else.1533:                                     ; preds = %sw.bb.1528
  %894 = load i64, i64* %length, align 8
  %cmp1534 = icmp eq i64 %894, 1
  br i1 %cmp1534, label %if.then.1536, label %if.else.1539

if.then.1536:                                     ; preds = %if.else.1533
  %895 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_c(%struct.file_buff_tag* %895, %struct.file_buff_tag* null, i8 zeroext 37)
  %896 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  %897 = load i32, i32* %value, align 4
  %add1537 = add nsw i32 %897, 48
  %conv1538 = trunc i32 %add1537 to i8
  call void @html_output_c(%struct.file_buff_tag* %896, %struct.file_buff_tag* null, i8 zeroext %conv1538)
  br label %if.end.1540

if.else.1539:                                     ; preds = %if.else.1533
  %898 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_tmp_o1, align 8
  call void @html_output_c(%struct.file_buff_tag* %898, %struct.file_buff_tag* null, i8 zeroext 37)
  br label %if.end.1540

if.end.1540:                                      ; preds = %if.else.1539, %if.then.1536
  br label %if.end.1541

if.end.1541:                                      ; preds = %if.end.1540, %if.then.1531
  store i32 20, i32* %state, align 4
  br label %sw.epilog.1578

sw.bb.1542:                                       ; preds = %if.end.131
  %899 = load i32, i32* %value, align 4
  %mul1543 = mul nsw i32 %899, 16
  store i32 %mul1543, i32* %value, align 4
  %900 = load i64, i64* %length, align 8
  %inc1544 = add i64 %900, 1
  store i64 %inc1544, i64* %length, align 8
  %901 = load i8*, i8** %ptr, align 8
  %902 = load i8, i8* %901, align 1
  %conv1545 = zext i8 %902 to i32
  %idxprom1546 = sext i32 %conv1545 to i64
  %call1547 = call i16** @__ctype_b_loc() #7
  %903 = load i16*, i16** %call1547, align 8
  %arrayidx1548 = getelementptr inbounds i16, i16* %903, i64 %idxprom1546
  %904 = load i16, i16* %arrayidx1548, align 2
  %conv1549 = zext i16 %904 to i32
  %and1550 = and i32 %conv1549, 4096
  %tobool1551 = icmp ne i32 %and1550, 0
  br i1 %tobool1551, label %if.then.1552, label %if.else.1571

if.then.1552:                                     ; preds = %sw.bb.1542
  %905 = load i8*, i8** %ptr, align 8
  %906 = load i8, i8* %905, align 1
  %conv1553 = zext i8 %906 to i32
  %idxprom1554 = sext i32 %conv1553 to i64
  %call1555 = call i16** @__ctype_b_loc() #7
  %907 = load i16*, i16** %call1555, align 8
  %arrayidx1556 = getelementptr inbounds i16, i16* %907, i64 %idxprom1554
  %908 = load i16, i16* %arrayidx1556, align 2
  %conv1557 = zext i16 %908 to i32
  %and1558 = and i32 %conv1557, 2048
  %tobool1559 = icmp ne i32 %and1558, 0
  br i1 %tobool1559, label %if.then.1560, label %if.else.1564

if.then.1560:                                     ; preds = %if.then.1552
  %909 = load i8*, i8** %ptr, align 8
  %910 = load i8, i8* %909, align 1
  %conv1561 = zext i8 %910 to i32
  %sub1562 = sub nsw i32 %conv1561, 48
  %911 = load i32, i32* %value, align 4
  %add1563 = add nsw i32 %911, %sub1562
  store i32 %add1563, i32* %value, align 4
  br label %if.end.1570

if.else.1564:                                     ; preds = %if.then.1552
  %912 = load i8*, i8** %ptr, align 8
  %913 = load i8, i8* %912, align 1
  %conv1565 = zext i8 %913 to i32
  %call1566 = call i32 @tolower(i32 %conv1565) #3
  %sub1567 = sub nsw i32 %call1566, 97
  %add1568 = add nsw i32 %sub1567, 10
  %914 = load i32, i32* %value, align 4
  %add1569 = add nsw i32 %914, %add1568
  store i32 %add1569, i32* %value, align 4
  br label %if.end.1570

if.end.1570:                                      ; preds = %if.else.1564, %if.then.1560
  br label %if.end.1572

if.else.1571:                                     ; preds = %sw.bb.1542
  %915 = load i32, i32* %next_state, align 4
  store i32 %915, i32* %state, align 4
  br label %if.end.1572

if.end.1572:                                      ; preds = %if.else.1571, %if.end.1570
  %916 = load i64, i64* %length, align 8
  %cmp1573 = icmp eq i64 %916, 2
  br i1 %cmp1573, label %if.then.1575, label %if.end.1576

if.then.1575:                                     ; preds = %if.end.1572
  %917 = load i32, i32* %next_state, align 4
  store i32 %917, i32* %state, align 4
  br label %if.end.1576

if.end.1576:                                      ; preds = %if.then.1575, %if.end.1572
  %918 = load i8*, i8** %ptr, align 8
  %incdec.ptr1577 = getelementptr inbounds i8, i8* %918, i32 1
  store i8* %incdec.ptr1577, i8** %ptr, align 8
  br label %sw.epilog.1578

sw.epilog.1578:                                   ; preds = %if.end.131, %if.end.1576, %if.end.1541, %if.end.1527, %if.end.1521, %if.end.1448, %if.end.1411, %if.end.1297, %if.then.1267, %if.end.1212, %if.then.1211, %if.end.1206, %if.end.1191, %if.end.1088, %if.end.947, %if.end.925, %if.end.584, %if.end.569, %if.end.345, %if.end.330, %if.end.275, %if.end.209, %if.end.161, %if.end.149, %if.end.137, %sw.bb
  br label %while.cond.114

while.end.1579:                                   ; preds = %while.cond.114
  %919 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tobool1580 = icmp ne %struct.tag_arguments_tag* %919, null
  br i1 %tobool1580, label %land.lhs.true.1581, label %if.end.1589

land.lhs.true.1581:                               ; preds = %while.end.1579
  %920 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %scanContents1582 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %920, i32 0, i32 1
  %921 = load i32, i32* %scanContents1582, align 4
  %tobool1583 = icmp ne i32 %921, 0
  br i1 %tobool1583, label %land.lhs.true.1584, label %if.end.1589

land.lhs.true.1584:                               ; preds = %land.lhs.true.1581
  %922 = load i32, i32* %in_ahref, align 4
  %tobool1585 = icmp ne i32 %922, 0
  br i1 %tobool1585, label %land.lhs.true.1586, label %if.end.1589

land.lhs.true.1586:                               ; preds = %land.lhs.true.1584
  %923 = load i8*, i8** %href_contents_begin, align 8
  %tobool1587 = icmp ne i8* %923, null
  br i1 %tobool1587, label %if.then.1588, label %if.end.1589

if.then.1588:                                     ; preds = %land.lhs.true.1586
  %924 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %925 = load i32, i32* %in_ahref, align 4
  %926 = load i8*, i8** %href_contents_begin, align 8
  %927 = load i8*, i8** %ptr, align 8
  call void @html_tag_contents_append(%struct.tag_arguments_tag* %924, i32 %925, i8* %926, i8* %927)
  br label %if.end.1589

if.end.1589:                                      ; preds = %if.then.1588, %land.lhs.true.1586, %land.lhs.true.1584, %land.lhs.true.1581, %while.end.1579
  store i8* null, i8** %ptrend, align 8
  %928 = load i8*, i8** %line, align 8
  call void @free(i8* %928) #3
  %929 = load i32, i32* %dconf_entconv, align 4
  %tobool1590 = icmp ne i32 %929, 0
  br i1 %tobool1590, label %if.then.1591, label %if.else.1593

if.then.1591:                                     ; preds = %if.end.1589
  %930 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %931 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %call1592 = call i8* @encoding_norm_readline(%struct.entity_conv* %conv, %struct._IO_FILE* %930, %struct.m_area_tag* %931, i64 8192)
  store i8* %call1592, i8** %line, align 8
  store i8* %call1592, i8** %ptr, align 8
  br label %if.end.1595

if.else.1593:                                     ; preds = %if.end.1589
  %932 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %933 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %call1594 = call i8* @cli_readline(%struct._IO_FILE* %932, %struct.m_area_tag* %933, i32 8192)
  store i8* %call1594, i8** %line, align 8
  store i8* %call1594, i8** %ptr, align 8
  br label %if.end.1595

if.end.1595:                                      ; preds = %if.else.1593, %if.then.1591
  br label %while.cond

while.end.1596:                                   ; preds = %while.cond
  %934 = load i32, i32* %dconf_entconv, align 4
  %tobool1597 = icmp ne i32 %934, 0
  br i1 %tobool1597, label %if.then.1598, label %if.end.1634

if.then.1598:                                     ; preds = %while.end.1596
  %935 = load i64, i64* %entity_val_length, align 8
  %arrayidx1601 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %935
  store i8 0, i8* %arrayidx1601, align 1
  %arraydecay1602 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i32 0
  %call1603 = call i8* @entity_norm(%struct.entity_conv* %conv, i8* %arraydecay1602)
  store i8* %call1603, i8** %normalized1600, align 8
  %936 = load i8*, i8** %normalized1600, align 8
  %tobool1604 = icmp ne i8* %936, null
  br i1 %tobool1604, label %if.then.1605, label %if.else.1618

if.then.1605:                                     ; preds = %if.then.1598
  store i64 0, i64* %i1599, align 8
  br label %for.cond.1606

for.cond.1606:                                    ; preds = %for.inc.1615, %if.then.1605
  %937 = load i64, i64* %i1599, align 8
  %938 = load i8*, i8** %normalized1600, align 8
  %call1607 = call i64 @strlen(i8* %938) #8
  %cmp1608 = icmp ult i64 %937, %call1607
  br i1 %cmp1608, label %for.body.1610, label %for.end.1617

for.body.1610:                                    ; preds = %for.cond.1606
  %939 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %940 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %941 = load i64, i64* %i1599, align 8
  %942 = load i8*, i8** %normalized1600, align 8
  %arrayidx1611 = getelementptr inbounds i8, i8* %942, i64 %941
  %943 = load i8, i8* %arrayidx1611, align 1
  %conv1612 = zext i8 %943 to i32
  %call1613 = call i32 @tolower(i32 %conv1612) #3
  %conv1614 = trunc i32 %call1613 to i8
  call void @html_output_c(%struct.file_buff_tag* %939, %struct.file_buff_tag* %940, i8 zeroext %conv1614)
  br label %for.inc.1615

for.inc.1615:                                     ; preds = %for.body.1610
  %944 = load i64, i64* %i1599, align 8
  %inc1616 = add i64 %944, 1
  store i64 %inc1616, i64* %i1599, align 8
  br label %for.cond.1606

for.end.1617:                                     ; preds = %for.cond.1606
  %945 = load i8*, i8** %normalized1600, align 8
  call void @free(i8* %945) #3
  br label %if.end.1633

if.else.1618:                                     ; preds = %if.then.1598
  %946 = load i64, i64* %entity_val_length, align 8
  %tobool1619 = icmp ne i64 %946, 0
  br i1 %tobool1619, label %if.then.1620, label %if.end.1632

if.then.1620:                                     ; preds = %if.else.1618
  %947 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %948 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_c(%struct.file_buff_tag* %947, %struct.file_buff_tag* %948, i8 zeroext 38)
  store i64 0, i64* %i1599, align 8
  br label %for.cond.1621

for.cond.1621:                                    ; preds = %for.inc.1629, %if.then.1620
  %949 = load i64, i64* %i1599, align 8
  %950 = load i64, i64* %entity_val_length, align 8
  %cmp1622 = icmp ult i64 %949, %950
  br i1 %cmp1622, label %for.body.1624, label %for.end.1631

for.body.1624:                                    ; preds = %for.cond.1621
  %951 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %952 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %953 = load i64, i64* %i1599, align 8
  %arrayidx1625 = getelementptr inbounds [1025 x i8], [1025 x i8]* %entity_val, i32 0, i64 %953
  %954 = load i8, i8* %arrayidx1625, align 1
  %conv1626 = zext i8 %954 to i32
  %call1627 = call i32 @tolower(i32 %conv1626) #3
  %conv1628 = trunc i32 %call1627 to i8
  call void @html_output_c(%struct.file_buff_tag* %951, %struct.file_buff_tag* %952, i8 zeroext %conv1628)
  br label %for.inc.1629

for.inc.1629:                                     ; preds = %for.body.1624
  %955 = load i64, i64* %i1599, align 8
  %inc1630 = add i64 %955, 1
  store i64 %inc1630, i64* %i1599, align 8
  br label %for.cond.1621

for.end.1631:                                     ; preds = %for.cond.1621
  br label %if.end.1632

if.end.1632:                                      ; preds = %for.end.1631, %if.else.1618
  br label %if.end.1633

if.end.1633:                                      ; preds = %if.end.1632, %for.end.1617
  br label %if.end.1634

if.end.1634:                                      ; preds = %if.end.1633, %while.end.1596
  store i32 1, i32* %retval1, align 4
  br label %abort

abort:                                            ; preds = %if.end.1634, %if.then.1427, %if.then.1417, %sw.bb.132, %if.then.81, %if.then.69, %if.then.59, %if.then.50, %if.then.46, %if.then.42, %if.then.38
  %956 = load i8*, i8** %in_form_action, align 8
  %tobool1635 = icmp ne i8* %956, null
  br i1 %tobool1635, label %if.then.1636, label %if.end.1637

if.then.1636:                                     ; preds = %abort
  %957 = load i8*, i8** %in_form_action, align 8
  call void @free(i8* %957) #3
  br label %if.end.1637

if.end.1637:                                      ; preds = %if.then.1636, %abort
  %958 = load i32, i32* %in_ahref, align 4
  %tobool1638 = icmp ne i32 %958, 0
  br i1 %tobool1638, label %if.then.1639, label %if.end.1640

if.then.1639:                                     ; preds = %if.end.1637
  %959 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %960 = load i32, i32* %in_ahref, align 4
  call void @html_tag_contents_done(%struct.tag_arguments_tag* %959, i32 %960)
  br label %if.end.1640

if.end.1640:                                      ; preds = %if.then.1639, %if.end.1637
  %961 = load i32, i32* %dconf_entconv, align 4
  %tobool1641 = icmp ne i32 %961, 0
  br i1 %tobool1641, label %if.then.1642, label %if.end.1644

if.then.1642:                                     ; preds = %if.end.1640
  %call1643 = call i32 @entity_norm_done(%struct.entity_conv* %conv)
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.then.1642, %if.end.1640
  call void @html_tag_arg_free(%struct.tag_arguments_tag* %tag_args)
  %962 = load %struct.m_area_tag*, %struct.m_area_tag** %m_area.addr, align 8
  %tobool1645 = icmp ne %struct.m_area_tag* %962, null
  br i1 %tobool1645, label %if.end.1648, label %if.then.1646

if.then.1646:                                     ; preds = %if.end.1644
  %963 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call1647 = call i32 @fclose(%struct._IO_FILE* %963)
  br label %if.end.1648

if.end.1648:                                      ; preds = %if.then.1646, %if.end.1644
  %964 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %tobool1649 = icmp ne %struct.file_buff_tag* %964, null
  br i1 %tobool1649, label %if.then.1650, label %if.end.1653

if.then.1650:                                     ; preds = %if.end.1648
  %965 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  call void @html_output_flush(%struct.file_buff_tag* %965)
  %966 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %fd1651 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %966, i32 0, i32 0
  %967 = load i32, i32* %fd1651, align 4
  %call1652 = call i32 @close(i32 %967)
  %968 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o1, align 8
  %969 = bitcast %struct.file_buff_tag* %968 to i8*
  call void @free(i8* %969) #3
  br label %if.end.1653

if.end.1653:                                      ; preds = %if.then.1650, %if.end.1648
  %970 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %tobool1654 = icmp ne %struct.file_buff_tag* %970, null
  br i1 %tobool1654, label %if.then.1655, label %if.end.1658

if.then.1655:                                     ; preds = %if.end.1653
  %971 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  call void @html_output_flush(%struct.file_buff_tag* %971)
  %972 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %fd1656 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %972, i32 0, i32 0
  %973 = load i32, i32* %fd1656, align 4
  %call1657 = call i32 @close(i32 %973)
  %974 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_o2, align 8
  %975 = bitcast %struct.file_buff_tag* %974 to i8*
  call void @free(i8* %975) #3
  br label %if.end.1658

if.end.1658:                                      ; preds = %if.then.1655, %if.end.1653
  %976 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %tobool1659 = icmp ne %struct.file_buff_tag* %976, null
  br i1 %tobool1659, label %if.then.1660, label %if.end.1663

if.then.1660:                                     ; preds = %if.end.1658
  %977 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  call void @html_output_flush(%struct.file_buff_tag* %977)
  %978 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %fd1661 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %978, i32 0, i32 0
  %979 = load i32, i32* %fd1661, align 4
  %call1662 = call i32 @close(i32 %979)
  %980 = load %struct.file_buff_tag*, %struct.file_buff_tag** %file_buff_script, align 8
  %981 = bitcast %struct.file_buff_tag* %980 to i8*
  call void @free(i8* %981) #3
  br label %if.end.1663

if.end.1663:                                      ; preds = %if.then.1660, %if.end.1658
  %982 = load i32, i32* %retval1, align 4
  store i32 %982, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1663, %if.then.666, %if.end.24, %if.then.13, %if.then.9, %if.then.5
  %983 = load i32, i32* %retval
  ret i32 %983
}

; Function Attrs: nounwind uwtable
define i32 @html_normalise_fd(i32 %fd, i8* %dirname, %struct.tag_arguments_tag* %hrefs, %struct.cli_dconf* %dconf) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %dconf.addr = alloca %struct.cli_dconf*, align 8
  %retval1 = alloca i32, align 4
  %m_area = alloca %struct.m_area_tag, align 8
  %statbuf = alloca %struct.stat, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  store %struct.cli_dconf* %dconf, %struct.cli_dconf** %dconf.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %statbuf) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %length = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 1
  store i64 %1, i64* %length, align 8
  %length2 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 1
  %2 = load i64, i64* %length2, align 8
  %3 = load i32, i32* %fd.addr, align 4
  %call3 = call i8* @mmap(i8* null, i64 %2, i32 1, i32 2, i32 %3, i64 0) #3
  %buffer = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 0
  store i8* %call3, i8** %buffer, align 8
  %offset = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 2
  store i64 0, i64* %offset, align 8
  %buffer4 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 0
  %4 = load i8*, i8** %buffer4, align 8
  %cmp5 = icmp eq i8* %4, inttoptr (i64 -1 to i8*)
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i8*, i8** %dirname.addr, align 8
  %7 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %8 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %call7 = call i32 @cli_html_normalise(i32 %5, %struct.m_area_tag* null, i8* %6, %struct.tag_arguments_tag* %7, %struct.cli_dconf* %8)
  store i32 %call7, i32* %retval1, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %9 = load i8*, i8** %dirname.addr, align 8
  %10 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %11 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %call8 = call i32 @cli_html_normalise(i32 -1, %struct.m_area_tag* %m_area, i8* %9, %struct.tag_arguments_tag* %10, %struct.cli_dconf* %11)
  store i32 %call8, i32* %retval1, align 4
  %buffer9 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 0
  %12 = load i8*, i8** %buffer9, align 8
  %length10 = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %m_area, i32 0, i32 1
  %13 = load i64, i64* %length10, align 8
  %call11 = call i32 @munmap(i8* %12, i64 %13) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.14

if.else.12:                                       ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %14 = load i32, i32* %fd.addr, align 4
  %15 = load i8*, i8** %dirname.addr, align 8
  %16 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %17 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf.addr, align 8
  %call13 = call i32 @cli_html_normalise(i32 %14, %struct.m_area_tag* null, i8* %15, %struct.tag_arguments_tag* %16, %struct.cli_dconf* %17)
  store i32 %call13, i32* %retval1, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.end
  %18 = load i32, i32* %retval1, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @html_screnc_decode(i32 %fd, i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %fd_tmp = alloca i32, align 4
  %table_pos = alloca i32, align 4
  %result = alloca i32, align 4
  %count = alloca i32, align 4
  %state = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %line = alloca i8*, align 8
  %tmpstr = alloca [6 x i8], align 1
  %length = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %filename = alloca [1024 x i8], align 16
  %stream_in = alloca %struct._IO_FILE*, align 8
  %file_buff = alloca %struct.file_buff_tag, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 0, i32* %table_pos, align 4
  store i32 0, i32* %retval1, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 0, i32 0) #3
  %1 = load i32, i32* %fd.addr, align 4
  %call2 = call i32 @dup(i32 %1) #3
  store i32 %call2, i32* %fd_tmp, align 4
  %2 = load i32, i32* %fd_tmp, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd_tmp, align 4
  %call3 = call %struct._IO_FILE* @fdopen(i32 %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #3
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %stream_in, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %fd_tmp, align 4
  %call5 = call i32 @close(i32 %5)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %6 = load i8*, i8** %dirname.addr, align 8
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %6) #3
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call9 = call i32 (i8*, i32, ...) @open(i8* %arraydecay8, i32 577, i32 384)
  %fd10 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %file_buff, i32 0, i32 0
  store i32 %call9, i32* %fd10, align 4
  %length11 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %file_buff, i32 0, i32 2
  store i32 0, i32* %length11, align 4
  %fd12 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %file_buff, i32 0, i32 0
  %7 = load i32, i32* %fd12, align 4
  %tobool13 = icmp ne i32 %7, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.6
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay15)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end.17
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call18 = call i8* @cli_readline(%struct._IO_FILE* %9, %struct.m_area_tag* null, i32 8192)
  store i8* %call18, i8** %line, align 8
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %line, align 8
  %call20 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #8
  store i8* %call20, i8** %ptr, align 8
  %11 = load i8*, i8** %ptr, align 8
  %tobool21 = icmp ne i8* %11, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  br label %while.end

if.end.23:                                        ; preds = %while.body
  %12 = load i8*, i8** %line, align 8
  call void @free(i8* %12) #3
  br label %while.cond

while.end:                                        ; preds = %if.then.22, %while.cond
  %13 = load i8*, i8** %line, align 8
  %tobool24 = icmp ne i8* %13, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %while.end
  br label %abort

if.end.26:                                        ; preds = %while.end
  %14 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 4
  store i8* %add.ptr, i8** %ptr, align 8
  store i32 0, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.26
  %15 = load i8*, i8** %ptr, align 8
  %16 = load i8, i8* %15, align 1
  %tobool27 = icmp ne i8 %16, 0
  br i1 %tobool27, label %if.end.33, label %if.then.28

if.then.28:                                       ; preds = %do.body
  %17 = load i8*, i8** %line, align 8
  call void @free(i8* %17) #3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call29 = call i8* @cli_readline(%struct._IO_FILE* %18, %struct.m_area_tag* null, i32 8192)
  store i8* %call29, i8** %line, align 8
  store i8* %call29, i8** %ptr, align 8
  %19 = load i8*, i8** %line, align 8
  %tobool30 = icmp ne i8* %19, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.28
  br label %abort

if.end.32:                                        ; preds = %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body
  %20 = load i8*, i8** %ptr, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i32, i32* %count, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %count, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 %idxprom
  store i8 %21, i8* %arrayidx, align 1
  %23 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  %24 = load i32, i32* %count, align 4
  %cmp34 = icmp slt i32 %24, 6
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx35 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 0
  %25 = load i8, i8* %arrayidx35, align 1
  %idxprom36 = zext i8 %25 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom36
  %26 = load i32, i32* %arrayidx37, align 4
  %shl = shl i32 %26, 2
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* %length, align 8
  %arrayidx38 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 1
  %27 = load i8, i8* %arrayidx38, align 1
  %idxprom39 = zext i8 %27 to i64
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom39
  %28 = load i32, i32* %arrayidx40, align 4
  %shr = ashr i32 %28, 4
  %conv41 = sext i32 %shr to i64
  %29 = load i64, i64* %length, align 8
  %add = add i64 %29, %conv41
  store i64 %add, i64* %length, align 8
  %arrayidx42 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 1
  %30 = load i8, i8* %arrayidx42, align 1
  %idxprom43 = zext i8 %30 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom43
  %31 = load i32, i32* %arrayidx44, align 4
  %and = and i32 %31, 15
  %shl45 = shl i32 %and, 12
  %conv46 = sext i32 %shl45 to i64
  %32 = load i64, i64* %length, align 8
  %add47 = add i64 %32, %conv46
  store i64 %add47, i64* %length, align 8
  %arrayidx48 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 2
  %33 = load i8, i8* %arrayidx48, align 1
  %idxprom49 = zext i8 %33 to i64
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom49
  %34 = load i32, i32* %arrayidx50, align 4
  %shr51 = ashr i32 %34, 2
  %shl52 = shl i32 %shr51, 8
  %conv53 = sext i32 %shl52 to i64
  %35 = load i64, i64* %length, align 8
  %add54 = add i64 %35, %conv53
  store i64 %add54, i64* %length, align 8
  %arrayidx55 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 2
  %36 = load i8, i8* %arrayidx55, align 1
  %idxprom56 = zext i8 %36 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom56
  %37 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %37, 3
  %shl59 = shl i32 %and58, 22
  %conv60 = sext i32 %shl59 to i64
  %38 = load i64, i64* %length, align 8
  %add61 = add i64 %38, %conv60
  store i64 %add61, i64* %length, align 8
  %arrayidx62 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 3
  %39 = load i8, i8* %arrayidx62, align 1
  %idxprom63 = zext i8 %39 to i64
  %arrayidx64 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom63
  %40 = load i32, i32* %arrayidx64, align 4
  %shl65 = shl i32 %40, 16
  %conv66 = sext i32 %shl65 to i64
  %41 = load i64, i64* %length, align 8
  %add67 = add i64 %41, %conv66
  store i64 %add67, i64* %length, align 8
  %arrayidx68 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 4
  %42 = load i8, i8* %arrayidx68, align 1
  %idxprom69 = zext i8 %42 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom69
  %43 = load i32, i32* %arrayidx70, align 4
  %shl71 = shl i32 %43, 2
  %shl72 = shl i32 %shl71, 24
  %conv73 = sext i32 %shl72 to i64
  %44 = load i64, i64* %length, align 8
  %add74 = add i64 %44, %conv73
  store i64 %add74, i64* %length, align 8
  %arrayidx75 = getelementptr inbounds [6 x i8], [6 x i8]* %tmpstr, i32 0, i64 5
  %45 = load i8, i8* %arrayidx75, align 1
  %idxprom76 = zext i8 %45 to i64
  %arrayidx77 = getelementptr inbounds [256 x i32], [256 x i32]* @base64_chars, i32 0, i64 %idxprom76
  %46 = load i32, i32* %arrayidx77, align 4
  %shr78 = ashr i32 %46, 4
  %shl79 = shl i32 %shr78, 24
  %conv80 = sext i32 %shl79 to i64
  %47 = load i64, i64* %length, align 8
  %add81 = add i64 %47, %conv80
  store i64 %add81, i64* %length, align 8
  store i32 2, i32* %count, align 4
  store i32 13, i32* %state, align 4
  br label %while.cond.82

while.cond.82:                                    ; preds = %if.end.141, %do.end
  %48 = load i64, i64* %length, align 8
  %tobool83 = icmp ne i64 %48, 0
  br i1 %tobool83, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.82
  %49 = load i8*, i8** %line, align 8
  %tobool84 = icmp ne i8* %49, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.82
  %50 = phi i1 [ false, %while.cond.82 ], [ %tobool84, %land.rhs ]
  br i1 %50, label %while.body.85, label %while.end.142

while.body.85:                                    ; preds = %land.end
  br label %while.cond.86

while.cond.86:                                    ; preds = %sw.epilog.136, %if.then.99, %while.body.85
  %51 = load i64, i64* %length, align 8
  %tobool87 = icmp ne i64 %51, 0
  br i1 %tobool87, label %land.rhs.88, label %land.end.91

land.rhs.88:                                      ; preds = %while.cond.86
  %52 = load i8*, i8** %ptr, align 8
  %53 = load i8, i8* %52, align 1
  %conv89 = zext i8 %53 to i32
  %tobool90 = icmp ne i32 %conv89, 0
  br label %land.end.91

land.end.91:                                      ; preds = %land.rhs.88, %while.cond.86
  %54 = phi i1 [ false, %while.cond.86 ], [ %tobool90, %land.rhs.88 ]
  br i1 %54, label %while.body.92, label %while.end.137

while.body.92:                                    ; preds = %land.end.91
  %55 = load i8*, i8** %ptr, align 8
  %56 = load i8, i8* %55, align 1
  %conv93 = zext i8 %56 to i32
  %cmp94 = icmp eq i32 %conv93, 10
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.92
  %57 = load i8*, i8** %ptr, align 8
  %58 = load i8, i8* %57, align 1
  %conv96 = zext i8 %58 to i32
  %cmp97 = icmp eq i32 %conv96, 13
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %lor.lhs.false, %while.body.92
  %59 = load i8*, i8** %ptr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr100, i8** %ptr, align 8
  br label %while.cond.86

if.end.101:                                       ; preds = %lor.lhs.false
  %60 = load i32, i32* %state, align 4
  switch i32 %60, label %sw.epilog.136 [
    i32 13, label %sw.bb
    i32 17, label %sw.bb.107
    i32 1, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %if.end.101
  %61 = load i8*, i8** %ptr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr102, i8** %ptr, align 8
  %62 = load i32, i32* %count, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %count, align 4
  %63 = load i32, i32* %count, align 4
  %cmp103 = icmp eq i32 %63, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %sw.bb
  store i32 1, i32* %state, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %sw.bb
  br label %sw.epilog.136

sw.bb.107:                                        ; preds = %if.end.101
  %64 = load i8*, i8** %ptr, align 8
  %65 = load i8, i8* %64, align 1
  %conv108 = zext i8 %65 to i32
  switch i32 %conv108, label %sw.epilog [
    i32 33, label %sw.bb.109
    i32 35, label %sw.bb.110
    i32 36, label %sw.bb.111
    i32 38, label %sw.bb.112
    i32 42, label %sw.bb.113
  ]

sw.bb.109:                                        ; preds = %sw.bb.107
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext 60)
  br label %sw.epilog

sw.bb.110:                                        ; preds = %sw.bb.107
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext 13)
  br label %sw.epilog

sw.bb.111:                                        ; preds = %sw.bb.107
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext 64)
  br label %sw.epilog

sw.bb.112:                                        ; preds = %sw.bb.107
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext 10)
  br label %sw.epilog

sw.bb.113:                                        ; preds = %sw.bb.107
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext 62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.107, %sw.bb.113, %sw.bb.112, %sw.bb.111, %sw.bb.110, %sw.bb.109
  %66 = load i8*, i8** %ptr, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr114, i8** %ptr, align 8
  %67 = load i64, i64* %length, align 8
  %dec115 = add i64 %67, -1
  store i64 %dec115, i64* %length, align 8
  store i32 1, i32* %state, align 4
  br label %sw.epilog.136

sw.bb.116:                                        ; preds = %if.end.101
  %68 = load i8*, i8** %ptr, align 8
  %69 = load i8, i8* %68, align 1
  %conv117 = zext i8 %69 to i32
  %cmp118 = icmp slt i32 %conv117, 128
  br i1 %cmp118, label %if.then.120, label %if.end.132

if.then.120:                                      ; preds = %sw.bb.116
  %70 = load i8*, i8** %ptr, align 8
  %71 = load i8, i8* %70, align 1
  %idxprom121 = zext i8 %71 to i64
  %72 = load i32, i32* %table_pos, align 4
  %idxprom122 = sext i32 %72 to i64
  %arrayidx123 = getelementptr inbounds [64 x i32], [64 x i32]* @table_order, i32 0, i64 %idxprom122
  %73 = load i32, i32* %arrayidx123, align 4
  %idxprom124 = sext i32 %73 to i64
  %arrayidx125 = getelementptr inbounds [3 x [128 x i32]], [3 x [128 x i32]]* @decrypt_tables, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx125, i32 0, i64 %idxprom121
  %74 = load i32, i32* %arrayidx126, align 4
  store i32 %74, i32* %result, align 4
  %75 = load i32, i32* %result, align 4
  %cmp127 = icmp eq i32 %75, 255
  br i1 %cmp127, label %if.then.129, label %if.else

if.then.129:                                      ; preds = %if.then.120
  store i32 17, i32* %state, align 4
  br label %if.end.131

if.else:                                          ; preds = %if.then.120
  %76 = load i32, i32* %result, align 4
  %conv130 = trunc i32 %76 to i8
  call void @html_output_c(%struct.file_buff_tag* %file_buff, %struct.file_buff_tag* null, i8 zeroext %conv130)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else, %if.then.129
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %sw.bb.116
  %77 = load i8*, i8** %ptr, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr133, i8** %ptr, align 8
  %78 = load i64, i64* %length, align 8
  %dec134 = add i64 %78, -1
  store i64 %dec134, i64* %length, align 8
  %79 = load i32, i32* %table_pos, align 4
  %add135 = add nsw i32 %79, 1
  %rem = srem i32 %add135, 64
  store i32 %rem, i32* %table_pos, align 4
  br label %sw.epilog.136

sw.epilog.136:                                    ; preds = %if.end.101, %if.end.132, %sw.epilog, %if.end.106
  br label %while.cond.86

while.end.137:                                    ; preds = %land.end.91
  %80 = load i8*, i8** %line, align 8
  call void @free(i8* %80) #3
  %81 = load i64, i64* %length, align 8
  %tobool138 = icmp ne i64 %81, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %while.end.137
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call140 = call i8* @cli_readline(%struct._IO_FILE* %82, %struct.m_area_tag* null, i32 8192)
  store i8* %call140, i8** %line, align 8
  store i8* %call140, i8** %ptr, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %while.end.137
  br label %while.cond.82

while.end.142:                                    ; preds = %land.end
  store i32 1, i32* %retval1, align 4
  br label %abort

abort:                                            ; preds = %while.end.142, %if.then.31, %if.then.25
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %stream_in, align 8
  %call143 = call i32 @fclose(%struct._IO_FILE* %83)
  call void @html_output_flush(%struct.file_buff_tag* %file_buff)
  %fd144 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %file_buff, i32 0, i32 0
  %84 = load i32, i32* %fd144, align 4
  %call145 = call i32 @close(i32 %84)
  %85 = load i32, i32* %retval1, align 4
  store i32 %85, i32* %retval
  br label %return

return:                                           ; preds = %abort, %if.then.14, %if.then.4, %if.then
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind
declare i32 @dup(i32) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @html_output_c(%struct.file_buff_tag* %fbuff1, %struct.file_buff_tag* %fbuff2, i8 zeroext %c) #0 {
entry:
  %fbuff1.addr = alloca %struct.file_buff_tag*, align 8
  %fbuff2.addr = alloca %struct.file_buff_tag*, align 8
  %c.addr = alloca i8, align 1
  store %struct.file_buff_tag* %fbuff1, %struct.file_buff_tag** %fbuff1.addr, align 8
  store %struct.file_buff_tag* %fbuff2, %struct.file_buff_tag** %fbuff2.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff1.addr, align 8
  %tobool = icmp ne %struct.file_buff_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff1.addr, align 8
  %length = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %1, i32 0, i32 2
  %2 = load i32, i32* %length, align 4
  %cmp = icmp eq i32 %2, 8192
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff1.addr, align 8
  call void @html_output_flush(%struct.file_buff_tag* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff1.addr, align 8
  %length2 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %5, i32 0, i32 2
  %6 = load i32, i32* %length2, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %length2, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff1.addr, align 8
  %buffer = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %4, i8* %arrayidx, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff2.addr, align 8
  %tobool4 = icmp ne %struct.file_buff_tag* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff2.addr, align 8
  %length6 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %9, i32 0, i32 2
  %10 = load i32, i32* %length6, align 4
  %cmp7 = icmp eq i32 %10, 8192
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %11 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff2.addr, align 8
  call void @html_output_flush(%struct.file_buff_tag* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  %12 = load i8, i8* %c.addr, align 1
  %13 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff2.addr, align 8
  %length10 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %13, i32 0, i32 2
  %14 = load i32, i32* %length10, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %length10, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff2.addr, align 8
  %buffer13 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer13, i32 0, i64 %idxprom12
  store i8 %12, i8* %arrayidx14, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.9, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @html_output_flush(%struct.file_buff_tag* %fbuff) #0 {
entry:
  %fbuff.addr = alloca %struct.file_buff_tag*, align 8
  store %struct.file_buff_tag* %fbuff, %struct.file_buff_tag** %fbuff.addr, align 8
  %0 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %tobool = icmp ne %struct.file_buff_tag* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %1, i32 0, i32 2
  %2 = load i32, i32* %length, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %fd = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %3, i32 0, i32 0
  %4 = load i32, i32* %fd, align 4
  %5 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %buffer = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length1 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %6, i32 0, i32 2
  %7 = load i32, i32* %length1, align 4
  %call = call i32 @cli_writen(i32 %4, i8* %arraydecay, i32 %7)
  %8 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length2 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %8, i32 0, i32 2
  store i32 0, i32* %length2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @init_entity_converter(%struct.entity_conv*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @encoding_norm_readline(%struct.entity_conv*, %struct._IO_FILE*, %struct.m_area_tag*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @html_tag_contents_append(%struct.tag_arguments_tag* %tags, i32 %idx, i8* %begin, i8* %end) #6 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %idx.addr = alloca i32, align 4
  %begin.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %blob_len = alloca i64, align 8
  %blob_sizeleft = alloca i64, align 8
  %str_len = alloca i64, align 8
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %begin, i8** %begin.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %begin.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %idx.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %4, i32 0, i32 4
  %5 = load %struct.blob**, %struct.blob*** %contents, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %5, i64 %idxprom
  %6 = load %struct.blob*, %struct.blob** %arrayidx, align 8
  %call = call i64 @blobGetDataSize(%struct.blob* %6)
  store i64 %call, i64* %blob_len, align 8
  %7 = load i64, i64* %blob_len, align 8
  %cmp1 = icmp ule i64 %7, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load i64, i64* %blob_len, align 8
  %sub2 = sub i64 1024, %8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub2, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %blob_sizeleft, align 8
  %9 = load i8*, i8** %end.addr, align 8
  %10 = load i8*, i8** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %str_len, align 8
  %11 = load i64, i64* %blob_sizeleft, align 8
  %tobool3 = icmp ne i64 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %12 = load i32, i32* %idx.addr, align 4
  %sub5 = sub nsw i32 %12, 1
  %idxprom6 = sext i32 %sub5 to i64
  %13 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents7 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %13, i32 0, i32 4
  %14 = load %struct.blob**, %struct.blob*** %contents7, align 8
  %arrayidx8 = getelementptr inbounds %struct.blob*, %struct.blob** %14, i64 %idxprom6
  %15 = load %struct.blob*, %struct.blob** %arrayidx8, align 8
  %16 = load i8*, i8** %begin.addr, align 8
  %17 = load i64, i64* %blob_sizeleft, align 8
  %18 = load i64, i64* %str_len, align 8
  %cmp9 = icmp ult i64 %17, %18
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.then.4
  %19 = load i64, i64* %blob_sizeleft, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.then.4
  %20 = load i64, i64* %str_len, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i64 [ %19, %cond.true.10 ], [ %20, %cond.false.11 ]
  %call14 = call i32 @blobAddData(%struct.blob* %15, i8* %16, i64 %cond13)
  br label %if.end

if.end:                                           ; preds = %cond.end.12, %cond.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define internal void @html_tag_arg_add(%struct.tag_arguments_tag* %tags, i8* %tag, i8* %value) #0 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %tag.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %0, i32 0, i32 0
  %1 = load i32, i32* %count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %count, align 4
  %2 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag1 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %2, i32 0, i32 2
  %3 = load i8**, i8*** %tag1, align 8
  %4 = bitcast i8** %3 to i8*
  %5 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count2 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %5, i32 0, i32 0
  %6 = load i32, i32* %count2, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @cli_realloc2(i8* %4, i64 %mul)
  %7 = bitcast i8* %call to i8**
  %8 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag3 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %8, i32 0, i32 2
  store i8** %7, i8*** %tag3, align 8
  %9 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag4 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %9, i32 0, i32 2
  %10 = load i8**, i8*** %tag4, align 8
  %tobool = icmp ne i8** %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %abort

if.end:                                           ; preds = %entry
  %11 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value5 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %11, i32 0, i32 3
  %12 = load i8**, i8*** %value5, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count6 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %14, i32 0, i32 0
  %15 = load i32, i32* %count6, align 4
  %conv7 = sext i32 %15 to i64
  %mul8 = mul i64 %conv7, 8
  %call9 = call i8* @cli_realloc2(i8* %13, i64 %mul8)
  %16 = bitcast i8* %call9 to i8**
  %17 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value10 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %17, i32 0, i32 3
  store i8** %16, i8*** %value10, align 8
  %18 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value11 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %18, i32 0, i32 3
  %19 = load i8**, i8*** %value11, align 8
  %tobool12 = icmp ne i8** %19, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  br label %abort

if.end.14:                                        ; preds = %if.end
  %20 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %scanContents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %20, i32 0, i32 1
  %21 = load i32, i32* %scanContents, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.end.14
  %22 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %22, i32 0, i32 4
  %23 = load %struct.blob**, %struct.blob*** %contents, align 8
  %24 = bitcast %struct.blob** %23 to i8*
  %25 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count17 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %25, i32 0, i32 0
  %26 = load i32, i32* %count17, align 4
  %conv18 = sext i32 %26 to i64
  %mul19 = mul i64 %conv18, 8
  %call20 = call i8* @cli_realloc2(i8* %24, i64 %mul19)
  %27 = bitcast i8* %call20 to %struct.blob**
  %28 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents21 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %28, i32 0, i32 4
  store %struct.blob** %27, %struct.blob*** %contents21, align 8
  %29 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents22 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %29, i32 0, i32 4
  %30 = load %struct.blob**, %struct.blob*** %contents22, align 8
  %tobool23 = icmp ne %struct.blob** %30, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.16
  br label %abort

if.end.25:                                        ; preds = %if.then.16
  %31 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count26 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %31, i32 0, i32 0
  %32 = load i32, i32* %count26, align 4
  %sub = sub nsw i32 %32, 1
  %idxprom = sext i32 %sub to i64
  %33 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents27 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %33, i32 0, i32 4
  %34 = load %struct.blob**, %struct.blob*** %contents27, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %34, i64 %idxprom
  store %struct.blob* null, %struct.blob** %arrayidx, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.25, %if.end.14
  %35 = load i8*, i8** %tag.addr, align 8
  %call29 = call i8* @cli_strdup(i8* %35)
  %36 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count30 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %36, i32 0, i32 0
  %37 = load i32, i32* %count30, align 4
  %sub31 = sub nsw i32 %37, 1
  %idxprom32 = sext i32 %sub31 to i64
  %38 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag33 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %38, i32 0, i32 2
  %39 = load i8**, i8*** %tag33, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %39, i64 %idxprom32
  store i8* %call29, i8** %arrayidx34, align 8
  %40 = load i8*, i8** %value.addr, align 8
  %tobool35 = icmp ne i8* %40, null
  br i1 %tobool35, label %if.then.36, label %if.else.68

if.then.36:                                       ; preds = %if.end.28
  %41 = load i8*, i8** %value.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv37 = zext i8 %42 to i32
  %cmp = icmp eq i32 %conv37, 34
  br i1 %cmp, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %43 = load i8*, i8** %value.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 1
  %call40 = call i8* @cli_strdup(i8* %add.ptr)
  %44 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count41 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %44, i32 0, i32 0
  %45 = load i32, i32* %count41, align 4
  %sub42 = sub nsw i32 %45, 1
  %idxprom43 = sext i32 %sub42 to i64
  %46 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value44 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %46, i32 0, i32 3
  %47 = load i8**, i8*** %value44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %47, i64 %idxprom43
  store i8* %call40, i8** %arrayidx45, align 8
  %48 = load i8*, i8** %value.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %48, i64 1
  %call47 = call i64 @strlen(i8* %add.ptr46) #8
  %conv48 = trunc i64 %call47 to i32
  store i32 %conv48, i32* %len, align 4
  %49 = load i32, i32* %len, align 4
  %cmp49 = icmp sgt i32 %49, 0
  br i1 %cmp49, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %if.then.39
  %50 = load i32, i32* %len, align 4
  %sub52 = sub nsw i32 %50, 1
  %idxprom53 = sext i32 %sub52 to i64
  %51 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count54 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %51, i32 0, i32 0
  %52 = load i32, i32* %count54, align 4
  %sub55 = sub nsw i32 %52, 1
  %idxprom56 = sext i32 %sub55 to i64
  %53 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value57 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %53, i32 0, i32 3
  %54 = load i8**, i8*** %value57, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %54, i64 %idxprom56
  %55 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %55, i64 %idxprom53
  store i8 0, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.51, %if.then.39
  br label %if.end.67

if.else:                                          ; preds = %if.then.36
  %56 = load i8*, i8** %value.addr, align 8
  %call61 = call i8* @cli_strdup(i8* %56)
  %57 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count62 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %57, i32 0, i32 0
  %58 = load i32, i32* %count62, align 4
  %sub63 = sub nsw i32 %58, 1
  %idxprom64 = sext i32 %sub63 to i64
  %59 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value65 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %59, i32 0, i32 3
  %60 = load i8**, i8*** %value65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %60, i64 %idxprom64
  store i8* %call61, i8** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.end.60
  br label %if.end.74

if.else.68:                                       ; preds = %if.end.28
  %61 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count69 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %61, i32 0, i32 0
  %62 = load i32, i32* %count69, align 4
  %sub70 = sub nsw i32 %62, 1
  %idxprom71 = sext i32 %sub70 to i64
  %63 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value72 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %63, i32 0, i32 3
  %64 = load i8**, i8*** %value72, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %64, i64 %idxprom71
  store i8* null, i8** %arrayidx73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.68, %if.end.67
  br label %return

abort:                                            ; preds = %if.then.24, %if.then.13, %if.then
  %65 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count75 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %65, i32 0, i32 0
  %66 = load i32, i32* %count75, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %count75, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %abort
  %67 = load i32, i32* %i, align 4
  %68 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count76 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %68, i32 0, i32 0
  %69 = load i32, i32* %count76, align 4
  %cmp77 = icmp slt i32 %67, %69
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag79 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %70, i32 0, i32 2
  %71 = load i8**, i8*** %tag79, align 8
  %tobool80 = icmp ne i8** %71, null
  br i1 %tobool80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %for.body
  %72 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %72 to i64
  %73 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag83 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %73, i32 0, i32 2
  %74 = load i8**, i8*** %tag83, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %74, i64 %idxprom82
  %75 = load i8*, i8** %arrayidx84, align 8
  call void @free(i8* %75) #3
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %for.body
  %76 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value86 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %76, i32 0, i32 3
  %77 = load i8**, i8*** %value86, align 8
  %tobool87 = icmp ne i8** %77, null
  br i1 %tobool87, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.end.85
  %78 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %78 to i64
  %79 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value90 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %79, i32 0, i32 3
  %80 = load i8**, i8*** %value90, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %80, i64 %idxprom89
  %81 = load i8*, i8** %arrayidx91, align 8
  call void @free(i8* %81) #3
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.end.85
  %82 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents93 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %82, i32 0, i32 4
  %83 = load %struct.blob**, %struct.blob*** %contents93, align 8
  %tobool94 = icmp ne %struct.blob** %83, null
  br i1 %tobool94, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %if.end.92
  %84 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %84 to i64
  %85 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents97 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %85, i32 0, i32 4
  %86 = load %struct.blob**, %struct.blob*** %contents97, align 8
  %arrayidx98 = getelementptr inbounds %struct.blob*, %struct.blob** %86, i64 %idxprom96
  %87 = load %struct.blob*, %struct.blob** %arrayidx98, align 8
  %tobool99 = icmp ne %struct.blob* %87, null
  br i1 %tobool99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.then.95
  %88 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %88 to i64
  %89 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents102 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %89, i32 0, i32 4
  %90 = load %struct.blob**, %struct.blob*** %contents102, align 8
  %arrayidx103 = getelementptr inbounds %struct.blob*, %struct.blob** %90, i64 %idxprom101
  %91 = load %struct.blob*, %struct.blob** %arrayidx103, align 8
  call void @blobDestroy(%struct.blob* %91)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.then.95
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.92
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %92 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %92, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag107 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %93, i32 0, i32 2
  %94 = load i8**, i8*** %tag107, align 8
  %tobool108 = icmp ne i8** %94, null
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %for.end
  %95 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag110 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %95, i32 0, i32 2
  %96 = load i8**, i8*** %tag110, align 8
  %97 = bitcast i8** %96 to i8*
  call void @free(i8* %97) #3
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %for.end
  %98 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value112 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %98, i32 0, i32 3
  %99 = load i8**, i8*** %value112, align 8
  %tobool113 = icmp ne i8** %99, null
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.111
  %100 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value115 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %100, i32 0, i32 3
  %101 = load i8**, i8*** %value115, align 8
  %102 = bitcast i8** %101 to i8*
  call void @free(i8* %102) #3
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.111
  %103 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents117 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %103, i32 0, i32 4
  %104 = load %struct.blob**, %struct.blob*** %contents117, align 8
  %tobool118 = icmp ne %struct.blob** %104, null
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.116
  %105 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents120 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %105, i32 0, i32 4
  %106 = load %struct.blob**, %struct.blob*** %contents120, align 8
  %107 = bitcast %struct.blob** %106 to i8*
  call void @free(i8* %107) #3
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.116
  %108 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents122 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %108, i32 0, i32 4
  store %struct.blob** null, %struct.blob*** %contents122, align 8
  %109 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value123 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %109, i32 0, i32 3
  store i8** null, i8*** %value123, align 8
  %110 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag124 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %110, i32 0, i32 2
  store i8** null, i8*** %tag124, align 8
  %111 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count125 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %111, i32 0, i32 0
  store i32 0, i32* %count125, align 4
  br label %return

return:                                           ; preds = %if.end.121, %if.end.74
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @html_tag_contents_done(%struct.tag_arguments_tag* %tags, i32 %idx) #6 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %1, i32 0, i32 4
  %2 = load %struct.blob**, %struct.blob*** %contents, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %2, i64 %idxprom
  %3 = load %struct.blob*, %struct.blob** %arrayidx, align 8
  %call = call i32 @blobAddData(%struct.blob* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i64 1)
  %4 = load i32, i32* %idx.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %idxprom2 = sext i32 %sub1 to i64
  %5 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents3 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %5, i32 0, i32 4
  %6 = load %struct.blob**, %struct.blob*** %contents3, align 8
  %arrayidx4 = getelementptr inbounds %struct.blob*, %struct.blob** %6, i64 %idxprom2
  %7 = load %struct.blob*, %struct.blob** %arrayidx4, align 8
  call void @blobClose(%struct.blob* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @html_tag_arg_value(%struct.tag_arguments_tag* %tags, i8* %tag) #0 {
entry:
  %retval = alloca i8*, align 8
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %tag.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %1, i32 0, i32 0
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag1 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %4, i32 0, i32 2
  %5 = load i8**, i8*** %tag1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i8*, i8** %tag.addr, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7) #8
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %9, i32 0, i32 3
  %10 = load i8**, i8*** %value, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  store i8* %11, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @html_tag_arg_set(%struct.tag_arguments_tag* %tags, i8* %tag, i8* %value) #0 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %tag.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %1, i32 0, i32 0
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag1 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %4, i32 0, i32 2
  %5 = load i8**, i8*** %tag1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i8*, i8** %tag.addr, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7) #8
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value4 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %9, i32 0, i32 3
  %10 = load i8**, i8*** %value4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx5, align 8
  call void @free(i8* %11) #3
  %12 = load i8*, i8** %value.addr, align 8
  %call6 = call i8* @cli_strdup(i8* %12)
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value8 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %14, i32 0, i32 3
  %15 = load i8**, i8*** %value8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  store i8* %call6, i8** %arrayidx9, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @html_output_tag(%struct.file_buff_tag* %fbuff, i8* %tag, %struct.tag_arguments_tag* %tags) #0 {
entry:
  %fbuff.addr = alloca %struct.file_buff_tag*, align 8
  %tag.addr = alloca i8*, align 8
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.file_buff_tag* %fbuff, %struct.file_buff_tag** %fbuff.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  %0 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_c(%struct.file_buff_tag* %0, %struct.file_buff_tag* null, i8 zeroext 60)
  %1 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %2 = load i8*, i8** %tag.addr, align 8
  %3 = load i8*, i8** %tag.addr, align 8
  %call = call i64 @strlen(i8* %3) #8
  %conv = trunc i64 %call to i32
  call void @html_output_str(%struct.file_buff_tag* %1, i8* %2, i32 %conv)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %5, i32 0, i32 0
  %6 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %7 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_c(%struct.file_buff_tag* %7, %struct.file_buff_tag* null, i8 zeroext 32)
  %8 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag2 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %10, i32 0, i32 2
  %11 = load i8**, i8*** %tag2, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %tag4 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %14, i32 0, i32 2
  %15 = load i8**, i8*** %tag4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %15, i64 %idxprom3
  %16 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i64 @strlen(i8* %16) #8
  %conv7 = trunc i64 %call6 to i32
  call void @html_output_str(%struct.file_buff_tag* %8, i8* %12, i32 %conv7)
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %18, i32 0, i32 3
  %19 = load i8**, i8*** %value, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %19, i64 %idxprom8
  %20 = load i8*, i8** %arrayidx9, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_str(%struct.file_buff_tag* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i32 2)
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value11 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %23, i32 0, i32 3
  %24 = load i8**, i8*** %value11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %24, i64 %idxprom10
  %25 = load i8*, i8** %arrayidx12, align 8
  %call13 = call i64 @strlen(i8* %25) #8
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %len, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %len, align 4
  %cmp16 = icmp slt i32 %26, %27
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %28 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value21 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %31, i32 0, i32 3
  %32 = load i8**, i8*** %value21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %32, i64 %idxprom20
  %33 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %33, i64 %idxprom19
  %34 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %34 to i32
  %call25 = call i32 @tolower(i32 %conv24) #3
  %conv26 = trunc i32 %call25 to i8
  call void @html_output_c(%struct.file_buff_tag* %28, %struct.file_buff_tag* null, i8 zeroext %conv26)
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %36 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_c(%struct.file_buff_tag* %36, %struct.file_buff_tag* null, i8 zeroext 34)
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %37 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %38 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_c(%struct.file_buff_tag* %38, %struct.file_buff_tag* null, i8 zeroext 62)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #5

declare void @process_encoding_set(%struct.entity_conv*, i8*, i32) #1

declare %struct.blob* @blobCreate() #1

declare i8* @cli_strdup(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @html_tag_set_inahref(%struct.tag_arguments_tag* %tags, i32 %idx, i32 %in_ahref) #6 {
entry:
  %tags.addr = alloca %struct.tag_arguments_tag*, align 8
  %idx.addr = alloca i32, align 4
  %in_ahref.addr = alloca i32, align 4
  store %struct.tag_arguments_tag* %tags, %struct.tag_arguments_tag** %tags.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %in_ahref, i32* %in_ahref.addr, align 4
  %call = call %struct.blob* @blobCreate()
  %0 = load i32, i32* %idx.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %1, i32 0, i32 4
  %2 = load %struct.blob**, %struct.blob*** %contents, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %2, i64 %idxprom
  store %struct.blob* %call, %struct.blob** %arrayidx, align 8
  %3 = load i32, i32* %idx.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %idxprom2 = sext i32 %sub1 to i64
  %4 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents3 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %4, i32 0, i32 4
  %5 = load %struct.blob**, %struct.blob*** %contents3, align 8
  %arrayidx4 = getelementptr inbounds %struct.blob*, %struct.blob** %5, i64 %idxprom2
  %6 = load %struct.blob*, %struct.blob** %arrayidx4, align 8
  %7 = load i32, i32* %in_ahref.addr, align 4
  %sub5 = sub nsw i32 %7, 1
  %idxprom6 = sext i32 %sub5 to i64
  %8 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %8, i32 0, i32 3
  %9 = load i8**, i8*** %value, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  %11 = load i32, i32* %in_ahref.addr, align 4
  %sub8 = sub nsw i32 %11, 1
  %idxprom9 = sext i32 %sub8 to i64
  %12 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %value10 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %12, i32 0, i32 3
  %13 = load i8**, i8*** %value10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom9
  %14 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i64 @strlen(i8* %14) #8
  %call13 = call i32 @blobAddData(%struct.blob* %6, i8* %10, i64 %call12)
  %15 = load i32, i32* %idx.addr, align 4
  %sub14 = sub nsw i32 %15, 1
  %idxprom15 = sext i32 %sub14 to i64
  %16 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents16 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %16, i32 0, i32 4
  %17 = load %struct.blob**, %struct.blob*** %contents16, align 8
  %arrayidx17 = getelementptr inbounds %struct.blob*, %struct.blob** %17, i64 %idxprom15
  %18 = load %struct.blob*, %struct.blob** %arrayidx17, align 8
  %call18 = call i32 @blobAddData(%struct.blob* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i64 1)
  %19 = load i32, i32* %idx.addr, align 4
  %sub19 = sub nsw i32 %19, 1
  %idxprom20 = sext i32 %sub19 to i64
  %20 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %tags.addr, align 8
  %contents21 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %20, i32 0, i32 4
  %21 = load %struct.blob**, %struct.blob*** %contents21, align 8
  %arrayidx22 = getelementptr inbounds %struct.blob*, %struct.blob** %21, i64 %idxprom20
  %22 = load %struct.blob*, %struct.blob** %arrayidx22, align 8
  call void @blobClose(%struct.blob* %22)
  ret void
}

declare i8* @entity_norm(%struct.entity_conv*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @html_output_str(%struct.file_buff_tag* %fbuff, i8* %str, i32 %len) #0 {
entry:
  %fbuff.addr = alloca %struct.file_buff_tag*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.file_buff_tag* %fbuff, %struct.file_buff_tag** %fbuff.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %tobool = icmp ne %struct.file_buff_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %1, i32 0, i32 2
  %2 = load i32, i32* %length, align 4
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp sge i32 %add, 8192
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_flush(%struct.file_buff_tag* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %5 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp sge i32 %5, 8192
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  call void @html_output_flush(%struct.file_buff_tag* %6)
  %7 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %fd = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %7, i32 0, i32 0
  %8 = load i32, i32* %fd, align 4
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %len.addr, align 4
  %call = call i32 @cli_writen(i32 %8, i8* %9, i32 %10)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %11 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %buffer = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %11, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %12 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length4 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %12, i32 0, i32 2
  %13 = load i32, i32* %length4, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %14, i64 %conv, i32 1, i1 false)
  %16 = load i32, i32* %len.addr, align 4
  %17 = load %struct.file_buff_tag*, %struct.file_buff_tag** %fbuff.addr, align 8
  %length5 = getelementptr inbounds %struct.file_buff_tag, %struct.file_buff_tag* %17, i32 0, i32 2
  %18 = load i32, i32* %length5, align 4
  %add6 = add nsw i32 %18, %16
  store i32 %add6, i32* %length5, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  ret void
}

declare i8* @cli_gentemp(i8*) #1

declare i32 @entity_norm_done(%struct.entity_conv*) #1

declare i64 @blobGetDataSize(%struct.blob*) #1

declare i32 @blobAddData(%struct.blob*, i8*, i64) #1

declare i8* @cli_realloc2(i8*, i64) #1

declare void @blobClose(%struct.blob*) #1

declare i32 @cli_writen(i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
