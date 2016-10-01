; ModuleID = './MultiSource.Applications.ClamAV/80.libclamav_unzip.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__zip_dir = type { i32, i32, %struct.anon, %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr*, %struct.__zip_dirent }
%struct.anon = type { %struct.__zip_file*, i8* }
%struct.__zip_file = type { %struct.__zip_dir*, i16, i16*, i64, i64, i64, i64, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.__zip_dir_hdr = type { i32, i32, i32, i32, i16, i16, i16, [2 x i16], i16, [1 x i8] }
%struct.__zip_dirent = type { i16, i32, i32, i16, i8*, i32, i32 }
%struct.zip_disk_trailer = type <{ i32, i16, i16, i16, i16, i32, i32, i16 }>
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zip_file_header = type <{ i32, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16 }>
%struct.zip_root_dirent = type <{ i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i32, i32 }>

@.str = private unnamed_addr constant [48 x i8] c"Unzip: zip_dir_open: Can't lseek descriptor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unzip: zip_file_close: fp == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Unzip: zip_file_open: dir == NULL || dir->fd <= 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unzip: zip_file_open: hdr == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Unzip: zip_file_open: Not supported compression method (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Unzip: zip_file_read: Unknown compression method (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Unzip: zip_file_open: Can't lseek descriptor %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Unzip: zip_file_open: Can't read zip header (only read %d bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Unzip: zip_file_read: fp == NULL || fp->dir == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Unzip: zip_file_read: Can't read %d bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Unzip: zip_file_read: Can't read %d bytes (read %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Unzip: zip_file_read: Not supported compression method (%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_dir_parse: Can't fstat file descriptor %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Unzip: __zip_find_disk_trailer: trailer == NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Unzip: __zip_find_disk_trailer: File too short\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"Unzip: __zip_find_disk_trailer: Central directory not found\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Unzip: __zip_find_disk_trailer: Can't lseek descriptor %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Unzip: __zip_find_disk_trailer: Can't read %u bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"Unzip: __zip_find_disk_trailer: u_rootseek > filesize, continue search\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Unzip: __zip_find_disk_trailer: found file header at %u, shift %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"Unzip: __zip_parse_root_directory: Can't fstat file descriptor %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"Unzip: __zip_parse_root_directory: File contains no entries\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_parse_root_directory: Incorrect root size\0A\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"Unzip: __zip_parse_root_directory: Can't lseek descriptor %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_parse_root_directory: Can't read %d bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Unzip: __zip_parse_root_directory: Entry %d outside of root directory\0A\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"Unzip: __zip_parse_root_directory: Entry %d name too long\0A\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"Unzip: __zip_parse_root_directory: File claims to be stored but csize != usize\0A\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"Unzip: __zip_parse_root_directory: Also checking for method 'deflated'\0A\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"Unzip: __zip_parse_root_directory: File claims to be deflated but csize == usize\0A\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"Unzip: __zip_parse_root_directory: Also checking for method 'stored'\0A\00", align 1
@.str.31 = private unnamed_addr constant [79 x i8] c"Unzip: __zip_parse_root_directory: Name of entry %d outside of root directory\0A\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Unzip: __zip_parse_root_directory: Can't read name of entry %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"Unzip: __zip_parse_root_directory: End of entry %d outside of root directory\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Unzip: __zip_inflate_init: inflateInit2 failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zip_dir_close(%struct.__zip_dir* %dir) #0 {
entry:
  %dir.addr = alloca %struct.__zip_dir*, align 8
  store %struct.__zip_dir* %dir, %struct.__zip_dir** %dir.addr, align 8
  %0 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr0 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %0, i32 0, i32 3
  %1 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %tobool = icmp ne %struct.__zip_dir_hdr* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr01 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %2, i32 0, i32 3
  %3 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr01, align 8
  %4 = bitcast %struct.__zip_dir_hdr* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %5, i32 0, i32 2
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %cache, i32 0, i32 0
  %6 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %tobool2 = icmp ne %struct.__zip_file* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache4 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %7, i32 0, i32 2
  %fp5 = getelementptr inbounds %struct.anon, %struct.anon* %cache4, i32 0, i32 0
  %8 = load %struct.__zip_file*, %struct.__zip_file** %fp5, align 8
  %9 = bitcast %struct.__zip_file* %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache7 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %10, i32 0, i32 2
  %buf32k = getelementptr inbounds %struct.anon, %struct.anon* %cache7, i32 0, i32 1
  %11 = load i8*, i8** %buf32k, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %12 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache10 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %12, i32 0, i32 2
  %buf32k11 = getelementptr inbounds %struct.anon, %struct.anon* %cache10, i32 0, i32 1
  %13 = load i8*, i8** %buf32k11, align 8
  call void @free(i8* %13) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.6
  %14 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %15 = bitcast %struct.__zip_dir* %14 to i8*
  call void @free(i8* %15) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.__zip_dir* @zip_dir_open(i32 %fd, i64 %start, i32* %errcode_p) #0 {
entry:
  %retval = alloca %struct.__zip_dir*, align 8
  %fd.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %errcode_p.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %dir = alloca %struct.__zip_dir*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %start, i64* %start.addr, align 8
  store i32* %errcode_p, i32** %errcode_p.addr, align 8
  %call = call i8* @cli_calloc(i64 1, i64 72)
  %0 = bitcast i8* %call to %struct.__zip_dir*
  store %struct.__zip_dir* %0, %struct.__zip_dir** %dir, align 8
  %1 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %tobool = icmp ne %struct.__zip_dir* %1, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %errcode_p.addr, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i32*, i32** %errcode_p.addr, align 8
  store i32 -114, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct.__zip_dir* null, %struct.__zip_dir** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %4 = load i64, i64* %start.addr, align 8
  %tobool4 = icmp ne i64 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end.3
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i64, i64* %start.addr, align 8
  %call6 = call i64 @lseek(i32 %5, i64 %6, i32 0) #3
  %cmp = icmp eq i64 %call6, -1
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.then.5
  %7 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %7)
  %8 = load i32*, i32** %errcode_p.addr, align 8
  %tobool8 = icmp ne i32* %8, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %9 = load i32*, i32** %errcode_p.addr, align 8
  store i32 -123, i32* %9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  store %struct.__zip_dir* null, %struct.__zip_dir** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.3
  %10 = load i32, i32* %fd.addr, align 4
  %11 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %fd13 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %11, i32 0, i32 0
  store i32 %10, i32* %fd13, align 4
  %12 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %13 = load i64, i64* %start.addr, align 8
  %call14 = call i32 @__zip_dir_parse(%struct.__zip_dir* %12, i64 %13)
  store i32 %call14, i32* %ret, align 4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %14 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %call17 = call i32 @zip_dir_close(%struct.__zip_dir* %14)
  %15 = load i32*, i32** %errcode_p.addr, align 8
  %tobool18 = icmp ne i32* %15, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %16 = load i32*, i32** %errcode_p.addr, align 8
  store i32 -114, i32* %16, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.16
  store %struct.__zip_dir* null, %struct.__zip_dir** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.12
  %17 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %hdr0 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %17, i32 0, i32 3
  %18 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %19 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %hdr = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %19, i32 0, i32 4
  store %struct.__zip_dir_hdr* %18, %struct.__zip_dir_hdr** %hdr, align 8
  %20 = load i32*, i32** %errcode_p.addr, align 8
  %tobool22 = icmp ne i32* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %21 = load i32*, i32** %errcode_p.addr, align 8
  store i32 0, i32* %21, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %22 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  store %struct.__zip_dir* %22, %struct.__zip_dir** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.end.20, %if.end.10, %if.end
  %23 = load %struct.__zip_dir*, %struct.__zip_dir** %retval
  ret %struct.__zip_dir* %23
}

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #1

declare void @cli_errmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @__zip_dir_parse(%struct.__zip_dir* %dir, i64 %start) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.__zip_dir*, align 8
  %start.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %trailer = alloca %struct.zip_disk_trailer, align 1
  %sb = alloca %struct.stat, align 8
  store %struct.__zip_dir* %dir, %struct.__zip_dir** %dir.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @fstat(i32 %1, %struct.stat* %sb) #3
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd1 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %2, i32 0, i32 0
  %3 = load i32, i32* %fd1, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i32 %3)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd2 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %4, i32 0, i32 0
  %5 = load i32, i32* %fd2, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %6 = load i64, i64* %st_size, align 8
  %call3 = call i32 @__zip_find_disk_trailer(i32 %5, i64 %6, %struct.zip_disk_trailer* %trailer, i64* %start.addr)
  store i32 %call3, i32* %ret, align 4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd6 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %8, i32 0, i32 0
  %9 = load i32, i32* %fd6, align 4
  %10 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr0 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %10, i32 0, i32 3
  %11 = load i64, i64* %start.addr, align 8
  %call7 = call i32 @__zip_parse_root_directory(i32 %9, %struct.zip_disk_trailer* %trailer, %struct.__zip_dir_hdr** %hdr0, i64 %11)
  store i32 %call7, i32* %ret, align 4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zip_dir_read(%struct.__zip_dir* %dir, %struct.__zip_dirent* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct.__zip_dir*, align 8
  %d.addr = alloca %struct.__zip_dirent*, align 8
  store %struct.__zip_dir* %dir, %struct.__zip_dir** %dir.addr, align 8
  store %struct.__zip_dirent* %d, %struct.__zip_dirent** %d.addr, align 8
  %0 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %tobool = icmp ne %struct.__zip_dir* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %1, i32 0, i32 4
  %2 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %tobool1 = icmp ne %struct.__zip_dir_hdr* %2, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %tobool3 = icmp ne %struct.__zip_dirent* %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %4 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr4 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %4, i32 0, i32 4
  %5 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr4, align 8
  %d_compr = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %5, i32 0, i32 6
  %6 = load i16, i16* %d_compr, align 2
  %7 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_compr5 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %7, i32 0, i32 0
  store i16 %6, i16* %d_compr5, align 2
  %8 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr6 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %8, i32 0, i32 4
  %9 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr6, align 8
  %d_csize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %9, i32 0, i32 1
  %10 = load i32, i32* %d_csize, align 4
  %11 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_csize7 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %11, i32 0, i32 1
  store i32 %10, i32* %d_csize7, align 4
  %12 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr8 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %12, i32 0, i32 4
  %13 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr8, align 8
  %d_usize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %13, i32 0, i32 0
  %14 = load i32, i32* %d_usize, align 4
  %15 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %st_size = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %15, i32 0, i32 2
  store i32 %14, i32* %st_size, align 4
  %16 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr9 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %16, i32 0, i32 4
  %17 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr9, align 8
  %d_name = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %17, i32 0, i32 9
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %d_name, i32 0, i32 0
  %18 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_name10 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %18, i32 0, i32 4
  store i8* %arraydecay, i8** %d_name10, align 8
  %19 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr11 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %19, i32 0, i32 4
  %20 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr11, align 8
  %d_flags = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %20, i32 0, i32 8
  %21 = load i16, i16* %d_flags, align 2
  %22 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_flags12 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %22, i32 0, i32 3
  store i16 %21, i16* %d_flags12, align 2
  %23 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr13 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %23, i32 0, i32 4
  %24 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr13, align 8
  %d_off = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %24, i32 0, i32 3
  %25 = load i32, i32* %d_off, align 4
  %26 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_off14 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %26, i32 0, i32 6
  store i32 %25, i32* %d_off14, align 4
  %27 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr15 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %27, i32 0, i32 4
  %28 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr15, align 8
  %d_crc32 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %28, i32 0, i32 2
  %29 = load i32, i32* %d_crc32, align 4
  %30 = load %struct.__zip_dirent*, %struct.__zip_dirent** %d.addr, align 8
  %d_crc3216 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %30, i32 0, i32 5
  store i32 %29, i32* %d_crc3216, align 4
  %31 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr17 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %31, i32 0, i32 4
  %32 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr17, align 8
  %d_reclen = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %32, i32 0, i32 4
  %33 = load i16, i16* %d_reclen, align 2
  %tobool18 = icmp ne i16 %33, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %34 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr20 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %34, i32 0, i32 4
  store %struct.__zip_dir_hdr* null, %struct.__zip_dir_hdr** %hdr20, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %35 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr21 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %35, i32 0, i32 4
  %36 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr21, align 8
  %37 = bitcast %struct.__zip_dir_hdr* %36 to i8*
  %38 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr22 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %38, i32 0, i32 4
  %39 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr22, align 8
  %d_reclen23 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %39, i32 0, i32 4
  %40 = load i16, i16* %d_reclen23, align 2
  %conv = zext i16 %40 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %41 = bitcast i8* %add.ptr to %struct.__zip_dir_hdr*
  %42 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr24 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %42, i32 0, i32 4
  store %struct.__zip_dir_hdr* %41, %struct.__zip_dir_hdr** %hdr24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.19
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @zip_file_close(%struct.__zip_file* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.__zip_file*, align 8
  %dir = alloca %struct.__zip_dir*, align 8
  store %struct.__zip_file* %fp, %struct.__zip_file** %fp.addr, align 8
  %0 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %tobool = icmp ne %struct.__zip_file* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %1, i32 0, i32 8
  %call = call i32 @inflateEnd(%struct.z_stream_s* %d_stream)
  %2 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %dir1 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %2, i32 0, i32 0
  %3 = load %struct.__zip_dir*, %struct.__zip_dir** %dir1, align 8
  store %struct.__zip_dir* %3, %struct.__zip_dir** %dir, align 8
  %4 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %buf32k = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %4, i32 0, i32 7
  %5 = load i8*, i8** %buf32k, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %cache = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %6, i32 0, i32 2
  %buf32k4 = getelementptr inbounds %struct.anon, %struct.anon* %cache, i32 0, i32 1
  %7 = load i8*, i8** %buf32k4, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %8 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %buf32k7 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %8, i32 0, i32 7
  %9 = load i8*, i8** %buf32k7, align 8
  %10 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %cache8 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %10, i32 0, i32 2
  %buf32k9 = getelementptr inbounds %struct.anon, %struct.anon* %cache8, i32 0, i32 1
  store i8* %9, i8** %buf32k9, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.then.3
  %11 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %buf32k10 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %11, i32 0, i32 7
  %12 = load i8*, i8** %buf32k10, align 8
  call void @free(i8* %12) #3
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %13 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %14 = bitcast %struct.__zip_file* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 176, i32 8, i1 false)
  %15 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %cache13 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %15, i32 0, i32 2
  %fp14 = getelementptr inbounds %struct.anon, %struct.anon* %cache13, i32 0, i32 0
  %16 = load %struct.__zip_file*, %struct.__zip_file** %fp14, align 8
  %tobool15 = icmp ne %struct.__zip_file* %16, null
  br i1 %tobool15, label %if.else.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.12
  %17 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %18 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %cache17 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %18, i32 0, i32 2
  %fp18 = getelementptr inbounds %struct.anon, %struct.anon* %cache17, i32 0, i32 0
  store %struct.__zip_file* %17, %struct.__zip_file** %fp18, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.12
  %19 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %20 = bitcast %struct.__zip_file* %19 to i8*
  call void @free(i8* %20) #3
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @inflateEnd(%struct.z_stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.__zip_file* @zip_file_open(%struct.__zip_dir* %dir, i8* %name, i32 %d_off) #0 {
entry:
  %retval = alloca %struct.__zip_file*, align 8
  %dir.addr = alloca %struct.__zip_dir*, align 8
  %name.addr = alloca i8*, align 8
  %d_off.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %fp = alloca %struct.__zip_file*, align 8
  %hdr = alloca %struct.__zip_dir_hdr*, align 8
  %hdr_name = alloca i8*, align 8
  %dataoff = alloca i64, align 8
  %hp = alloca %struct.zip_file_header*, align 8
  store %struct.__zip_dir* %dir, %struct.__zip_dir** %dir.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %d_off, i32* %d_off.addr, align 4
  store %struct.__zip_file* null, %struct.__zip_file** %fp, align 8
  %0 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %hdr0 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %0, i32 0, i32 3
  %1 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  store %struct.__zip_dir_hdr* %1, %struct.__zip_dir_hdr** %hdr, align 8
  %2 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %tobool = icmp ne %struct.__zip_dir* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %3, i32 0, i32 0
  %4 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %tobool1 = icmp ne %struct.__zip_dir_hdr* %5, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  %6 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %6, i32 0, i32 1
  store i32 -111, i32* %errcode, align 4
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.3, %if.end.97
  %7 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_name = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %7, i32 0, i32 9
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %d_name, i32 0, i32 0
  store i8* %arraydecay, i8** %hdr_name, align 8
  %8 = load i8*, i8** %hdr_name, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* %9) #6
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.else.91, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %d_off.addr, align 4
  %cmp5 = icmp eq i32 %10, -1
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %d_off.addr, align 4
  %12 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_off7 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %12, i32 0, i32 3
  %13 = load i32, i32* %d_off7, align 4
  %cmp8 = icmp eq i32 %11, %13
  br i1 %cmp8, label %if.then.9, label %if.else.91

if.then.9:                                        ; preds = %lor.lhs.false.6, %land.lhs.true
  %14 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %14, i32 0, i32 6
  %15 = load i16, i16* %d_compr, align 2
  %conv = zext i16 %15 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.10
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.10
    i32 10, label %sw.bb.10
    i32 12, label %sw.bb.10
    i32 99, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then.9, %if.then.9, %if.then.9
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9, %if.then.9
  %16 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr11 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %16, i32 0, i32 6
  %17 = load i16, i16* %d_compr11, align 2
  %conv12 = zext i16 %17 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i32 %conv12)
  %18 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode13 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %18, i32 0, i32 1
  store i32 -125, i32* %errcode13, align 4
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

sw.default:                                       ; preds = %if.then.9
  %19 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr14 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %19, i32 0, i32 6
  %20 = load i16, i16* %d_compr14, align 2
  %conv15 = zext i16 %20 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i32 %conv15)
  %21 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode16 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %21, i32 0, i32 1
  store i32 -124, i32* %errcode16, align 4
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %22 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %22, i32 0, i32 2
  %fp17 = getelementptr inbounds %struct.anon, %struct.anon* %cache, i32 0, i32 0
  %23 = load %struct.__zip_file*, %struct.__zip_file** %fp17, align 8
  %tobool18 = icmp ne %struct.__zip_file* %23, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %sw.epilog
  %24 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache20 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %24, i32 0, i32 2
  %fp21 = getelementptr inbounds %struct.anon, %struct.anon* %cache20, i32 0, i32 0
  %25 = load %struct.__zip_file*, %struct.__zip_file** %fp21, align 8
  store %struct.__zip_file* %25, %struct.__zip_file** %fp, align 8
  %26 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache22 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %26, i32 0, i32 2
  %fp23 = getelementptr inbounds %struct.anon, %struct.anon* %cache22, i32 0, i32 0
  store %struct.__zip_file* null, %struct.__zip_file** %fp23, align 8
  br label %if.end.29

if.else:                                          ; preds = %sw.epilog
  %call24 = call i8* @cli_calloc(i64 1, i64 176)
  %27 = bitcast i8* %call24 to %struct.__zip_file*
  store %struct.__zip_file* %27, %struct.__zip_file** %fp, align 8
  %28 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %tobool25 = icmp ne %struct.__zip_file* %28, null
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.else
  %29 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode27 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %29, i32 0, i32 1
  store i32 -114, i32* %errcode27, align 4
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  %30 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %31 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %dir30 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %31, i32 0, i32 0
  store %struct.__zip_dir* %30, %struct.__zip_dir** %dir30, align 8
  %32 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache31 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %32, i32 0, i32 2
  %buf32k = getelementptr inbounds %struct.anon, %struct.anon* %cache31, i32 0, i32 1
  %33 = load i8*, i8** %buf32k, align 8
  %tobool32 = icmp ne i8* %33, null
  br i1 %tobool32, label %if.then.33, label %if.else.39

if.then.33:                                       ; preds = %if.end.29
  %34 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache34 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %34, i32 0, i32 2
  %buf32k35 = getelementptr inbounds %struct.anon, %struct.anon* %cache34, i32 0, i32 1
  %35 = load i8*, i8** %buf32k35, align 8
  %36 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %buf32k36 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %36, i32 0, i32 7
  store i8* %35, i8** %buf32k36, align 8
  %37 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %cache37 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %37, i32 0, i32 2
  %buf32k38 = getelementptr inbounds %struct.anon, %struct.anon* %cache37, i32 0, i32 1
  store i8* null, i8** %buf32k38, align 8
  br label %if.end.48

if.else.39:                                       ; preds = %if.end.29
  %call40 = call i8* @cli_malloc(i64 32768)
  %38 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %buf32k41 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %38, i32 0, i32 7
  store i8* %call40, i8** %buf32k41, align 8
  %39 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %buf32k42 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %39, i32 0, i32 7
  %40 = load i8*, i8** %buf32k42, align 8
  %tobool43 = icmp ne i8* %40, null
  br i1 %tobool43, label %if.end.47, label %if.then.44

if.then.44:                                       ; preds = %if.else.39
  %41 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode45 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %41, i32 0, i32 1
  store i32 -114, i32* %errcode45, align 4
  %42 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call46 = call i32 @zip_file_close(%struct.__zip_file* %42)
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.47:                                        ; preds = %if.else.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.33
  %43 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd49 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %43, i32 0, i32 0
  %44 = load i32, i32* %fd49, align 4
  %45 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_off50 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %45, i32 0, i32 3
  %46 = load i32, i32* %d_off50, align 4
  %conv51 = zext i32 %46 to i64
  %call52 = call i64 @lseek(i32 %44, i64 %conv51, i32 0) #3
  %cmp53 = icmp slt i64 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.48
  %47 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd56 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %47, i32 0, i32 0
  %48 = load i32, i32* %fd56, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 %48)
  %49 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode57 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %49, i32 0, i32 1
  store i32 -123, i32* %errcode57, align 4
  %50 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call58 = call i32 @zip_file_close(%struct.__zip_file* %50)
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.48
  %51 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %buf32k60 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %51, i32 0, i32 7
  %52 = load i8*, i8** %buf32k60, align 8
  %53 = bitcast i8* %52 to %struct.zip_file_header*
  store %struct.zip_file_header* %53, %struct.zip_file_header** %hp, align 8
  %54 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd61 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %54, i32 0, i32 0
  %55 = load i32, i32* %fd61, align 4
  %56 = load %struct.zip_file_header*, %struct.zip_file_header** %hp, align 8
  %57 = bitcast %struct.zip_file_header* %56 to i8*
  %call62 = call i32 @cli_readn(i32 %55, i8* %57, i32 30)
  %conv63 = sext i32 %call62 to i64
  store i64 %conv63, i64* %dataoff, align 8
  %58 = load i64, i64* %dataoff, align 8
  %cmp64 = icmp slt i64 %58, 30
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.59
  %59 = load i64, i64* %dataoff, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i32 0, i32 0), i64 %59)
  %60 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode67 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %60, i32 0, i32 1
  store i32 -123, i32* %errcode67, align 4
  %61 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call68 = call i32 @zip_file_close(%struct.__zip_file* %61)
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.59
  %62 = load %struct.zip_file_header*, %struct.zip_file_header** %hp, align 8
  %z_namlen = getelementptr inbounds %struct.zip_file_header, %struct.zip_file_header* %62, i32 0, i32 9
  %63 = load i16, i16* %z_namlen, align 1
  %conv70 = zext i16 %63 to i32
  %64 = load %struct.zip_file_header*, %struct.zip_file_header** %hp, align 8
  %z_extras = getelementptr inbounds %struct.zip_file_header, %struct.zip_file_header* %64, i32 0, i32 10
  %65 = load i16, i16* %z_extras, align 1
  %conv71 = zext i16 %65 to i32
  %add = add nsw i32 %conv70, %conv71
  %conv72 = sext i32 %add to i64
  store i64 %conv72, i64* %dataoff, align 8
  %66 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd73 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %66, i32 0, i32 0
  %67 = load i32, i32* %fd73, align 4
  %68 = load i64, i64* %dataoff, align 8
  %call74 = call i64 @lseek(i32 %67, i64 %68, i32 1) #3
  %cmp75 = icmp slt i64 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.end.69
  %69 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %fd78 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %69, i32 0, i32 0
  %70 = load i32, i32* %fd78, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 %70)
  %71 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode79 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %71, i32 0, i32 1
  store i32 -123, i32* %errcode79, align 4
  %72 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call80 = call i32 @zip_file_close(%struct.__zip_file* %72)
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.81:                                        ; preds = %if.end.69
  %73 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_usize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %73, i32 0, i32 0
  %74 = load i32, i32* %d_usize, align 4
  %conv82 = zext i32 %74 to i64
  %75 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %usize = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %75, i32 0, i32 5
  store i64 %conv82, i64* %usize, align 8
  %76 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_csize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %76, i32 0, i32 1
  %77 = load i32, i32* %d_csize, align 4
  %conv83 = zext i32 %77 to i64
  %78 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %csize = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %78, i32 0, i32 6
  store i64 %conv83, i64* %csize, align 8
  %79 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_bf = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %79, i32 0, i32 7
  %arraydecay84 = getelementptr inbounds [2 x i16], [2 x i16]* %d_bf, i32 0, i32 0
  %80 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %bf = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %80, i32 0, i32 2
  store i16* %arraydecay84, i16** %bf, align 8
  %81 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %82 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %call85 = call i32 @__zip_inflate_init(%struct.__zip_file* %81, %struct.__zip_dir_hdr* %82)
  store i32 %call85, i32* %ret, align 4
  %83 = load i32, i32* %ret, align 4
  %tobool86 = icmp ne i32 %83, 0
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.81
  %84 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode88 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %84, i32 0, i32 1
  store i32 -123, i32* %errcode88, align 4
  %85 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call89 = call i32 @zip_file_close(%struct.__zip_file* %85)
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.81
  %86 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  store %struct.__zip_file* %86, %struct.__zip_file** %retval
  br label %return

if.else.91:                                       ; preds = %lor.lhs.false.6, %while.body
  %87 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_reclen = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %87, i32 0, i32 4
  %88 = load i16, i16* %d_reclen, align 2
  %tobool92 = icmp ne i16 %88, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.else.91
  br label %while.end

if.end.94:                                        ; preds = %if.else.91
  %89 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %90 = bitcast %struct.__zip_dir_hdr* %89 to i8*
  %91 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_reclen95 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %91, i32 0, i32 4
  %92 = load i16, i16* %d_reclen95, align 2
  %conv96 = zext i16 %92 to i32
  %idx.ext = sext i32 %conv96 to i64
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 %idx.ext
  %93 = bitcast i8* %add.ptr to %struct.__zip_dir_hdr*
  store %struct.__zip_dir_hdr* %93, %struct.__zip_dir_hdr** %hdr, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.94
  br label %while.body

while.end:                                        ; preds = %if.then.93
  %94 = load %struct.__zip_dir*, %struct.__zip_dir** %dir.addr, align 8
  %errcode98 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %94, i32 0, i32 1
  store i32 -115, i32* %errcode98, align 4
  %95 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %tobool99 = icmp ne %struct.__zip_file* %95, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %while.end
  %96 = load %struct.__zip_file*, %struct.__zip_file** %fp, align 8
  %call101 = call i32 @zip_file_close(%struct.__zip_file* %96)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %while.end
  store %struct.__zip_file* null, %struct.__zip_file** %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.end.90, %if.then.87, %if.then.77, %if.then.66, %if.then.55, %if.then.44, %if.then.26, %sw.default, %sw.bb.10, %if.then.2, %if.then
  %97 = load %struct.__zip_file*, %struct.__zip_file** %retval
  ret %struct.__zip_file* %97
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @cli_dbgmsg(i8*, ...) #2

declare i8* @cli_malloc(i64) #2

declare i32 @cli_readn(i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @__zip_inflate_init(%struct.__zip_file* %fp, %struct.__zip_dir_hdr* %hdr) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.__zip_file*, align 8
  %hdr.addr = alloca %struct.__zip_dir_hdr*, align 8
  %ret = alloca i32, align 4
  store %struct.__zip_file* %fp, %struct.__zip_file** %fp.addr, align 8
  store %struct.__zip_dir_hdr* %hdr, %struct.__zip_dir_hdr** %hdr.addr, align 8
  %0 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr.addr, align 8
  %d_compr = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %0, i32 0, i32 6
  %1 = load i16, i16* %d_compr, align 2
  %2 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %2, i32 0, i32 1
  store i16 %1, i16* %method, align 2
  %3 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr.addr, align 8
  %d_usize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %3, i32 0, i32 0
  %4 = load i32, i32* %d_usize, align 4
  %conv = zext i32 %4 to i64
  %5 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %5, i32 0, i32 3
  store i64 %conv, i64* %restlen, align 8
  %6 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method1 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %6, i32 0, i32 1
  %7 = load i16, i16* %method1, align 2
  %tobool = icmp ne i16 %7, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %8 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %8, i32 0, i32 8
  %9 = bitcast %struct.z_stream_s* %d_stream to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 112, i32 8, i1 false)
  %10 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream2 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %10, i32 0, i32 8
  %call = call i32 @inflateInit2_(%struct.z_stream_s* %d_stream2, i32 -15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 112)
  store i32 %call, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0))
  store i32 -104, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr.addr, align 8
  %d_csize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %12, i32 0, i32 1
  %13 = load i32, i32* %d_csize, align 4
  %conv5 = zext i32 %13 to i64
  %14 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %crestlen = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %14, i32 0, i32 4
  store i64 %conv5, i64* %crestlen, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i64 @zip_file_read(%struct.__zip_file* %fp, i8* %buf, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %fp.addr = alloca %struct.__zip_file*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dir = alloca %struct.__zip_dir*, align 8
  %l = alloca i64, align 8
  %bread = alloca i64, align 8
  %ret = alloca i32, align 4
  %startlen = alloca i64, align 8
  %cl = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.__zip_file* %fp, %struct.__zip_file** %fp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %tobool = icmp ne %struct.__zip_file* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %dir1 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %1, i32 0, i32 0
  %2 = load %struct.__zip_dir*, %struct.__zip_dir** %dir1, align 8
  %tobool2 = icmp ne %struct.__zip_dir* %2, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %dir3 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %3, i32 0, i32 0
  %4 = load %struct.__zip_dir*, %struct.__zip_dir** %dir3, align 8
  store %struct.__zip_dir* %4, %struct.__zip_dir** %dir, align 8
  %5 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %5, i32 0, i32 3
  %6 = load i64, i64* %restlen, align 8
  %7 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen4 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %9, i32 0, i32 3
  %10 = load i64, i64* %restlen4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %l, align 8
  %11 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen5 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %11, i32 0, i32 3
  %12 = load i64, i64* %restlen5, align 8
  %tobool6 = icmp ne i64 %12, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %cond.end
  store i64 0, i64* %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  %13 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %13, i32 0, i32 1
  %14 = load i16, i16* %method, align 2
  %conv = zext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb.20
    i32 9, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end.8
  %15 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %fd = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %15, i32 0, i32 0
  %16 = load i32, i32* %fd, align 4
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i64, i64* %l, align 8
  %conv9 = trunc i64 %18 to i32
  %call = call i32 @cli_readn(i32 %16, i8* %17, i32 %conv9)
  %conv10 = sext i32 %call to i64
  store i64 %conv10, i64* %bread, align 8
  %19 = load i64, i64* %bread, align 8
  %cmp11 = icmp sgt i64 %19, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb
  %20 = load i64, i64* %bread, align 8
  %21 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen14 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %21, i32 0, i32 3
  %22 = load i64, i64* %restlen14, align 8
  %sub = sub i64 %22, %20
  store i64 %sub, i64* %restlen14, align 8
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  %23 = load i64, i64* %bread, align 8
  %cmp15 = icmp slt i64 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  %24 = load i64, i64* %l, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i64 %24)
  %25 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %errcode = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %25, i32 0, i32 1
  store i32 -123, i32* %errcode, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.13
  %26 = load i64, i64* %bread, align 8
  store i64 %26, i64* %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end.8, %if.end.8
  %27 = load i64, i64* %l, align 8
  %conv21 = trunc i64 %27 to i32
  %28 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %28, i32 0, i32 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream, i32 0, i32 4
  store i32 %conv21, i32* %avail_out, align 4
  %29 = load i8*, i8** %buf.addr, align 8
  %30 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream22 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %30, i32 0, i32 8
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream22, i32 0, i32 3
  store i8* %29, i8** %next_out, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %sw.bb.20
  %31 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %crestlen = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %31, i32 0, i32 4
  %32 = load i64, i64* %crestlen, align 8
  %cmp23 = icmp ugt i64 %32, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %do.body
  %33 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream25 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %33, i32 0, i32 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream25, i32 0, i32 1
  %34 = load i32, i32* %avail_in, align 4
  %cmp26 = icmp eq i32 %34, 0
  br i1 %cmp26, label %if.then.28, label %if.end.53

if.then.28:                                       ; preds = %land.lhs.true
  %35 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %crestlen29 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %35, i32 0, i32 4
  %36 = load i64, i64* %crestlen29, align 8
  %cmp30 = icmp ult i64 %36, 32768
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %if.then.28
  %37 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %crestlen33 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %37, i32 0, i32 4
  %38 = load i64, i64* %crestlen33, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.then.28
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.32
  %cond36 = phi i64 [ %38, %cond.true.32 ], [ 32768, %cond.false.34 ]
  store i64 %cond36, i64* %cl, align 8
  %39 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %fd37 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %39, i32 0, i32 0
  %40 = load i32, i32* %fd37, align 4
  %41 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %buf32k = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %41, i32 0, i32 7
  %42 = load i8*, i8** %buf32k, align 8
  %43 = load i64, i64* %cl, align 8
  %conv38 = trunc i64 %43 to i32
  %call39 = call i32 @cli_readn(i32 %40, i8* %42, i32 %conv38)
  %conv40 = sext i32 %call39 to i64
  store i64 %conv40, i64* %i, align 8
  %44 = load i64, i64* %i, align 8
  %cmp41 = icmp sle i64 %44, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %cond.end.35
  %45 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %errcode44 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %45, i32 0, i32 1
  store i32 -123, i32* %errcode44, align 4
  %46 = load i64, i64* %cl, align 8
  %47 = load i64, i64* %i, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0), i64 %46, i64 %47)
  store i64 -1, i64* %retval
  br label %return

if.end.45:                                        ; preds = %cond.end.35
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %crestlen46 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %49, i32 0, i32 4
  %50 = load i64, i64* %crestlen46, align 8
  %sub47 = sub i64 %50, %48
  store i64 %sub47, i64* %crestlen46, align 8
  %51 = load i64, i64* %i, align 8
  %conv48 = trunc i64 %51 to i32
  %52 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream49 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %52, i32 0, i32 8
  %avail_in50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream49, i32 0, i32 1
  store i32 %conv48, i32* %avail_in50, align 4
  %53 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %buf32k51 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %53, i32 0, i32 7
  %54 = load i8*, i8** %buf32k51, align 8
  %55 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream52 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %55, i32 0, i32 8
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream52, i32 0, i32 0
  store i8* %54, i8** %next_in, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.45, %land.lhs.true, %do.body
  %56 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream54 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %56, i32 0, i32 8
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream54, i32 0, i32 5
  %57 = load i64, i64* %total_out, align 8
  store i64 %57, i64* %startlen, align 8
  %58 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream55 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %58, i32 0, i32 8
  %call56 = call i32 @inflate(%struct.z_stream_s* %d_stream55, i32 0)
  store i32 %call56, i32* %ret, align 4
  %59 = load i32, i32* %ret, align 4
  %cmp57 = icmp eq i32 %59, 1
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.end.53
  %60 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen60 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %60, i32 0, i32 3
  store i64 0, i64* %restlen60, align 8
  br label %if.end.83

if.else.61:                                       ; preds = %if.end.53
  %61 = load i32, i32* %ret, align 4
  %cmp62 = icmp eq i32 %61, 0
  br i1 %cmp62, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %if.else.61
  %62 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream65 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %62, i32 0, i32 8
  %total_out66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream65, i32 0, i32 5
  %63 = load i64, i64* %total_out66, align 8
  %64 = load i64, i64* %startlen, align 8
  %sub67 = sub i64 %63, %64
  %65 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen68 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %65, i32 0, i32 3
  %66 = load i64, i64* %restlen68, align 8
  %sub69 = sub i64 %66, %sub67
  store i64 %sub69, i64* %restlen68, align 8
  br label %if.end.82

if.else.70:                                       ; preds = %if.else.61
  %67 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method71 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %67, i32 0, i32 1
  %68 = load i16, i16* %method71, align 2
  %conv72 = zext i16 %68 to i32
  %cmp73 = icmp eq i32 %conv72, 9
  br i1 %cmp73, label %if.then.75, label %if.else.79

if.then.75:                                       ; preds = %if.else.70
  %69 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method76 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %69, i32 0, i32 1
  %70 = load i16, i16* %method76, align 2
  %conv77 = zext i16 %70 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i32 0, i32 0), i32 %conv77)
  %71 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %errcode78 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %71, i32 0, i32 1
  store i32 -125, i32* %errcode78, align 4
  br label %if.end.81

if.else.79:                                       ; preds = %if.else.70
  %72 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %errcode80 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %72, i32 0, i32 1
  store i32 -104, i32* %errcode80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.75
  store i64 -1, i64* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.64
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.59
  br label %do.cond

do.cond:                                          ; preds = %if.end.83
  %73 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %restlen84 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %73, i32 0, i32 3
  %74 = load i64, i64* %restlen84, align 8
  %tobool85 = icmp ne i64 %74, 0
  br i1 %tobool85, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %75 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream86 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %75, i32 0, i32 8
  %avail_out87 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream86, i32 0, i32 4
  %76 = load i32, i32* %avail_out87, align 4
  %tobool88 = icmp ne i32 %76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %77 = phi i1 [ false, %do.cond ], [ %tobool88, %land.rhs ]
  br i1 %77, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %78 = load i64, i64* %l, align 8
  %79 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %d_stream89 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %79, i32 0, i32 8
  %avail_out90 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %d_stream89, i32 0, i32 4
  %80 = load i32, i32* %avail_out90, align 4
  %conv91 = zext i32 %80 to i64
  %sub92 = sub i64 %78, %conv91
  store i64 %sub92, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end.8
  %81 = load %struct.__zip_file*, %struct.__zip_file** %fp.addr, align 8
  %method93 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %81, i32 0, i32 1
  %82 = load i16, i16* %method93, align 2
  %conv94 = zext i16 %82 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i32 %conv94)
  %83 = load %struct.__zip_dir*, %struct.__zip_dir** %dir, align 8
  %errcode95 = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %83, i32 0, i32 1
  store i32 -104, i32* %errcode95, align 4
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %do.end, %if.end.81, %if.then.43, %if.end.19, %if.then.7, %if.then
  %84 = load i64, i64* %retval
  ret i64 %84
}

declare i32 @inflate(%struct.z_stream_s*, i32) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define internal i32 @__zip_find_disk_trailer(i32 %fd, i64 %filesize, %struct.zip_disk_trailer* %trailer, i64* %start) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %filesize.addr = alloca i64, align 8
  %trailer.addr = alloca %struct.zip_disk_trailer*, align 8
  %start.addr = alloca i64*, align 8
  %buf = alloca i8*, align 8
  %end = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %offset = alloca i64, align 8
  %bufsize = alloca i64, align 8
  %dirent = alloca %struct.zip_root_dirent, align 1
  %u_rootseek = alloca i32, align 4
  %shift = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %filesize, i64* %filesize.addr, align 8
  store %struct.zip_disk_trailer* %trailer, %struct.zip_disk_trailer** %trailer.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64 0, i64* %offset, align 8
  store i32 0, i32* %shift, align 4
  %0 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %tobool = icmp ne %struct.zip_disk_trailer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %filesize.addr, align 8
  %cmp = icmp slt i64 %1, 22
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %call = call i8* @cli_malloc(i64 1024)
  store i8* %call, i8** %buf, align 8
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store i32 -114, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %2 = load i64, i64* %filesize.addr, align 8
  store i64 %2, i64* %offset, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.5, %for.end.96
  %3 = load i64, i64* %offset, align 8
  %cmp6 = icmp sle i64 %3, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0))
  %4 = load i8*, i8** %buf, align 8
  call void @free(i8* %4) #3
  store i32 -124, i32* %retval
  br label %return

if.end.8:                                         ; preds = %while.body
  %5 = load i64, i64* %offset, align 8
  %cmp9 = icmp sge i64 %5, 1024
  br i1 %cmp9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.end.8
  %6 = load i64, i64* %offset, align 8
  %7 = load i64, i64* %filesize.addr, align 8
  %cmp11 = icmp eq i64 %6, %7
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %8 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %8, 1024
  store i64 %sub, i64* %offset, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.10
  %9 = load i64, i64* %offset, align 8
  %sub13 = sub i64 %9, 1002
  store i64 %sub13, i64* %offset, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  store i64 1024, i64* %bufsize, align 8
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.8
  %10 = load i64, i64* %filesize.addr, align 8
  %cmp16 = icmp slt i64 %10, 1024
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  %11 = load i64, i64* %offset, align 8
  store i64 %11, i64* %bufsize, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.15
  store i64 1024, i64* %bufsize, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  store i64 0, i64* %offset, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.14
  %12 = load i32, i32* %fd.addr, align 4
  %13 = load i64, i64* %offset, align 8
  %call21 = call i64 @lseek(i32 %12, i64 %13, i32 0) #3
  %cmp22 = icmp slt i64 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %14 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i32 0, i32 0), i32 %14)
  %15 = load i8*, i8** %buf, align 8
  call void @free(i8* %15) #3
  store i32 -123, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load i8*, i8** %buf, align 8
  %18 = load i64, i64* %bufsize, align 8
  %conv = trunc i64 %18 to i32
  %call25 = call i32 @cli_readn(i32 %16, i8* %17, i32 %conv)
  %conv26 = sext i32 %call25 to i64
  %19 = load i64, i64* %bufsize, align 8
  %cmp27 = icmp slt i64 %conv26, %19
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.24
  %20 = load i64, i64* %bufsize, align 8
  %conv30 = trunc i64 %20 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0), i32 %conv30)
  %21 = load i8*, i8** %buf, align 8
  call void @free(i8* %21) #3
  store i32 -123, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.24
  %22 = load i8*, i8** %buf, align 8
  %23 = load i64, i64* %bufsize, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %add.ptr, i8** %end, align 8
  %24 = load i8*, i8** %end, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %add.ptr32, i8** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end.31
  %25 = load i8*, i8** %tail, align 8
  %26 = load i8*, i8** %buf, align 8
  %cmp33 = icmp uge i8* %25, %26
  br i1 %cmp33, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %tail, align 8
  %28 = load i8, i8* %27, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp eq i32 %conv35, 80
  br i1 %cmp36, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %for.body
  %29 = load i8*, i8** %end, align 8
  %30 = load i8*, i8** %tail, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp38 = icmp sge i64 %sub.ptr.sub, 20
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.94

land.lhs.true.40:                                 ; preds = %land.lhs.true
  %31 = load i8*, i8** %tail, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %cmp41 = icmp eq i32 %33, 101010256
  br i1 %cmp41, label %if.then.43, label %if.end.94

if.then.43:                                       ; preds = %land.lhs.true.40
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %tail, align 8
  %sub.ptr.lhs.cast44 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %35 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %cmp47 = icmp sge i64 %sub.ptr.sub46, 22
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.43
  %36 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %37 = bitcast %struct.zip_disk_trailer* %36 to i8*
  %38 = load i8*, i8** %tail, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 22, i32 1, i1 false)
  br label %if.end.51

if.else.50:                                       ; preds = %if.then.43
  %39 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %40 = bitcast %struct.zip_disk_trailer* %39 to i8*
  %41 = load i8*, i8** %tail, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 20, i32 1, i1 false)
  %42 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_comment = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %42, i32 0, i32 7
  store i16 0, i16* %z_comment, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  %43 = load i64, i64* %offset, align 8
  %44 = load i8*, i8** %tail, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %44, i64 %43
  %45 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast53 = ptrtoint i8* %add.ptr52 to i64
  %sub.ptr.rhs.cast54 = ptrtoint i8* %45 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %46 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  call void @__fixup_rootseek(i64 %sub.ptr.sub55, %struct.zip_disk_trailer* %46)
  %47 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootseek = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %47, i32 0, i32 6
  %48 = load i32, i32* %z_rootseek, align 1
  store i32 %48, i32* %u_rootseek, align 4
  %49 = load i32, i32* %u_rootseek, align 4
  %50 = load i64, i64* %filesize.addr, align 8
  %conv56 = trunc i64 %50 to i32
  %cmp57 = icmp ugt i32 %49, %conv56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.51
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc.95

if.end.60:                                        ; preds = %if.end.51
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.end.60
  %51 = load i32, i32* %i, align 4
  %cmp62 = icmp slt i32 %51, 2
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.61
  %52 = load i32, i32* %u_rootseek, align 4
  %53 = load i32, i32* %shift, align 4
  %add = add i32 %52, %53
  %conv65 = zext i32 %add to i64
  %add66 = add i64 %conv65, 46
  %54 = load i64, i64* %filesize.addr, align 8
  %conv67 = trunc i64 %54 to i32
  %conv68 = zext i32 %conv67 to i64
  %cmp69 = icmp ult i64 %add66, %conv68
  br i1 %cmp69, label %if.then.71, label %if.end.93

if.then.71:                                       ; preds = %for.body.64
  %55 = load i32, i32* %fd.addr, align 4
  %56 = load i32, i32* %u_rootseek, align 4
  %57 = load i32, i32* %shift, align 4
  %add72 = add i32 %56, %57
  %conv73 = zext i32 %add72 to i64
  %call74 = call i64 @lseek(i32 %55, i64 %conv73, i32 0) #3
  %cmp75 = icmp slt i64 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.71
  %58 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i32 0, i32 0), i32 %58)
  %59 = load i8*, i8** %buf, align 8
  call void @free(i8* %59) #3
  store i32 -123, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.then.71
  %60 = load i32, i32* %fd.addr, align 4
  %61 = bitcast %struct.zip_root_dirent* %dirent to i8*
  %call79 = call i32 @cli_readn(i32 %60, i8* %61, i32 46)
  %conv80 = sext i32 %call79 to i64
  %cmp81 = icmp slt i64 %conv80, 46
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.78
  %62 = load i64, i64* %bufsize, align 8
  %conv84 = trunc i64 %62 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0), i32 %conv84)
  %63 = load i8*, i8** %buf, align 8
  call void @free(i8* %63) #3
  store i32 -123, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.78
  %z_magic = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %dirent, i32 0, i32 0
  %64 = load i32, i32* %z_magic, align 1
  %cmp86 = icmp eq i32 %64, 33639248
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.85
  %65 = load i32, i32* %u_rootseek, align 4
  %66 = load i32, i32* %shift, align 4
  %add89 = add i32 %65, %66
  %67 = load i32, i32* %shift, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0), i32 %add89, i32 %67)
  %68 = load i8*, i8** %buf, align 8
  call void @free(i8* %68) #3
  %69 = load i32, i32* %shift, align 4
  %conv90 = zext i32 %69 to i64
  %70 = load i64*, i64** %start.addr, align 8
  store i64 %conv90, i64* %70, align 8
  store i32 0, i32* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.85
  %71 = load i64*, i64** %start.addr, align 8
  %72 = load i64, i64* %71, align 8
  %conv92 = trunc i64 %72 to i32
  store i32 %conv92, i32* %shift, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.91, %for.body.64
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %land.lhs.true.40, %land.lhs.true, %for.body
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94, %if.then.59
  %74 = load i8*, i8** %tail, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr, i8** %tail, align 8
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  br label %while.body

return:                                           ; preds = %if.then.88, %if.then.83, %if.then.77, %if.then.29, %if.then.23, %if.then.7, %if.then.4, %if.then.1, %if.then
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @__zip_parse_root_directory(i32 %fd, %struct.zip_disk_trailer* %trailer, %struct.__zip_dir_hdr** %hdr_return, i64 %start) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %trailer.addr = alloca %struct.zip_disk_trailer*, align 8
  %hdr_return.addr = alloca %struct.__zip_dir_hdr**, align 8
  %start.addr = alloca i64, align 8
  %dirent = alloca %struct.zip_root_dirent, align 1
  %d = alloca %struct.zip_root_dirent*, align 8
  %hdr = alloca %struct.__zip_dir_hdr*, align 8
  %hdr0 = alloca %struct.__zip_dir_hdr*, align 8
  %prev_hdr = alloca %struct.__zip_dir_hdr*, align 8
  %p_reclen = alloca i16*, align 8
  %entries = alloca i16, align 2
  %offset = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %u_entries = alloca i16, align 2
  %u_rootsize = alloca i32, align 4
  %u_rootseek = alloca i32, align 4
  %u_extras = alloca i16, align 2
  %u_comment = alloca i16, align 2
  %u_namlen = alloca i16, align 2
  %u_flags = alloca i16, align 2
  %bfcnt = alloca i32, align 4
  %pt = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.zip_disk_trailer* %trailer, %struct.zip_disk_trailer** %trailer.addr, align 8
  store %struct.__zip_dir_hdr** %hdr_return, %struct.__zip_dir_hdr*** %hdr_return.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i16* null, i16** %p_reclen, align 8
  %0 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_entries = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %0, i32 0, i32 3
  %1 = load i16, i16* %z_entries, align 1
  store i16 %1, i16* %u_entries, align 2
  %2 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootsize = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %2, i32 0, i32 5
  %3 = load i32, i32* %z_rootsize, align 1
  store i32 %3, i32* %u_rootsize, align 4
  %4 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootseek = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %4, i32 0, i32 6
  %5 = load i32, i32* %z_rootseek, align 1
  %conv = zext i32 %5 to i64
  %6 = load i64, i64* %start.addr, align 8
  %add = add nsw i64 %conv, %6
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %u_rootseek, align 4
  %7 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat(i32 %7, %struct.stat* %sb) #3
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0), i32 %8)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i16, i16* %u_entries, align 2
  %tobool = icmp ne i16 %9, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load i32, i32* %u_rootsize, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %11 = load i64, i64* %st_size, align 8
  %conv5 = trunc i64 %11 to i32
  %cmp6 = icmp ugt i32 %10, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %12 = load i32, i32* %u_rootsize, align 4
  %conv10 = zext i32 %12 to i64
  %call11 = call i8* @cli_malloc(i64 %conv10)
  %13 = bitcast i8* %call11 to %struct.__zip_dir_hdr*
  store %struct.__zip_dir_hdr* %13, %struct.__zip_dir_hdr** %hdr0, align 8
  %14 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %tobool12 = icmp ne %struct.__zip_dir_hdr* %14, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  store i32 -114, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %15 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  store %struct.__zip_dir_hdr* %15, %struct.__zip_dir_hdr** %hdr, align 8
  %16 = load i16, i16* %u_entries, align 2
  store i16 %16, i16* %entries, align 2
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %17 = load i16, i16* %entries, align 2
  %conv15 = zext i16 %17 to i32
  %cmp16 = icmp sgt i32 %conv15, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %fd.addr, align 4
  %19 = load i32, i32* %u_rootseek, align 4
  %20 = load i32, i32* %offset, align 4
  %add18 = add i32 %19, %20
  %conv19 = zext i32 %add18 to i64
  %call20 = call i64 @lseek(i32 %18, i64 %conv19, i32 0) #3
  %cmp21 = icmp slt i64 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  %21 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %22 = bitcast %struct.__zip_dir_hdr* %21 to i8*
  call void @free(i8* %22) #3
  %23 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i32 0, i32 0), i32 %23)
  store i32 -123, i32* %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  %24 = load i32, i32* %fd.addr, align 4
  %25 = bitcast %struct.zip_root_dirent* %dirent to i8*
  %call25 = call i32 @cli_readn(i32 %24, i8* %25, i32 46)
  %conv26 = sext i32 %call25 to i64
  %cmp27 = icmp slt i64 %conv26, 46
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.24
  %26 = load i16, i16* %entries, align 2
  %conv30 = zext i16 %26 to i32
  %27 = load i16, i16* %u_entries, align 2
  %conv31 = zext i16 %27 to i32
  %cmp32 = icmp ne i32 %conv30, %conv31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.29
  store i16 0, i16* %entries, align 2
  br label %for.end

if.else:                                          ; preds = %if.then.29
  %28 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %29 = bitcast %struct.__zip_dir_hdr* %28 to i8*
  call void @free(i8* %29) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0), i64 46)
  store i32 -123, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.24
  store %struct.zip_root_dirent* %dirent, %struct.zip_root_dirent** %d, align 8
  %30 = load i32, i32* %offset, align 4
  %conv36 = zext i32 %30 to i64
  %add37 = add i64 %conv36, 46
  %31 = load i32, i32* %u_rootsize, align 4
  %conv38 = zext i32 %31 to i64
  %cmp39 = icmp ugt i64 %add37, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.35
  %32 = load i16, i16* %entries, align 2
  %conv42 = zext i16 %32 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i32 0, i32 0), i32 %conv42)
  br label %for.end

if.end.43:                                        ; preds = %if.end.35
  %33 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_extras = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %33, i32 0, i32 11
  %34 = load i16, i16* %z_extras, align 1
  store i16 %34, i16* %u_extras, align 2
  %35 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_comment = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %35, i32 0, i32 12
  %36 = load i16, i16* %z_comment, align 1
  store i16 %36, i16* %u_comment, align 2
  %37 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_namlen = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %37, i32 0, i32 10
  %38 = load i16, i16* %z_namlen, align 1
  store i16 %38, i16* %u_namlen, align 2
  %39 = load i16, i16* %u_namlen, align 2
  %conv44 = zext i16 %39 to i32
  %cmp45 = icmp sgt i32 %conv44, 1024
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.43
  %40 = load i16, i16* %entries, align 2
  %conv48 = zext i16 %40 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.26, i32 0, i32 0), i32 %conv48)
  br label %for.end

if.end.49:                                        ; preds = %if.end.43
  %41 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_flags = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %41, i32 0, i32 3
  %42 = load i16, i16* %z_flags, align 1
  store i16 %42, i16* %u_flags, align 2
  %43 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_crc32 = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %43, i32 0, i32 7
  %44 = load i32, i32* %z_crc32, align 1
  %45 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_crc32 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %45, i32 0, i32 2
  store i32 %44, i32* %d_crc32, align 4
  %46 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_csize = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %46, i32 0, i32 8
  %47 = load i32, i32* %z_csize, align 1
  %48 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_csize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %48, i32 0, i32 1
  store i32 %47, i32* %d_csize, align 4
  %49 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_usize = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %49, i32 0, i32 9
  %50 = load i32, i32* %z_usize, align 1
  %51 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_usize = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %51, i32 0, i32 0
  store i32 %50, i32* %d_usize, align 4
  %52 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_off = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %52, i32 0, i32 16
  %53 = load i32, i32* %z_off, align 1
  %conv50 = zext i32 %53 to i64
  %54 = load i64, i64* %start.addr, align 8
  %add51 = add nsw i64 %conv50, %54
  %conv52 = trunc i64 %add51 to i32
  %55 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_off = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %55, i32 0, i32 3
  store i32 %conv52, i32* %d_off, align 4
  %56 = load %struct.zip_root_dirent*, %struct.zip_root_dirent** %d, align 8
  %z_compr = getelementptr inbounds %struct.zip_root_dirent, %struct.zip_root_dirent* %56, i32 0, i32 4
  %57 = load i16, i16* %z_compr, align 1
  %58 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %58, i32 0, i32 6
  store i16 %57, i16* %d_compr, align 2
  store i32 0, i32* %bfcnt, align 4
  %59 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr53 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %59, i32 0, i32 6
  %60 = load i16, i16* %d_compr53, align 2
  %tobool54 = icmp ne i16 %60, 0
  br i1 %tobool54, label %if.else.60, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.49
  %61 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_csize55 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %61, i32 0, i32 1
  %62 = load i32, i32* %d_csize55, align 4
  %63 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_usize56 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %63, i32 0, i32 0
  %64 = load i32, i32* %d_usize56, align 4
  %cmp57 = icmp ne i32 %62, %64
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.27, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.28, i32 0, i32 0))
  %65 = load i32, i32* %bfcnt, align 4
  %idxprom = zext i32 %65 to i64
  %66 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_bf = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %66, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %d_bf, i32 0, i64 %idxprom
  store i16 8, i16* %arrayidx, align 2
  %67 = load i32, i32* %bfcnt, align 4
  %inc = add i32 %67, 1
  store i32 %inc, i32* %bfcnt, align 4
  br label %if.end.75

if.else.60:                                       ; preds = %land.lhs.true, %if.end.49
  %68 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_compr61 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %68, i32 0, i32 6
  %69 = load i16, i16* %d_compr61, align 2
  %conv62 = zext i16 %69 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.74

land.lhs.true.64:                                 ; preds = %if.else.60
  %70 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_csize65 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %70, i32 0, i32 1
  %71 = load i32, i32* %d_csize65, align 4
  %72 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_usize66 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %72, i32 0, i32 0
  %73 = load i32, i32* %d_usize66, align 4
  %cmp67 = icmp eq i32 %71, %73
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %land.lhs.true.64
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.30, i32 0, i32 0))
  %74 = load i32, i32* %bfcnt, align 4
  %idxprom70 = zext i32 %74 to i64
  %75 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_bf71 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %75, i32 0, i32 7
  %arrayidx72 = getelementptr inbounds [2 x i16], [2 x i16]* %d_bf71, i32 0, i64 %idxprom70
  store i16 0, i16* %arrayidx72, align 2
  %76 = load i32, i32* %bfcnt, align 4
  %inc73 = add i32 %76, 1
  store i32 %inc73, i32* %bfcnt, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %land.lhs.true.64, %if.else.60
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.59
  %77 = load i32, i32* %bfcnt, align 4
  %idxprom76 = zext i32 %77 to i64
  %78 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_bf77 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %78, i32 0, i32 7
  %arrayidx78 = getelementptr inbounds [2 x i16], [2 x i16]* %d_bf77, i32 0, i64 %idxprom76
  store i16 -1, i16* %arrayidx78, align 2
  %79 = load i16, i16* %u_flags, align 2
  %80 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_flags = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %80, i32 0, i32 8
  store i16 %79, i16* %d_flags, align 2
  %81 = load i32, i32* %offset, align 4
  %conv79 = zext i32 %81 to i64
  %add80 = add i64 %conv79, 46
  %82 = load i16, i16* %u_namlen, align 2
  %conv81 = zext i16 %82 to i64
  %add82 = add i64 %add80, %conv81
  %83 = load i32, i32* %u_rootsize, align 4
  %conv83 = zext i32 %83 to i64
  %cmp84 = icmp ugt i64 %add82, %conv83
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.75
  %84 = load i16, i16* %entries, align 2
  %conv87 = zext i16 %84 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.31, i32 0, i32 0), i32 %conv87)
  br label %for.end

if.end.88:                                        ; preds = %if.end.75
  %85 = load i32, i32* %fd.addr, align 4
  %86 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_name = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %86, i32 0, i32 9
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %d_name, i32 0, i32 0
  %87 = load i16, i16* %u_namlen, align 2
  %conv89 = zext i16 %87 to i32
  %call90 = call i32 @cli_readn(i32 %85, i8* %arraydecay, i32 %conv89)
  %88 = load i16, i16* %u_namlen, align 2
  %conv91 = zext i16 %88 to i32
  %cmp92 = icmp ne i32 %call90, %conv91
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.88
  %89 = load i16, i16* %entries, align 2
  %conv95 = zext i16 %89 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i32 0, i32 0), i32 %conv95)
  br label %for.end

if.end.96:                                        ; preds = %if.end.88
  %90 = load i16, i16* %u_namlen, align 2
  %idxprom97 = zext i16 %90 to i64
  %91 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_name98 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %91, i32 0, i32 9
  %arrayidx99 = getelementptr inbounds [1 x i8], [1 x i8]* %d_name98, i32 0, i64 %idxprom97
  store i8 0, i8* %arrayidx99, align 1
  %92 = load i16, i16* %u_namlen, align 2
  %93 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_namlen = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %93, i32 0, i32 5
  store i16 %92, i16* %d_namlen, align 2
  %94 = load i16, i16* %u_namlen, align 2
  %conv100 = zext i16 %94 to i64
  %add101 = add i64 46, %conv100
  %95 = load i16, i16* %u_extras, align 2
  %conv102 = zext i16 %95 to i64
  %add103 = add i64 %add101, %conv102
  %96 = load i16, i16* %u_comment, align 2
  %conv104 = zext i16 %96 to i64
  %add105 = add i64 %add103, %conv104
  %97 = load i32, i32* %offset, align 4
  %conv106 = zext i32 %97 to i64
  %add107 = add i64 %conv106, %add105
  %conv108 = trunc i64 %add107 to i32
  store i32 %conv108, i32* %offset, align 4
  %98 = load i32, i32* %offset, align 4
  %99 = load i32, i32* %u_rootsize, align 4
  %cmp109 = icmp ugt i32 %98, %99
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.96
  %100 = load i16, i16* %entries, align 2
  %conv112 = zext i16 %100 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i32 0, i32 0), i32 %conv112)
  br label %for.end

if.end.113:                                       ; preds = %if.end.96
  %101 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %102 = bitcast %struct.__zip_dir_hdr* %101 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %102, i64 32
  %103 = load i16, i16* %u_namlen, align 2
  %conv114 = zext i16 %103 to i32
  %idx.ext = sext i32 %conv114 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %add.ptr116 = getelementptr inbounds i8, i8* %add.ptr115, i64 1
  store i8* %add.ptr116, i8** %pt, align 8
  %104 = load i8*, i8** %pt, align 8
  %105 = ptrtoint i8* %104 to i64
  %and = and i64 %105, 1
  %106 = load i8*, i8** %pt, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %106, i64 %and
  store i8* %add.ptr117, i8** %pt, align 8
  %107 = load i8*, i8** %pt, align 8
  %108 = ptrtoint i8* %107 to i64
  %and118 = and i64 %108, 2
  %109 = load i8*, i8** %pt, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %109, i64 %and118
  store i8* %add.ptr119, i8** %pt, align 8
  %110 = load i8*, i8** %pt, align 8
  %111 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %112 = bitcast %struct.__zip_dir_hdr* %111 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %112 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv120 = trunc i64 %sub.ptr.sub to i16
  %113 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_reclen = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %113, i32 0, i32 4
  store i16 %conv120, i16* %d_reclen, align 2
  %114 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_reclen121 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %114, i32 0, i32 4
  store i16* %d_reclen121, i16** %p_reclen, align 8
  %115 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  store %struct.__zip_dir_hdr* %115, %struct.__zip_dir_hdr** %prev_hdr, align 8
  %116 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %117 = bitcast %struct.__zip_dir_hdr* %116 to i8*
  %118 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr, align 8
  %d_reclen122 = getelementptr inbounds %struct.__zip_dir_hdr, %struct.__zip_dir_hdr* %118, i32 0, i32 4
  %119 = load i16, i16* %d_reclen122, align 2
  %conv123 = zext i16 %119 to i32
  %idx.ext124 = sext i32 %conv123 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %117, i64 %idx.ext124
  %120 = bitcast i8* %add.ptr125 to %struct.__zip_dir_hdr*
  store %struct.__zip_dir_hdr* %120, %struct.__zip_dir_hdr** %hdr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %121 = load i16, i16* %entries, align 2
  %dec = add i16 %121, -1
  store i16 %dec, i16* %entries, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.111, %if.then.94, %if.then.86, %if.then.47, %if.then.41, %if.then.34, %for.cond
  %122 = load i16*, i16** %p_reclen, align 8
  %tobool126 = icmp ne i16* %122, null
  br i1 %tobool126, label %if.then.127, label %if.else.131

if.then.127:                                      ; preds = %for.end
  %123 = load i16*, i16** %p_reclen, align 8
  store i16 0, i16* %123, align 2
  %124 = load %struct.__zip_dir_hdr**, %struct.__zip_dir_hdr*** %hdr_return.addr, align 8
  %tobool128 = icmp ne %struct.__zip_dir_hdr** %124, null
  br i1 %tobool128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.127
  %125 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %126 = load %struct.__zip_dir_hdr**, %struct.__zip_dir_hdr*** %hdr_return.addr, align 8
  store %struct.__zip_dir_hdr* %125, %struct.__zip_dir_hdr** %126, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.then.127
  br label %if.end.132

if.else.131:                                      ; preds = %for.end
  %127 = load %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr** %hdr0, align 8
  %128 = bitcast %struct.__zip_dir_hdr* %127 to i8*
  call void @free(i8* %128) #3
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.end.130
  %129 = load i16, i16* %entries, align 2
  %conv133 = zext i16 %129 to i32
  %tobool134 = icmp ne i32 %conv133, 0
  %cond = select i1 %tobool134, i32 -124, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.else, %if.then.23, %if.then.13, %if.then.8, %if.then.3, %if.then
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @__fixup_rootseek(i64 %offset_of_trailer, %struct.zip_disk_trailer* %trailer) #5 {
entry:
  %offset_of_trailer.addr = alloca i64, align 8
  %trailer.addr = alloca %struct.zip_disk_trailer*, align 8
  store i64 %offset_of_trailer, i64* %offset_of_trailer.addr, align 8
  store %struct.zip_disk_trailer* %trailer, %struct.zip_disk_trailer** %trailer.addr, align 8
  %0 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootseek = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %0, i32 0, i32 6
  %1 = load i32, i32* %z_rootseek, align 1
  %conv = zext i32 %1 to i64
  %2 = load i64, i64* %offset_of_trailer.addr, align 8
  %3 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootsize = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %3, i32 0, i32 5
  %4 = load i32, i32* %z_rootsize, align 1
  %conv1 = zext i32 %4 to i64
  %sub = sub nsw i64 %2, %conv1
  %cmp = icmp sgt i64 %conv, %sub
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %offset_of_trailer.addr, align 8
  %6 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootsize3 = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %6, i32 0, i32 5
  %7 = load i32, i32* %z_rootsize3, align 1
  %conv4 = zext i32 %7 to i64
  %cmp5 = icmp sgt i64 %5, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, i64* %offset_of_trailer.addr, align 8
  %9 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootsize7 = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %9, i32 0, i32 5
  %10 = load i32, i32* %z_rootsize7, align 1
  %conv8 = zext i32 %10 to i64
  %sub9 = sub nsw i64 %8, %conv8
  %conv10 = trunc i64 %sub9 to i32
  %11 = load %struct.zip_disk_trailer*, %struct.zip_disk_trailer** %trailer.addr, align 8
  %z_rootseek11 = getelementptr inbounds %struct.zip_disk_trailer, %struct.zip_disk_trailer* %11, i32 0, i32 6
  store i32 %conv10, i32* %z_rootseek11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
