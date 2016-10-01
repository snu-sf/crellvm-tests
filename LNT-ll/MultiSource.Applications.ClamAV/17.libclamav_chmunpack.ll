; ModuleID = './MultiSource.Applications.ClamAV/17.libclamav_chmunpack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list_tag = type { i8*, i64, i64, i64, %struct.file_list_tag* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.itsf_header_tag = type { [4 x i8], i32, i32, i32, i32, i32, [16 x i8], [16 x i8], i64, i64, i64, i64, i64 }
%struct.itsp_header_tag = type { [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [16 x i8] }
%struct.chunk_header_tag = type { [4 x i8], i32, i32, i32, i32, i8*, i16 }
%struct.lzx_content_tag = type { i64, i64 }
%struct.lzx_reset_table_tag = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.lzx_control_tag = type { i32, [4 x i8], i32, i32, i32, i32 }
%struct.lzx_stream = type { i32, i32, i8, i64, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, [84 x i8], [720 x i8], [314 x i8], [72 x i8], [104 x i16], [5408 x i16], [4596 x i16], [144 x i16], [51 x i32], [51 x i8], [32768 x i8], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.cab_file = type { i32, i16, i64, i8*, i32, i32, i32, %struct.cab_folder*, %struct.cab_file*, %struct.cab_archive*, %struct.cab_state* }
%struct.cab_folder = type { i16, i16, %struct.cab_archive*, i64, %struct.cab_folder* }
%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, %struct.cab_folder*, %struct.cab_file* }
%struct.cab_state = type { i8*, i8*, [38912 x i8], i16, i16, i8*, i16 }

@.str = private unnamed_addr constant [5 x i8] c"ITSF\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ITSF signature mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"---- ITSF ----\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Signature:\09%c%c%c%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Version:\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Header len:\09%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Lang ID:\09%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Sec0 offset:\09%llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Sec0 len:\09%llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Dir offset:\09%llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Dir len:\09%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Data offset:\09%llu\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ITSP\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ITSP signature mismatch\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ITSP header mismatch\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"---- ITSP ----\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Block len:\09%ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Block idx int:\09%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Index depth:\09%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Index root:\09%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Index head:\09%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Index tail:\09%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Num Blocks:\09%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Lang ID:\09%lu\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"PMGL\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"PMGI\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"read chunk entries failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Bad CHM name_len detected\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"CHM file name too long: %llu\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Section: %llu Offset: %llu Length: %llu, Name: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"---- Chunk ----\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Free Space:\09%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Prev Block:\09%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Next Block:\09%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Num entries:\09%d\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"%s/clamav-unchm.bin\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"open failed for %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"::DataSpace/Storage/MSCompressed/ControlData\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"::DataSpace/Storage/MSCompressed/Content\00", align 1
@.str.40 = private unnamed_addr constant [106 x i8] c"::DataSpace/Storage/MSCompressed/Transform/{7FC28940-9D31-11D0-9B27-00A0C91E9C7C}/InstanceData/ResetTable\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"bad control window size: 0x%x\0A\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"bad reset_interval: 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"Compressed offset: %llu\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"lzx_init failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"re-open output failed\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"seek in output failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"%s/%d-%llu.chm\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"failed to copy %lu bytes\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"LZXC\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"bad sys_control signature\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"Unknown sys_control version:%d\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"---- Control ----\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Length:\09\09%lu\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Reset Interval:\09%d\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Window Size:\09%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Cache Size:\09%d\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"---- Content ----\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"Offset:\09%llu\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Length:\09%llu\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"bad sys_reset_table frame_len: 0x%x\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"bad sys_reset_table entry_size: 0x%x\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"---- Reset Table ----\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Num Entries:\09%lu\0A\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Entry Size:\09%lu\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Table Offset:\09%lu\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Uncom Len:\09%llu\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"Com Len:\09%llu\0A\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Frame Len:\09%llu\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @chm_unpack(i32 %fd, i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %m_area = alloca i8*, align 8
  %m_length = alloca i64, align 8
  %offset = alloca i64, align 8
  %file_l = alloca %struct.file_list_tag*, align 8
  %sys_file_l = alloca %struct.file_list_tag*, align 8
  %statbuf = alloca %struct.stat, align 8
  %itsf_hdr = alloca %struct.itsf_header_tag, align 1
  %itsp_hdr = alloca %struct.itsp_header_tag, align 1
  %num_chunks = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 0, i32* %retval1, align 4
  store i8* null, i8** %m_area, align 8
  store i64 0, i64* %m_length, align 8
  %call = call i8* @cli_malloc(i64 40)
  %0 = bitcast i8* %call to %struct.file_list_tag*
  store %struct.file_list_tag* %0, %struct.file_list_tag** %file_l, align 8
  %1 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %tobool = icmp ne %struct.file_list_tag* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %next = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %2, i32 0, i32 4
  store %struct.file_list_tag* null, %struct.file_list_tag** %next, align 8
  %3 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %name = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %3, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %call2 = call i8* @cli_malloc(i64 40)
  %4 = bitcast i8* %call2 to %struct.file_list_tag*
  store %struct.file_list_tag* %4, %struct.file_list_tag** %sys_file_l, align 8
  %5 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  %tobool3 = icmp ne %struct.file_list_tag* %5, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %7 = bitcast %struct.file_list_tag* %6 to i8*
  call void @free(i8* %7) #4
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  %next6 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %8, i32 0, i32 4
  store %struct.file_list_tag* null, %struct.file_list_tag** %next6, align 8
  %9 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  %name7 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %9, i32 0, i32 0
  store i8* null, i8** %name7, align 8
  %10 = load i32, i32* %fd.addr, align 4
  %call8 = call i32 @fstat(i32 %10, %struct.stat* %statbuf) #4
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.5
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %11 = load i64, i64* %st_size, align 8
  %cmp10 = icmp slt i64 %11, 96
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  br label %abort

if.end.12:                                        ; preds = %if.then.9
  %st_size13 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %12 = load i64, i64* %st_size13, align 8
  store i64 %12, i64* %m_length, align 8
  %13 = load i64, i64* %m_length, align 8
  %14 = load i32, i32* %fd.addr, align 4
  %call14 = call i8* @mmap(i8* null, i64 %13, i32 1, i32 2, i32 %14, i64 0) #4
  store i8* %call14, i8** %m_area, align 8
  %15 = load i8*, i8** %m_area, align 8
  %cmp15 = icmp eq i8* %15, inttoptr (i64 -1 to i8*)
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i8* null, i8** %m_area, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.5
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load i8*, i8** %m_area, align 8
  %18 = load i64, i64* %m_length, align 8
  %call19 = call i32 @itsf_read_header(i32 %16, %struct.itsf_header_tag* %itsf_hdr, i8* %17, i64 %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  br label %abort

if.end.22:                                        ; preds = %if.end.18
  call void @itsf_print_header(%struct.itsf_header_tag* %itsf_hdr)
  %19 = load i32, i32* %fd.addr, align 4
  %dir_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %itsf_hdr, i32 0, i32 10
  %20 = load i64, i64* %dir_offset, align 1
  %21 = load i8*, i8** %m_area, align 8
  %22 = load i64, i64* %m_length, align 8
  %call23 = call i32 @itsp_read_header(i32 %19, %struct.itsp_header_tag* %itsp_hdr, i64 %20, i8* %21, i64 %22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  br label %abort

if.end.26:                                        ; preds = %if.end.22
  call void @itsp_print_header(%struct.itsp_header_tag* %itsp_hdr)
  %dir_offset27 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %itsf_hdr, i32 0, i32 10
  %23 = load i64, i64* %dir_offset27, align 1
  %add = add i64 %23, 84
  store i64 %add, i64* %offset, align 8
  %index_head = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 8
  %24 = load i32, i32* %index_head, align 1
  %cmp28 = icmp sgt i32 %24, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %index_head30 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 8
  %25 = load i32, i32* %index_head30, align 1
  %block_len = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 4
  %26 = load i32, i32* %block_len, align 1
  %mul = mul i32 %25, %26
  %conv = zext i32 %mul to i64
  %27 = load i64, i64* %offset, align 8
  %add31 = add nsw i64 %27, %conv
  store i64 %add31, i64* %offset, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %index_tail = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 9
  %28 = load i32, i32* %index_tail, align 1
  %index_head33 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 8
  %29 = load i32, i32* %index_head33, align 1
  %sub = sub nsw i32 %28, %29
  %add34 = add nsw i32 %sub, 1
  store i32 %add34, i32* %num_chunks, align 4
  %version = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %itsf_hdr, i32 0, i32 1
  %30 = load i32, i32* %version, align 1
  %cmp35 = icmp slt i32 %30, 3
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %if.end.32
  %dir_offset38 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %itsf_hdr, i32 0, i32 10
  %31 = load i64, i64* %dir_offset38, align 1
  %add39 = add i64 %31, 84
  %block_len40 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 4
  %32 = load i32, i32* %block_len40, align 1
  %num_blocks = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 11
  %33 = load i32, i32* %num_blocks, align 1
  %mul41 = mul i32 %32, %33
  %conv42 = zext i32 %mul41 to i64
  %add43 = add i64 %add39, %conv42
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %itsf_hdr, i32 0, i32 12
  store i64 %add43, i64* %data_offset, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %if.end.32
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end.44
  %34 = load i32, i32* %num_chunks, align 4
  %tobool45 = icmp ne i32 %34, 0
  br i1 %tobool45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %fd.addr, align 4
  %36 = load i64, i64* %offset, align 8
  %block_len46 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 4
  %37 = load i32, i32* %block_len46, align 1
  %38 = load i8*, i8** %m_area, align 8
  %39 = load i64, i64* %m_length, align 8
  %40 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %41 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  %call47 = call i32 @read_chunk(i32 %35, i64 %36, i32 %37, i8* %38, i64 %39, %struct.file_list_tag* %40, %struct.file_list_tag* %41)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %while.body
  br label %abort

if.end.50:                                        ; preds = %while.body
  %42 = load i32, i32* %num_chunks, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %num_chunks, align 4
  %block_len51 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %itsp_hdr, i32 0, i32 4
  %43 = load i32, i32* %block_len51, align 1
  %conv52 = zext i32 %43 to i64
  %44 = load i64, i64* %offset, align 8
  %add53 = add nsw i64 %44, %conv52
  store i64 %add53, i64* %offset, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %fd.addr, align 4
  %46 = load i8*, i8** %dirname.addr, align 8
  %47 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  %48 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  %49 = load i8*, i8** %m_area, align 8
  %50 = load i64, i64* %m_length, align 8
  %call54 = call i32 @chm_decompress_stream(i32 %45, i8* %46, %struct.itsf_header_tag* %itsf_hdr, %struct.file_list_tag* %47, %struct.file_list_tag* %48, i8* %49, i64 %50)
  store i32 1, i32* %retval1, align 4
  br label %abort

abort:                                            ; preds = %while.end, %if.then.49, %if.then.25, %if.then.21, %if.then.11
  %51 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l, align 8
  call void @free_file_list(%struct.file_list_tag* %51)
  %52 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l, align 8
  call void @free_file_list(%struct.file_list_tag* %52)
  %53 = load i8*, i8** %m_area, align 8
  %tobool55 = icmp ne i8* %53, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %abort
  %54 = load i8*, i8** %m_area, align 8
  %55 = load i64, i64* %m_length, align 8
  %call57 = call i32 @munmap(i8* %54, i64 %55) #4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %abort
  %56 = load i32, i32* %retval1, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.4, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @itsf_read_header(i32 %fd, %struct.itsf_header_tag* %itsf_hdr, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %2 = bitcast %struct.itsf_header_tag* %1 to i8*
  %3 = load i8*, i8** %m_area.addr, align 8
  %4 = load i64, i64* %m_length.addr, align 8
  %call = call i32 @chm_read_data(i32 %0, i8* %2, i64 0, i64 96, i8* %3, i64 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %signature = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i32 0
  %call1 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4) #5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %version = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %6, i32 0, i32 1
  %7 = load i32, i32* %version, align 1
  %8 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %version4 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %8, i32 0, i32 1
  store i32 %7, i32* %version4, align 1
  %9 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %header_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %9, i32 0, i32 2
  %10 = load i32, i32* %header_len, align 1
  %11 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %header_len5 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %11, i32 0, i32 2
  store i32 %10, i32* %header_len5, align 1
  %12 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %last_modified = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %12, i32 0, i32 4
  %13 = load i32, i32* %last_modified, align 1
  %14 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %last_modified6 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %14, i32 0, i32 4
  store i32 %13, i32* %last_modified6, align 1
  %15 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %lang_id = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %15, i32 0, i32 5
  %16 = load i32, i32* %lang_id, align 1
  %17 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %lang_id7 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %17, i32 0, i32 5
  store i32 %16, i32* %lang_id7, align 1
  %18 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %18, i32 0, i32 8
  %19 = load i64, i64* %sec0_offset, align 1
  %20 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_offset8 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %20, i32 0, i32 8
  store i64 %19, i64* %sec0_offset8, align 1
  %21 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %21, i32 0, i32 9
  %22 = load i64, i64* %sec0_len, align 1
  %23 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_len9 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %23, i32 0, i32 9
  store i64 %22, i64* %sec0_len9, align 1
  %24 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %24, i32 0, i32 10
  %25 = load i64, i64* %dir_offset, align 1
  %26 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_offset10 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %26, i32 0, i32 10
  store i64 %25, i64* %dir_offset10, align 1
  %27 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %27, i32 0, i32 11
  %28 = load i64, i64* %dir_len, align 1
  %29 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_len11 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %29, i32 0, i32 11
  store i64 %28, i64* %dir_len11, align 1
  %30 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %version12 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %30, i32 0, i32 1
  %31 = load i32, i32* %version12, align 1
  %cmp13 = icmp sgt i32 %31, 2
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.3
  %32 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %32, i32 0, i32 12
  %33 = load i64, i64* %data_offset, align 1
  %34 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset15 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %34, i32 0, i32 12
  store i64 %33, i64* %data_offset15, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.2, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @itsf_print_header(%struct.itsf_header_tag* %itsf_hdr) #0 {
entry:
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %0 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %tobool = icmp ne %struct.itsf_header_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %signature = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %signature1 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i32 0, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %signature4 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %signature4, i32 0, i64 2
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %signature7 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %signature7, i32 0, i64 3
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9)
  %9 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %version = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %9, i32 0, i32 1
  %10 = load i32, i32* %version, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %10)
  %11 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %header_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %11, i32 0, i32 2
  %12 = load i32, i32* %header_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %12)
  %13 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %lang_id = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %13, i32 0, i32 5
  %14 = load i32, i32* %lang_id, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 %14)
  %15 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %15, i32 0, i32 8
  %16 = load i64, i64* %sec0_offset, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i64 %16)
  %17 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %sec0_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %17, i32 0, i32 9
  %18 = load i64, i64* %sec0_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i64 %18)
  %19 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %19, i32 0, i32 10
  %20 = load i64, i64* %dir_offset, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 %20)
  %21 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %dir_len = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %21, i32 0, i32 11
  %22 = load i64, i64* %dir_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 %22)
  %23 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %version10 = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %23, i32 0, i32 1
  %24 = load i32, i32* %version10, align 1
  %cmp = icmp sgt i32 %24, 2
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %25 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %25, i32 0, i32 12
  %26 = load i64, i64* %data_offset, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i64 %26)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.12, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @itsp_read_header(i32 %fd, %struct.itsp_header_tag* %itsp_hdr, i64 %offset, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %itsp_hdr.addr = alloca %struct.itsp_header_tag*, align 8
  %offset.addr = alloca i64, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.itsp_header_tag* %itsp_hdr, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %2 = bitcast %struct.itsp_header_tag* %1 to i8*
  %3 = load i64, i64* %offset.addr, align 8
  %4 = load i8*, i8** %m_area.addr, align 8
  %5 = load i64, i64* %m_length.addr, align 8
  %call = call i32 @chm_read_data(i32 %0, i8* %2, i64 %3, i64 84, i8* %4, i64 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %signature = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i32 0
  %call1 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %version = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %7, i32 0, i32 1
  %8 = load i32, i32* %version, align 1
  %9 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %version4 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %9, i32 0, i32 1
  store i32 %8, i32* %version4, align 1
  %10 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %header_len = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %10, i32 0, i32 2
  %11 = load i32, i32* %header_len, align 1
  %12 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %header_len5 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %12, i32 0, i32 2
  store i32 %11, i32* %header_len5, align 1
  %13 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %block_len = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %13, i32 0, i32 4
  %14 = load i32, i32* %block_len, align 1
  %15 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %block_len6 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %15, i32 0, i32 4
  store i32 %14, i32* %block_len6, align 1
  %16 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %blockidx_intvl = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %16, i32 0, i32 5
  %17 = load i32, i32* %blockidx_intvl, align 1
  %18 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %blockidx_intvl7 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %18, i32 0, i32 5
  store i32 %17, i32* %blockidx_intvl7, align 1
  %19 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_depth = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %19, i32 0, i32 6
  %20 = load i32, i32* %index_depth, align 1
  %21 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_depth8 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %21, i32 0, i32 6
  store i32 %20, i32* %index_depth8, align 1
  %22 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_root = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %22, i32 0, i32 7
  %23 = load i32, i32* %index_root, align 1
  %24 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_root9 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %24, i32 0, i32 7
  store i32 %23, i32* %index_root9, align 1
  %25 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_head = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %25, i32 0, i32 8
  %26 = load i32, i32* %index_head, align 1
  %27 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_head10 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %27, i32 0, i32 8
  store i32 %26, i32* %index_head10, align 1
  %28 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_tail = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %28, i32 0, i32 9
  %29 = load i32, i32* %index_tail, align 1
  %30 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_tail11 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %30, i32 0, i32 9
  store i32 %29, i32* %index_tail11, align 1
  %31 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %num_blocks = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %31, i32 0, i32 11
  %32 = load i32, i32* %num_blocks, align 1
  %33 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %num_blocks12 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %33, i32 0, i32 11
  store i32 %32, i32* %num_blocks12, align 1
  %34 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %lang_id = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %34, i32 0, i32 12
  %35 = load i32, i32* %lang_id, align 1
  %36 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %lang_id13 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %36, i32 0, i32 12
  store i32 %35, i32* %lang_id13, align 1
  %37 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %version14 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %37, i32 0, i32 1
  %38 = load i32, i32* %version14, align 1
  %cmp15 = icmp ne i32 %38, 1
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %39 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %header_len16 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %39, i32 0, i32 2
  %40 = load i32, i32* %header_len16, align 1
  %cmp17 = icmp ne i32 %40, 84
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.2, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @itsp_print_header(%struct.itsp_header_tag* %itsp_hdr) #0 {
entry:
  %itsp_hdr.addr = alloca %struct.itsp_header_tag*, align 8
  store %struct.itsp_header_tag* %itsp_hdr, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %0 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %tobool = icmp ne %struct.itsp_header_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  %1 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %signature = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %signature1 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i32 0, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %signature4 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %signature4, i32 0, i64 2
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %signature7 = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %signature7, i32 0, i64 3
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9)
  %9 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %version = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %9, i32 0, i32 1
  %10 = load i32, i32* %version, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %10)
  %11 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %block_len = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %11, i32 0, i32 4
  %12 = load i32, i32* %block_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %12)
  %13 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %blockidx_intvl = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %13, i32 0, i32 5
  %14 = load i32, i32* %blockidx_intvl, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %14)
  %15 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_depth = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %15, i32 0, i32 6
  %16 = load i32, i32* %index_depth, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 %16)
  %17 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_root = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %17, i32 0, i32 7
  %18 = load i32, i32* %index_root, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 %18)
  %19 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_head = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %19, i32 0, i32 8
  %20 = load i32, i32* %index_head, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 %20)
  %21 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %index_tail = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %21, i32 0, i32 9
  %22 = load i32, i32* %index_tail, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 %22)
  %23 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %num_blocks = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %23, i32 0, i32 11
  %24 = load i32, i32* %num_blocks, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 %24)
  %25 = load %struct.itsp_header_tag*, %struct.itsp_header_tag** %itsp_hdr.addr, align 8
  %lang_id = getelementptr inbounds %struct.itsp_header_tag, %struct.itsp_header_tag* %25, i32 0, i32 12
  %26 = load i32, i32* %lang_id, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 %26)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_chunk(i32 %fd, i64 %offset, i32 %chunk_len, i8* %m_area, i64 %m_length, %struct.file_list_tag* %file_l, %struct.file_list_tag* %sys_file_l) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %chunk_len.addr = alloca i32, align 4
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  %file_l.addr = alloca %struct.file_list_tag*, align 8
  %sys_file_l.addr = alloca %struct.file_list_tag*, align 8
  %chunk_hdr = alloca %struct.chunk_header_tag*, align 8
  %retval1 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %chunk_len, i32* %chunk_len.addr, align 4
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  store %struct.file_list_tag* %file_l, %struct.file_list_tag** %file_l.addr, align 8
  store %struct.file_list_tag* %sys_file_l, %struct.file_list_tag** %sys_file_l.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load i32, i32* %chunk_len.addr, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %chunk_len.addr, align 4
  %cmp2 = icmp ugt i32 %1, 33554432
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call i8* @cli_malloc(i64 40)
  %2 = bitcast i8* %call to %struct.chunk_header_tag*
  store %struct.chunk_header_tag* %2, %struct.chunk_header_tag** %chunk_hdr, align 8
  %3 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %tobool = icmp ne %struct.chunk_header_tag* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %chunk_len.addr, align 4
  %conv = zext i32 %4 to i64
  %call5 = call i8* @cli_malloc(i64 %conv)
  %5 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %5, i32 0, i32 5
  store i8* %call5, i8** %chunk_data, align 8
  %6 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data6 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %6, i32 0, i32 5
  %7 = load i8*, i8** %chunk_data6, align 8
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %8 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %9 = bitcast %struct.chunk_header_tag* %8 to i8*
  call void @free(i8* %9) #4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %10 = load i32, i32* %fd.addr, align 4
  %11 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %signature = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i32 0
  %12 = load i64, i64* %offset.addr, align 8
  %13 = load i8*, i8** %m_area.addr, align 8
  %14 = load i64, i64* %m_length.addr, align 8
  %call10 = call i32 @chm_read_data(i32 %10, i8* %arraydecay, i64 %12, i64 8, i8* %13, i64 %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %abort

if.end.13:                                        ; preds = %if.end.9
  %15 = load i32, i32* %fd.addr, align 4
  %16 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data14 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %16, i32 0, i32 5
  %17 = load i8*, i8** %chunk_data14, align 8
  %18 = load i64, i64* %offset.addr, align 8
  %19 = load i32, i32* %chunk_len.addr, align 4
  %conv15 = zext i32 %19 to i64
  %20 = load i8*, i8** %m_area.addr, align 8
  %21 = load i64, i64* %m_length.addr, align 8
  %call16 = call i32 @chm_read_data(i32 %15, i8* %17, i64 %18, i64 %conv15, i8* %20, i64 %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  br label %abort

if.end.19:                                        ; preds = %if.end.13
  %22 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %free_space = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %22, i32 0, i32 1
  %23 = load i32, i32* %free_space, align 1
  %24 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %free_space20 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %24, i32 0, i32 1
  store i32 %23, i32* %free_space20, align 1
  %25 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %signature21 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %25, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %signature21, i32 0, i32 0
  %call23 = call i32 @memcmp(i8* %arraydecay22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i64 4) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.19
  %26 = load i32, i32* %fd.addr, align 4
  %27 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %unknown = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %27, i32 0, i32 2
  %28 = bitcast i32* %unknown to i8*
  %29 = load i64, i64* %offset.addr, align 8
  %add = add nsw i64 %29, 8
  %30 = load i8*, i8** %m_area.addr, align 8
  %31 = load i64, i64* %m_length.addr, align 8
  %call27 = call i32 @chm_read_data(i32 %26, i8* %28, i64 %add, i64 12, i8* %30, i64 %31)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  br label %abort

if.end.30:                                        ; preds = %if.then.26
  %32 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %block_next = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %32, i32 0, i32 4
  %33 = load i32, i32* %block_next, align 1
  %34 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %block_next31 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %34, i32 0, i32 4
  store i32 %33, i32* %block_next31, align 1
  %35 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %block_prev = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %35, i32 0, i32 3
  %36 = load i32, i32* %block_prev, align 1
  %37 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %block_prev32 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %37, i32 0, i32 3
  store i32 %36, i32* %block_prev32, align 1
  %38 = load i32, i32* %chunk_len.addr, align 4
  %sub = sub i32 %38, 2
  %idxprom = zext i32 %sub to i64
  %39 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data33 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %39, i32 0, i32 5
  %40 = load i8*, i8** %chunk_data33, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx, align 1
  %conv34 = zext i8 %41 to i32
  %shl = shl i32 %conv34, 0
  %42 = load i32, i32* %chunk_len.addr, align 4
  %sub35 = sub i32 %42, 1
  %idxprom36 = zext i32 %sub35 to i64
  %43 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data37 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %43, i32 0, i32 5
  %44 = load i8*, i8** %chunk_data37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 %idxprom36
  %45 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %45 to i32
  %shl40 = shl i32 %conv39, 8
  %or = or i32 %shl, %shl40
  %conv41 = trunc i32 %or to i16
  %46 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %num_entries = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %46, i32 0, i32 6
  store i16 %conv41, i16* %num_entries, align 2
  %47 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data42 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %47, i32 0, i32 5
  %48 = load i8*, i8** %chunk_data42, align 8
  %49 = load i32, i32* %chunk_len.addr, align 4
  %50 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %num_entries43 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %50, i32 0, i32 6
  %51 = load i16, i16* %num_entries43, align 2
  %52 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %53 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l.addr, align 8
  %call44 = call i32 @read_chunk_entries(i8* %48, i32 %49, i16 zeroext %51, %struct.file_list_tag* %52, %struct.file_list_tag* %53)
  br label %if.end.52

if.else:                                          ; preds = %if.end.19
  %54 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %signature45 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %54, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [4 x i8], [4 x i8]* %signature45, i32 0, i32 0
  %call47 = call i32 @memcmp(i8* %arraydecay46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i64 4) #5
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.else
  br label %abort

if.end.51:                                        ; preds = %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.30
  %55 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  call void @print_chunk(%struct.chunk_header_tag* %55)
  store i32 1, i32* %retval1, align 4
  br label %abort

abort:                                            ; preds = %if.end.52, %if.then.50, %if.then.29, %if.then.18, %if.then.12
  %56 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %chunk_data53 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %56, i32 0, i32 5
  %57 = load i8*, i8** %chunk_data53, align 8
  call void @free(i8* %57) #4
  %58 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk_hdr, align 8
  %59 = bitcast %struct.chunk_header_tag* %58 to i8*
  call void @free(i8* %59) #4
  %60 = load i32, i32* %retval1, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %abort, %if.then.8, %if.then.3, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @chm_decompress_stream(i32 %fd, i8* %dirname, %struct.itsf_header_tag* %itsf_hdr, %struct.file_list_tag* %file_l, %struct.file_list_tag* %sys_file_l, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  %file_l.addr = alloca %struct.file_list_tag*, align 8
  %sys_file_l.addr = alloca %struct.file_list_tag*, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  %entry1 = alloca %struct.file_list_tag*, align 8
  %lzx_content = alloca %struct.lzx_content_tag*, align 8
  %lzx_reset_table = alloca %struct.lzx_reset_table_tag*, align 8
  %lzx_control = alloca %struct.lzx_control_tag*, align 8
  %window_bits = alloca i32, align 4
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  %tmpfd = alloca i32, align 4
  %ofd = alloca i32, align 4
  %retval2 = alloca i32, align 4
  %com_offset = alloca i64, align 8
  %stream = alloca %struct.lzx_stream*, align 8
  %filename = alloca [1024 x i8], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  store %struct.file_list_tag* %file_l, %struct.file_list_tag** %file_l.addr, align 8
  store %struct.file_list_tag* %sys_file_l, %struct.file_list_tag** %sys_file_l.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  store %struct.lzx_content_tag* null, %struct.lzx_content_tag** %lzx_content, align 8
  store %struct.lzx_reset_table_tag* null, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  store %struct.lzx_control_tag* null, %struct.lzx_control_tag** %lzx_control, align 8
  store i32 0, i32* %retval2, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* %0) #4
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (i8*, i32, ...) @open(i8* %arraydecay3, i32 577, i32 448)
  store i32 %call4, i32* %tmpfd, align 4
  %1 = load i32, i32* %tmpfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l.addr, align 8
  %next = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %2, i32 0, i32 4
  %3 = load %struct.file_list_tag*, %struct.file_list_tag** %next, align 8
  store %struct.file_list_tag* %3, %struct.file_list_tag** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end
  %4 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %tobool = icmp ne %struct.file_list_tag* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %name = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call6 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0)) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %7 = load i32, i32* %fd.addr, align 4
  %8 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %9 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %10 = load i8*, i8** %m_area.addr, align 8
  %11 = load i64, i64* %m_length.addr, align 8
  %call9 = call %struct.lzx_control_tag* @read_sys_control(i32 %7, %struct.itsf_header_tag* %8, %struct.file_list_tag* %9, i8* %10, i64 %11)
  store %struct.lzx_control_tag* %call9, %struct.lzx_control_tag** %lzx_control, align 8
  br label %if.end.23

if.else:                                          ; preds = %while.body
  %12 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %name10 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %12, i32 0, i32 0
  %13 = load i8*, i8** %name10, align 8
  %call11 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %14 = load i32, i32* %fd.addr, align 4
  %15 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %16 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %call14 = call %struct.lzx_content_tag* @read_sys_content(i32 %14, %struct.itsf_header_tag* %15, %struct.file_list_tag* %16)
  store %struct.lzx_content_tag* %call14, %struct.lzx_content_tag** %lzx_content, align 8
  br label %if.end.22

if.else.15:                                       ; preds = %if.else
  %17 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %name16 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %17, i32 0, i32 0
  %18 = load i8*, i8** %name16, align 8
  %call17 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.40, i32 0, i32 0)) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.15
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %21 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %22 = load i8*, i8** %m_area.addr, align 8
  %23 = load i64, i64* %m_length.addr, align 8
  %call20 = call %struct.lzx_reset_table_tag* @read_sys_reset_table(i32 %19, %struct.itsf_header_tag* %20, %struct.file_list_tag* %21, i8* %22, i64 %23)
  store %struct.lzx_reset_table_tag* %call20, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.8
  %24 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %next24 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %24, i32 0, i32 4
  %25 = load %struct.file_list_tag*, %struct.file_list_tag** %next24, align 8
  store %struct.file_list_tag* %25, %struct.file_list_tag** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %tobool25 = icmp ne %struct.lzx_content_tag* %26, null
  br i1 %tobool25, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %while.end
  %27 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %tobool26 = icmp ne %struct.lzx_reset_table_tag* %27, null
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.29

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %28 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %tobool28 = icmp ne %struct.lzx_control_tag* %28, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %while.end
  br label %abort

if.end.30:                                        ; preds = %lor.lhs.false.27
  %29 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %29, i32 0, i32 4
  %30 = load i32, i32* %window_size, align 1
  switch i32 %30, label %sw.default [
    i32 32768, label %sw.bb
    i32 65536, label %sw.bb.31
    i32 131072, label %sw.bb.32
    i32 262144, label %sw.bb.33
    i32 524288, label %sw.bb.34
    i32 1048576, label %sw.bb.35
    i32 2097152, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.30
  store i32 15, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.30
  store i32 16, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.30
  store i32 17, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.30
  store i32 18, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.30
  store i32 19, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.30
  store i32 20, i32* %window_bits, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.30
  store i32 21, i32* %window_bits, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.30
  %31 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size37 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %31, i32 0, i32 4
  %32 = load i32, i32* %window_size37, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 %32)
  br label %abort

sw.epilog:                                        ; preds = %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb
  %33 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %33, i32 0, i32 3
  %34 = load i32, i32* %reset_interval, align 1
  %rem = urem i32 %34, 32768
  %tobool38 = icmp ne i32 %rem, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.epilog
  %35 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size40 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %35, i32 0, i32 4
  %36 = load i32, i32* %window_size40, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i32 %36)
  br label %abort

if.end.41:                                        ; preds = %sw.epilog
  %37 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %uncom_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %37, i32 0, i32 3
  %38 = load i64, i64* %uncom_len, align 1
  %conv = trunc i64 %38 to i32
  store i32 %conv, i32* %length, align 4
  %39 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval42 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %39, i32 0, i32 3
  %40 = load i32, i32* %reset_interval42, align 1
  %41 = load i32, i32* %length, align 4
  %add = add i32 %41, %40
  store i32 %add, i32* %length, align 4
  %42 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval43 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %42, i32 0, i32 3
  %43 = load i32, i32* %reset_interval43, align 1
  %sub = sub i32 0, %43
  %44 = load i32, i32* %length, align 4
  %and = and i32 %44, %sub
  store i32 %and, i32* %length, align 4
  %45 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %offset = getelementptr inbounds %struct.lzx_content_tag, %struct.lzx_content_tag* %45, i32 0, i32 0
  %46 = load i64, i64* %offset, align 8
  store i64 %46, i64* %com_offset, align 8
  %47 = load i64, i64* %com_offset, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i64 %47)
  %48 = load i32, i32* %fd.addr, align 4
  %49 = load i32, i32* %tmpfd, align 4
  %50 = load i32, i32* %window_bits, align 4
  %51 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval44 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %51, i32 0, i32 3
  %52 = load i32, i32* %reset_interval44, align 1
  %div = udiv i32 %52, 32768
  %53 = load i32, i32* %length, align 4
  %conv45 = sext i32 %53 to i64
  %call46 = call %struct.lzx_stream* @lzx_init(i32 %48, i32 %49, i32 %50, i32 %div, i32 4096, i64 %conv45, %struct.cab_file* null, i32 (%struct.cab_file*, i8*, i32)* null)
  store %struct.lzx_stream* %call46, %struct.lzx_stream** %stream, align 8
  %54 = load i32, i32* %fd.addr, align 4
  %55 = load i64, i64* %com_offset, align 8
  %call47 = call i64 @lseek(i32 %54, i64 %55, i32 0) #4
  %56 = load %struct.lzx_stream*, %struct.lzx_stream** %stream, align 8
  %tobool48 = icmp ne %struct.lzx_stream* %56, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.41
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0))
  br label %abort

if.end.50:                                        ; preds = %if.end.41
  %57 = load %struct.lzx_stream*, %struct.lzx_stream** %stream, align 8
  %58 = load i32, i32* %length, align 4
  %conv51 = sext i32 %58 to i64
  %call52 = call i32 @lzx_decompress(%struct.lzx_stream* %57, i64 %conv51)
  %59 = load %struct.lzx_stream*, %struct.lzx_stream** %stream, align 8
  call void @lzx_free(%struct.lzx_stream* %59)
  %60 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %next53 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %60, i32 0, i32 4
  %61 = load %struct.file_list_tag*, %struct.file_list_tag** %next53, align 8
  store %struct.file_list_tag* %61, %struct.file_list_tag** %entry1, align 8
  %62 = load i32, i32* %tmpfd, align 4
  %call54 = call i32 @close(i32 %62)
  %arraydecay55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call56 = call i32 (i8*, i32, ...) @open(i8* %arraydecay55, i32 0)
  store i32 %call56, i32* %tmpfd, align 4
  %63 = load i32, i32* %tmpfd, align 4
  %cmp57 = icmp slt i32 %63, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.50
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0))
  br label %abort

if.end.60:                                        ; preds = %if.end.50
  %arraydecay61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call62 = call i32 @unlink(i8* %arraydecay61) #4
  store i32 0, i32* %count, align 4
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.96, %if.then.86, %if.then.76, %if.then.68, %if.end.60
  %64 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %tobool64 = icmp ne %struct.file_list_tag* %64, null
  br i1 %tobool64, label %while.body.65, label %while.end.99

while.body.65:                                    ; preds = %while.cond.63
  %65 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %section = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %65, i32 0, i32 1
  %66 = load i64, i64* %section, align 8
  %cmp66 = icmp ne i64 %66, 1
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %while.body.65
  %67 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %next69 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %67, i32 0, i32 4
  %68 = load %struct.file_list_tag*, %struct.file_list_tag** %next69, align 8
  store %struct.file_list_tag* %68, %struct.file_list_tag** %entry1, align 8
  br label %while.cond.63

if.end.70:                                        ; preds = %while.body.65
  %69 = load i32, i32* %tmpfd, align 4
  %70 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %offset71 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %70, i32 0, i32 2
  %71 = load i64, i64* %offset71, align 8
  %call72 = call i64 @lseek(i32 %69, i64 %71, i32 0) #4
  %72 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %offset73 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %72, i32 0, i32 2
  %73 = load i64, i64* %offset73, align 8
  %cmp74 = icmp ne i64 %call72, %73
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.70
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0))
  %74 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %next77 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %74, i32 0, i32 4
  %75 = load %struct.file_list_tag*, %struct.file_list_tag** %next77, align 8
  store %struct.file_list_tag* %75, %struct.file_list_tag** %entry1, align 8
  br label %while.cond.63

if.end.78:                                        ; preds = %if.end.70
  %arraydecay79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %76 = load i8*, i8** %dirname.addr, align 8
  %77 = load i32, i32* %count, align 4
  %78 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %offset80 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %78, i32 0, i32 2
  %79 = load i64, i64* %offset80, align 8
  %call81 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay79, i64 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* %76, i32 %77, i64 %79) #4
  %arraydecay82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call83 = call i32 (i8*, i32, ...) @open(i8* %arraydecay82, i32 577, i32 448)
  store i32 %call83, i32* %ofd, align 4
  %80 = load i32, i32* %ofd, align 4
  %cmp84 = icmp slt i32 %80, 0
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.78
  %81 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %next87 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %81, i32 0, i32 4
  %82 = load %struct.file_list_tag*, %struct.file_list_tag** %next87, align 8
  store %struct.file_list_tag* %82, %struct.file_list_tag** %entry1, align 8
  br label %while.cond.63

if.end.88:                                        ; preds = %if.end.78
  %83 = load i32, i32* %tmpfd, align 4
  %84 = load i32, i32* %ofd, align 4
  %85 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %length89 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %85, i32 0, i32 3
  %86 = load i64, i64* %length89, align 8
  %call90 = call i64 @chm_copy_file_data(i32 %83, i32 %84, i64 %86)
  %87 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %length91 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %87, i32 0, i32 3
  %88 = load i64, i64* %length91, align 8
  %cmp92 = icmp ne i64 %call90, %88
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.88
  %89 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %length95 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %89, i32 0, i32 3
  %90 = load i64, i64* %length95, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i64 %90)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.88
  %91 = load i32, i32* %ofd, align 4
  %call97 = call i32 @close(i32 %91)
  %92 = load %struct.file_list_tag*, %struct.file_list_tag** %entry1, align 8
  %next98 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %92, i32 0, i32 4
  %93 = load %struct.file_list_tag*, %struct.file_list_tag** %next98, align 8
  store %struct.file_list_tag* %93, %struct.file_list_tag** %entry1, align 8
  %94 = load i32, i32* %count, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond.63

while.end.99:                                     ; preds = %while.cond.63
  %95 = load i32, i32* %tmpfd, align 4
  %call100 = call i32 @close(i32 %95)
  store i32 -1, i32* %tmpfd, align 4
  store i32 1, i32* %retval2, align 4
  br label %abort

abort:                                            ; preds = %while.end.99, %if.then.59, %if.then.49, %if.then.39, %sw.default, %if.then.29
  %96 = load i32, i32* %tmpfd, align 4
  %cmp101 = icmp sge i32 %96, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %abort
  %97 = load i32, i32* %tmpfd, align 4
  %call104 = call i32 @close(i32 %97)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %abort
  %98 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %tobool106 = icmp ne %struct.lzx_content_tag* %98, null
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  %99 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %100 = bitcast %struct.lzx_content_tag* %99 to i8*
  call void @free(i8* %100) #4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  %101 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %tobool109 = icmp ne %struct.lzx_reset_table_tag* %101, null
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.108
  %102 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %103 = bitcast %struct.lzx_reset_table_tag* %102 to i8*
  call void @free(i8* %103) #4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.108
  %104 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %tobool112 = icmp ne %struct.lzx_control_tag* %104, null
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.111
  %105 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %106 = bitcast %struct.lzx_control_tag* %105 to i8*
  call void @free(i8* %106) #4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.111
  %107 = load i32, i32* %retval2, align 4
  store i32 %107, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal void @free_file_list(%struct.file_list_tag* %file_l) #0 {
entry:
  %file_l.addr = alloca %struct.file_list_tag*, align 8
  %next = alloca %struct.file_list_tag*, align 8
  store %struct.file_list_tag* %file_l, %struct.file_list_tag** %file_l.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %tobool = icmp ne %struct.file_list_tag* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %next1 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %1, i32 0, i32 4
  %2 = load %struct.file_list_tag*, %struct.file_list_tag** %next1, align 8
  store %struct.file_list_tag* %2, %struct.file_list_tag** %next, align 8
  %3 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %name = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %name3 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %5, i32 0, i32 0
  %6 = load i8*, i8** %name3, align 8
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %8 = bitcast %struct.file_list_tag* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct.file_list_tag*, %struct.file_list_tag** %next, align 8
  store %struct.file_list_tag* %9, %struct.file_list_tag** %file_l.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @chm_read_data(i32 %fd, i8* %dest, i64 %offset, i64 %len, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  %0 = load i64, i64* %offset.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %add = add nsw i64 %2, %3
  %cmp3 = icmp slt i64 %add, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %4 = load i8*, i8** %m_area.addr, align 8
  %cmp4 = icmp ne i8* %4, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load i64, i64* %offset.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %add6 = add nsw i64 %5, %6
  %7 = load i64, i64* %m_length.addr, align 8
  %cmp7 = icmp sgt i64 %add6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  %8 = load i8*, i8** %dest.addr, align 8
  %9 = load i8*, i8** %m_area.addr, align 8
  %10 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr, i64 %11, i32 1, i1 false)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %fd.addr, align 4
  %13 = load i64, i64* %offset.addr, align 8
  %call = call i64 @lseek(i32 %12, i64 %13, i32 0) #4
  %14 = load i64, i64* %offset.addr, align 8
  %cmp10 = icmp ne i64 %call, %14
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %15 = load i32, i32* %fd.addr, align 4
  %16 = load i8*, i8** %dest.addr, align 8
  %17 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %17 to i32
  %call13 = call i32 @cli_readn(i32 %15, i8* %16, i32 %conv)
  %conv14 = sext i32 %call13 to i64
  %18 = load i64, i64* %len.addr, align 8
  %cmp15 = icmp ne i64 %conv14, %18
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.11, %if.then.8, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_chunk_entries(i8* %chunk, i32 %chunk_len, i16 zeroext %num_entries, %struct.file_list_tag* %file_l, %struct.file_list_tag* %sys_file_l) #0 {
entry:
  %retval = alloca i32, align 4
  %chunk.addr = alloca i8*, align 8
  %chunk_len.addr = alloca i32, align 4
  %num_entries.addr = alloca i16, align 2
  %file_l.addr = alloca %struct.file_list_tag*, align 8
  %sys_file_l.addr = alloca %struct.file_list_tag*, align 8
  %current = alloca i8*, align 8
  %end = alloca i8*, align 8
  %name_len = alloca i64, align 8
  %file_e = alloca %struct.file_list_tag*, align 8
  store i8* %chunk, i8** %chunk.addr, align 8
  store i32 %chunk_len, i32* %chunk_len.addr, align 4
  store i16 %num_entries, i16* %num_entries.addr, align 2
  store %struct.file_list_tag* %file_l, %struct.file_list_tag** %file_l.addr, align 8
  store %struct.file_list_tag* %sys_file_l, %struct.file_list_tag** %sys_file_l.addr, align 8
  %0 = load i8*, i8** %chunk.addr, align 8
  %1 = load i32, i32* %chunk_len.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  %2 = load i8*, i8** %chunk.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 20
  store i8* %add.ptr1, i8** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %entry
  %3 = load i16, i16* %num_entries.addr, align 2
  %dec = add i16 %3, -1
  store i16 %dec, i16* %num_entries.addr, align 2
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %current, align 8
  %5 = load i8*, i8** %end, align 8
  %cmp = icmp ugt i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %call = call i8* @cli_malloc(i64 40)
  %6 = bitcast i8* %call to %struct.file_list_tag*
  store %struct.file_list_tag* %6, %struct.file_list_tag** %file_e, align 8
  %7 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %tobool2 = icmp ne %struct.file_list_tag* %7, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %next = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %8, i32 0, i32 4
  store %struct.file_list_tag* null, %struct.file_list_tag** %next, align 8
  %9 = load i8*, i8** %end, align 8
  %call5 = call i64 @read_enc_int(i8** %current, i8* %9)
  store i64 %call5, i64* %name_len, align 8
  %10 = load i8*, i8** %current, align 8
  %11 = load i64, i64* %name_len, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8*, i8** %end, align 8
  %cmp7 = icmp ugt i8* %add.ptr6, %12
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load i8*, i8** %current, align 8
  %14 = load i64, i64* %name_len, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %chunk.addr, align 8
  %cmp9 = icmp ult i8* %add.ptr8, %15
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  %16 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %17 = bitcast %struct.file_list_tag* %16 to i8*
  call void @free(i8* %17) #4
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %18 = load i64, i64* %name_len, align 8
  %cmp12 = icmp ugt i64 %18, 16777215
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %19 = load i64, i64* %name_len, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i64 %19)
  %call14 = call i8* @cli_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  %20 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %20, i32 0, i32 0
  store i8* %call14, i8** %name, align 8
  %21 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name15 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %21, i32 0, i32 0
  %22 = load i8*, i8** %name15, align 8
  %tobool16 = icmp ne i8* %22, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  %23 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %24 = bitcast %struct.file_list_tag* %23 to i8*
  call void @free(i8* %24) #4
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  br label %if.end.28

if.else:                                          ; preds = %if.end.11
  %25 = load i64, i64* %name_len, align 8
  %add = add i64 %25, 1
  %call19 = call i8* @cli_malloc(i64 %add)
  %26 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name20 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %26, i32 0, i32 0
  store i8* %call19, i8** %name20, align 8
  %27 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name21 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %27, i32 0, i32 0
  %28 = load i8*, i8** %name21, align 8
  %tobool22 = icmp ne i8* %28, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.else
  %29 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %30 = bitcast %struct.file_list_tag* %29 to i8*
  call void @free(i8* %30) #4
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.else
  %31 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name25 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %31, i32 0, i32 0
  %32 = load i8*, i8** %name25, align 8
  %33 = load i8*, i8** %current, align 8
  %34 = load i64, i64* %name_len, align 8
  %call26 = call i8* @strncpy(i8* %32, i8* %33, i64 %34) #4
  %35 = load i64, i64* %name_len, align 8
  %36 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name27 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %36, i32 0, i32 0
  %37 = load i8*, i8** %name27, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %35
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.24, %if.end.18
  %38 = load i64, i64* %name_len, align 8
  %39 = load i8*, i8** %current, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %add.ptr29, i8** %current, align 8
  %40 = load i8*, i8** %end, align 8
  %call30 = call i64 @read_enc_int(i8** %current, i8* %40)
  %41 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %section = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %41, i32 0, i32 1
  store i64 %call30, i64* %section, align 8
  %42 = load i8*, i8** %end, align 8
  %call31 = call i64 @read_enc_int(i8** %current, i8* %42)
  %43 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %offset = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %43, i32 0, i32 2
  store i64 %call31, i64* %offset, align 8
  %44 = load i8*, i8** %end, align 8
  %call32 = call i64 @read_enc_int(i8** %current, i8* %44)
  %45 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %length = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %45, i32 0, i32 3
  store i64 %call32, i64* %length, align 8
  %46 = load i64, i64* %name_len, align 8
  %cmp33 = icmp uge i64 %46, 2
  br i1 %cmp33, label %land.lhs.true, label %if.else.48

land.lhs.true:                                    ; preds = %if.end.28
  %47 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name34 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %47, i32 0, i32 0
  %48 = load i8*, i8** %name34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx35, align 1
  %conv = zext i8 %49 to i32
  %cmp36 = icmp eq i32 %conv, 58
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.48

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %50 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name39 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %50, i32 0, i32 0
  %51 = load i8*, i8** %name39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %52 to i32
  %cmp42 = icmp eq i32 %conv41, 58
  br i1 %cmp42, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %land.lhs.true.38
  %53 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l.addr, align 8
  %next45 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %53, i32 0, i32 4
  %54 = load %struct.file_list_tag*, %struct.file_list_tag** %next45, align 8
  %55 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %next46 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %55, i32 0, i32 4
  store %struct.file_list_tag* %54, %struct.file_list_tag** %next46, align 8
  %56 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %57 = load %struct.file_list_tag*, %struct.file_list_tag** %sys_file_l.addr, align 8
  %next47 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %57, i32 0, i32 4
  store %struct.file_list_tag* %56, %struct.file_list_tag** %next47, align 8
  br label %if.end.52

if.else.48:                                       ; preds = %land.lhs.true.38, %land.lhs.true, %if.end.28
  %58 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %next49 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %58, i32 0, i32 4
  %59 = load %struct.file_list_tag*, %struct.file_list_tag** %next49, align 8
  %60 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %next50 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %60, i32 0, i32 4
  store %struct.file_list_tag* %59, %struct.file_list_tag** %next50, align 8
  %61 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %62 = load %struct.file_list_tag*, %struct.file_list_tag** %file_l.addr, align 8
  %next51 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %62, i32 0, i32 4
  store %struct.file_list_tag* %61, %struct.file_list_tag** %next51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.48, %if.then.44
  %63 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %section53 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %63, i32 0, i32 1
  %64 = load i64, i64* %section53, align 8
  %65 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %offset54 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %65, i32 0, i32 2
  %66 = load i64, i64* %offset54, align 8
  %67 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %length55 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %67, i32 0, i32 3
  %68 = load i64, i64* %length55, align 8
  %69 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e, align 8
  %name56 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %69, i32 0, i32 0
  %70 = load i8*, i8** %name56, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i32 0, i32 0), i64 %64, i64 %66, i64 %68, i8* %70)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.23, %if.then.17, %if.then.10, %if.then.3, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal void @print_chunk(%struct.chunk_header_tag* %chunk) #0 {
entry:
  %chunk.addr = alloca %struct.chunk_header_tag*, align 8
  store %struct.chunk_header_tag* %chunk, %struct.chunk_header_tag** %chunk.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  %0 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %signature = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %signature1 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i32 0, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %4 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %signature4 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %signature4, i32 0, i64 2
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %6 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %signature7 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %signature7, i32 0, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9)
  %8 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %free_space = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %8, i32 0, i32 1
  %9 = load i32, i32* %free_space, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 %9)
  %10 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %signature10 = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %10, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature10, i32 0, i32 0
  %call = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i64 4) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %block_prev = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %11, i32 0, i32 3
  %12 = load i32, i32* %block_prev, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %12)
  %13 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %block_next = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %13, i32 0, i32 4
  %14 = load i32, i32* %block_next, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %14)
  %15 = load %struct.chunk_header_tag*, %struct.chunk_header_tag** %chunk.addr, align 8
  %num_entries = getelementptr inbounds %struct.chunk_header_tag, %struct.chunk_header_tag* %15, i32 0, i32 6
  %16 = load i16, i16* %num_entries, align 2
  %conv12 = zext i16 %16 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @read_enc_int(i8** %start, i8* %end) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %retval1 = alloca i64, align 8
  %current = alloca i8*, align 8
  store i8** %start, i8*** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 0, i64* %retval1, align 8
  %0 = load i8**, i8*** %start.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %current, align 8
  %2 = load i8*, i8** %current, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i8*, i8** %current, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ugt i8* %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  store i64 0, i64* %retval
  br label %return

if.end.4:                                         ; preds = %do.body
  %6 = load i64, i64* %retval1, align 8
  %shl = shl i64 %6, 7
  %7 = load i8*, i8** %current, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 127
  %conv5 = sext i32 %and to i64
  %or = or i64 %shl, %conv5
  store i64 %or, i64* %retval1, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %9 = load i8*, i8** %current, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %current, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %and7 = and i32 %conv6, 128
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i8*, i8** %current, align 8
  %12 = load i8**, i8*** %start.addr, align 8
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* %retval1, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.lzx_control_tag* @read_sys_control(i32 %fd, %struct.itsf_header_tag* %itsf_hdr, %struct.file_list_tag* %file_e, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca %struct.lzx_control_tag*, align 8
  %fd.addr = alloca i32, align 4
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  %file_e.addr = alloca %struct.file_list_tag*, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %lzx_control = alloca %struct.lzx_control_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  store %struct.file_list_tag* %file_e, %struct.file_list_tag** %file_e.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  %0 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %length = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %0, i32 0, i32 3
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ne i64 %1, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.lzx_control_tag* null, %struct.lzx_control_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %2, i32 0, i32 12
  %3 = load i64, i64* %data_offset, align 1
  %4 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %offset1 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %4, i32 0, i32 2
  %5 = load i64, i64* %offset1, align 8
  %add = add i64 %3, %5
  store i64 %add, i64* %offset, align 8
  %6 = load i64, i64* %offset, align 8
  %cmp2 = icmp slt i64 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.lzx_control_tag* null, %struct.lzx_control_tag** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call = call i8* @cli_malloc(i64 24)
  %7 = bitcast i8* %call to %struct.lzx_control_tag*
  store %struct.lzx_control_tag* %7, %struct.lzx_control_tag** %lzx_control, align 8
  %8 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %tobool = icmp ne %struct.lzx_control_tag* %8, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  store %struct.lzx_control_tag* null, %struct.lzx_control_tag** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %11 = bitcast %struct.lzx_control_tag* %10 to i8*
  %12 = load i64, i64* %offset, align 8
  %13 = load i8*, i8** %m_area.addr, align 8
  %14 = load i64, i64* %m_length.addr, align 8
  %call7 = call i32 @chm_read_data(i32 %9, i8* %11, i64 %12, i64 24, i8* %13, i64 %14)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %abort

if.end.10:                                        ; preds = %if.end.6
  %15 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %length11 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %15, i32 0, i32 0
  %16 = load i32, i32* %length11, align 1
  %17 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %length12 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %17, i32 0, i32 0
  store i32 %16, i32* %length12, align 1
  %18 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %version = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %18, i32 0, i32 2
  %19 = load i32, i32* %version, align 1
  %20 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %version13 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %20, i32 0, i32 2
  store i32 %19, i32* %version13, align 1
  %21 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %21, i32 0, i32 3
  %22 = load i32, i32* %reset_interval, align 1
  %23 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval14 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %23, i32 0, i32 3
  store i32 %22, i32* %reset_interval14, align 1
  %24 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %24, i32 0, i32 4
  %25 = load i32, i32* %window_size, align 1
  %26 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size15 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %26, i32 0, i32 4
  store i32 %25, i32* %window_size15, align 1
  %27 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %cache_size = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %27, i32 0, i32 5
  %28 = load i32, i32* %cache_size, align 1
  %29 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %cache_size16 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %29, i32 0, i32 5
  store i32 %28, i32* %cache_size16, align 1
  %30 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %signature = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %30, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i32 0
  %call17 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay, i64 4) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i32 0, i32 0))
  br label %abort

if.end.20:                                        ; preds = %if.end.10
  %31 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %version21 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %31, i32 0, i32 2
  %32 = load i32, i32* %version21, align 1
  switch i32 %32, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.20
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.20
  %33 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %reset_interval23 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %33, i32 0, i32 3
  %34 = load i32, i32* %reset_interval23, align 1
  %mul = mul i32 %34, 32768
  store i32 %mul, i32* %reset_interval23, align 1
  %35 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %window_size24 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %35, i32 0, i32 4
  %36 = load i32, i32* %window_size24, align 1
  %mul25 = mul i32 %36, 32768
  store i32 %mul25, i32* %window_size24, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  %37 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %version26 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %37, i32 0, i32 2
  %38 = load i32, i32* %version26, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), i32 %38)
  br label %abort

sw.epilog:                                        ; preds = %sw.bb.22, %sw.bb
  %39 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  call void @print_sys_control(%struct.lzx_control_tag* %39)
  %40 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  store %struct.lzx_control_tag* %40, %struct.lzx_control_tag** %retval
  br label %return

abort:                                            ; preds = %sw.default, %if.then.19, %if.then.9
  %41 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control, align 8
  %42 = bitcast %struct.lzx_control_tag* %41 to i8*
  call void @free(i8* %42) #4
  store %struct.lzx_control_tag* null, %struct.lzx_control_tag** %retval
  br label %return

return:                                           ; preds = %abort, %sw.epilog, %if.then.5, %if.then.3, %if.then
  %43 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %retval
  ret %struct.lzx_control_tag* %43
}

; Function Attrs: nounwind uwtable
define internal %struct.lzx_content_tag* @read_sys_content(i32 %fd, %struct.itsf_header_tag* %itsf_hdr, %struct.file_list_tag* %file_e) #0 {
entry:
  %retval = alloca %struct.lzx_content_tag*, align 8
  %fd.addr = alloca i32, align 4
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  %file_e.addr = alloca %struct.file_list_tag*, align 8
  %lzx_content = alloca %struct.lzx_content_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  store %struct.file_list_tag* %file_e, %struct.file_list_tag** %file_e.addr, align 8
  %call = call i8* @cli_malloc(i64 16)
  %0 = bitcast i8* %call to %struct.lzx_content_tag*
  store %struct.lzx_content_tag* %0, %struct.lzx_content_tag** %lzx_content, align 8
  %1 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %tobool = icmp ne %struct.lzx_content_tag* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.lzx_content_tag* null, %struct.lzx_content_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %2, i32 0, i32 12
  %3 = load i64, i64* %data_offset, align 1
  %4 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %offset = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %4, i32 0, i32 2
  %5 = load i64, i64* %offset, align 8
  %add = add i64 %3, %5
  %6 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %offset1 = getelementptr inbounds %struct.lzx_content_tag, %struct.lzx_content_tag* %6, i32 0, i32 0
  store i64 %add, i64* %offset1, align 8
  %7 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %length = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %7, i32 0, i32 3
  %8 = load i64, i64* %length, align 8
  %9 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  %length2 = getelementptr inbounds %struct.lzx_content_tag, %struct.lzx_content_tag* %9, i32 0, i32 1
  store i64 %8, i64* %length2, align 8
  %10 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  call void @print_sys_content(%struct.lzx_content_tag* %10)
  %11 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content, align 8
  store %struct.lzx_content_tag* %11, %struct.lzx_content_tag** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %retval
  ret %struct.lzx_content_tag* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.lzx_reset_table_tag* @read_sys_reset_table(i32 %fd, %struct.itsf_header_tag* %itsf_hdr, %struct.file_list_tag* %file_e, i8* %m_area, i64 %m_length) #0 {
entry:
  %retval = alloca %struct.lzx_reset_table_tag*, align 8
  %fd.addr = alloca i32, align 4
  %itsf_hdr.addr = alloca %struct.itsf_header_tag*, align 8
  %file_e.addr = alloca %struct.file_list_tag*, align 8
  %m_area.addr = alloca i8*, align 8
  %m_length.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %lzx_reset_table = alloca %struct.lzx_reset_table_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.itsf_header_tag* %itsf_hdr, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  store %struct.file_list_tag* %file_e, %struct.file_list_tag** %file_e.addr, align 8
  store i8* %m_area, i8** %m_area.addr, align 8
  store i64 %m_length, i64* %m_length.addr, align 8
  %0 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %length = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %0, i32 0, i32 3
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %1, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.lzx_reset_table_tag* null, %struct.lzx_reset_table_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.itsf_header_tag*, %struct.itsf_header_tag** %itsf_hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.itsf_header_tag, %struct.itsf_header_tag* %2, i32 0, i32 12
  %3 = load i64, i64* %data_offset, align 1
  %4 = load %struct.file_list_tag*, %struct.file_list_tag** %file_e.addr, align 8
  %offset1 = getelementptr inbounds %struct.file_list_tag, %struct.file_list_tag* %4, i32 0, i32 2
  %5 = load i64, i64* %offset1, align 8
  %add = add i64 %3, %5
  %add2 = add i64 %add, 4
  store i64 %add2, i64* %offset, align 8
  %6 = load i64, i64* %offset, align 8
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.lzx_reset_table_tag* null, %struct.lzx_reset_table_tag** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call = call i8* @cli_malloc(i64 44)
  %7 = bitcast i8* %call to %struct.lzx_reset_table_tag*
  store %struct.lzx_reset_table_tag* %7, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %8 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %tobool = icmp ne %struct.lzx_reset_table_tag* %8, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  store %struct.lzx_reset_table_tag* null, %struct.lzx_reset_table_tag** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.5
  %9 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %9, 4
  %10 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %rt_offset = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %10, i32 0, i32 6
  store i64 %sub, i64* %rt_offset, align 1
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %13 = bitcast %struct.lzx_reset_table_tag* %12 to i8*
  %14 = load i64, i64* %offset, align 8
  %15 = load i8*, i8** %m_area.addr, align 8
  %16 = load i64, i64* %m_length.addr, align 8
  %call8 = call i32 @chm_read_data(i32 %11, i8* %13, i64 %14, i64 36, i8* %15, i64 %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  br label %abort

if.end.11:                                        ; preds = %if.end.7
  %17 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %num_entries = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %17, i32 0, i32 0
  %18 = load i32, i32* %num_entries, align 1
  %19 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %num_entries12 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %19, i32 0, i32 0
  store i32 %18, i32* %num_entries12, align 1
  %20 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %entry_size = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %20, i32 0, i32 1
  %21 = load i32, i32* %entry_size, align 1
  %22 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %entry_size13 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %22, i32 0, i32 1
  store i32 %21, i32* %entry_size13, align 1
  %23 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %table_offset = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %23, i32 0, i32 2
  %24 = load i32, i32* %table_offset, align 1
  %25 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %table_offset14 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %25, i32 0, i32 2
  store i32 %24, i32* %table_offset14, align 1
  %26 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %uncom_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %26, i32 0, i32 3
  %27 = load i64, i64* %uncom_len, align 1
  %28 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %uncom_len15 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %28, i32 0, i32 3
  store i64 %27, i64* %uncom_len15, align 1
  %29 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %com_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %29, i32 0, i32 4
  %30 = load i64, i64* %com_len, align 1
  %31 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %com_len16 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %31, i32 0, i32 4
  store i64 %30, i64* %com_len16, align 1
  %32 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %frame_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %32, i32 0, i32 5
  %33 = load i64, i64* %frame_len, align 1
  %34 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %frame_len17 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %34, i32 0, i32 5
  store i64 %33, i64* %frame_len17, align 1
  %35 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %frame_len18 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %35, i32 0, i32 5
  %36 = load i64, i64* %frame_len18, align 1
  %cmp19 = icmp ne i64 %36, 32768
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.11
  %37 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %frame_len21 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %37, i32 0, i32 5
  %38 = load i64, i64* %frame_len21, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0), i64 %38)
  br label %abort

if.end.22:                                        ; preds = %if.end.11
  %39 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %entry_size23 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %39, i32 0, i32 1
  %40 = load i32, i32* %entry_size23, align 1
  %cmp24 = icmp ne i32 %40, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.22
  %41 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %entry_size25 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %41, i32 0, i32 1
  %42 = load i32, i32* %entry_size25, align 1
  %cmp26 = icmp ne i32 %42, 8
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true
  %43 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %entry_size28 = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %43, i32 0, i32 1
  %44 = load i32, i32* %entry_size28, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0), i32 %44)
  br label %abort

if.end.29:                                        ; preds = %land.lhs.true, %if.end.22
  %45 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  call void @print_sys_reset_table(%struct.lzx_reset_table_tag* %45)
  %46 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  store %struct.lzx_reset_table_tag* %46, %struct.lzx_reset_table_tag** %retval
  br label %return

abort:                                            ; preds = %if.then.27, %if.then.20, %if.then.10
  %47 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table, align 8
  %48 = bitcast %struct.lzx_reset_table_tag* %47 to i8*
  call void @free(i8* %48) #4
  store %struct.lzx_reset_table_tag* null, %struct.lzx_reset_table_tag** %retval
  br label %return

return:                                           ; preds = %abort, %if.end.29, %if.then.6, %if.then.4, %if.then
  %49 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %retval
  ret %struct.lzx_reset_table_tag* %49
}

declare %struct.lzx_stream* @lzx_init(i32, i32, i32, i32, i32, i64, %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)*) #1

declare i32 @lzx_decompress(%struct.lzx_stream*, i64) #1

declare void @lzx_free(%struct.lzx_stream*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @chm_copy_file_data(i32 %ifd, i32 %ofd, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %ifd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %data = alloca [8192 x i8], align 16
  %count = alloca i64, align 8
  %rem = alloca i64, align 8
  %todo = alloca i32, align 4
  store i32 %ifd, i32* %ifd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %rem, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %1 = load i64, i64* %rem, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %rem, align 8
  %cmp1 = icmp ult i64 8192, %2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %3 = load i64, i64* %rem, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8192, %cond.true ], [ %3, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %todo, align 4
  %4 = load i32, i32* %ifd.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %5 = load i32, i32* %todo, align 4
  %call = call i32 @cli_readn(i32 %4, i8* %arraydecay, i32 %5)
  %conv2 = sext i32 %call to i64
  store i64 %conv2, i64* %count, align 8
  %6 = load i64, i64* %count, align 8
  %7 = load i32, i32* %todo, align 4
  %conv3 = zext i32 %7 to i64
  %cmp4 = icmp ne i64 %6, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i64, i64* %len.addr, align 8
  %9 = load i64, i64* %rem, align 8
  %sub = sub i64 %8, %9
  store i64 %sub, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %ofd.addr, align 4
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %11 = load i64, i64* %count, align 8
  %conv7 = trunc i64 %11 to i32
  %call8 = call i32 @cli_writen(i32 %10, i8* %arraydecay6, i32 %conv7)
  %conv9 = sext i32 %call8 to i64
  %12 = load i64, i64* %count, align 8
  %cmp10 = icmp ne i64 %conv9, %12
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %13 = load i64, i64* %len.addr, align 8
  %14 = load i64, i64* %rem, align 8
  %sub13 = sub i64 %13, %14
  %15 = load i64, i64* %count, align 8
  %sub14 = sub i64 %sub13, %15
  store i64 %sub14, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %16 = load i64, i64* %count, align 8
  %17 = load i64, i64* %rem, align 8
  %sub16 = sub i64 %17, %16
  store i64 %sub16, i64* %rem, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i64, i64* %len.addr, align 8
  store i64 %18, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12, %if.then
  %19 = load i64, i64* %retval
  ret i64 %19
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @print_sys_control(%struct.lzx_control_tag* %lzx_control) #0 {
entry:
  %lzx_control.addr = alloca %struct.lzx_control_tag*, align 8
  store %struct.lzx_control_tag* %lzx_control, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %0 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %tobool = icmp ne %struct.lzx_control_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  %1 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %length = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %1, i32 0, i32 0
  %2 = load i32, i32* %length, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 %2)
  %3 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %signature = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %signature1 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i32 0, i64 1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %7 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %signature4 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %signature4, i32 0, i64 2
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %9 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %signature7 = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %signature7, i32 0, i64 3
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9)
  %11 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %version = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %11, i32 0, i32 2
  %12 = load i32, i32* %version, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %12)
  %13 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %reset_interval = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %13, i32 0, i32 3
  %14 = load i32, i32* %reset_interval, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i32 %14)
  %15 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %window_size = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %15, i32 0, i32 4
  %16 = load i32, i32* %window_size, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 %16)
  %17 = load %struct.lzx_control_tag*, %struct.lzx_control_tag** %lzx_control.addr, align 8
  %cache_size = getelementptr inbounds %struct.lzx_control_tag, %struct.lzx_control_tag* %17, i32 0, i32 5
  %18 = load i32, i32* %cache_size, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 %18)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_sys_content(%struct.lzx_content_tag* %lzx_content) #0 {
entry:
  %lzx_content.addr = alloca %struct.lzx_content_tag*, align 8
  store %struct.lzx_content_tag* %lzx_content, %struct.lzx_content_tag** %lzx_content.addr, align 8
  %0 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content.addr, align 8
  %tobool = icmp ne %struct.lzx_content_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0))
  %1 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content.addr, align 8
  %offset = getelementptr inbounds %struct.lzx_content_tag, %struct.lzx_content_tag* %1, i32 0, i32 0
  %2 = load i64, i64* %offset, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i64 %2)
  %3 = load %struct.lzx_content_tag*, %struct.lzx_content_tag** %lzx_content.addr, align 8
  %length = getelementptr inbounds %struct.lzx_content_tag, %struct.lzx_content_tag* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i64 %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_sys_reset_table(%struct.lzx_reset_table_tag* %lzx_reset_table) #0 {
entry:
  %lzx_reset_table.addr = alloca %struct.lzx_reset_table_tag*, align 8
  store %struct.lzx_reset_table_tag* %lzx_reset_table, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %0 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %tobool = icmp ne %struct.lzx_reset_table_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0))
  %1 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %num_entries = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %1, i32 0, i32 0
  %2 = load i32, i32* %num_entries, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i32 %2)
  %3 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %entry_size = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %3, i32 0, i32 1
  %4 = load i32, i32* %entry_size, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i32 %4)
  %5 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %table_offset = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %5, i32 0, i32 2
  %6 = load i32, i32* %table_offset, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 %6)
  %7 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %uncom_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %7, i32 0, i32 3
  %8 = load i64, i64* %uncom_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i64 %8)
  %9 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %com_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %9, i32 0, i32 4
  %10 = load i64, i64* %com_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i64 %10)
  %11 = load %struct.lzx_reset_table_tag*, %struct.lzx_reset_table_tag** %lzx_reset_table.addr, align 8
  %frame_len = getelementptr inbounds %struct.lzx_reset_table_tag, %struct.lzx_reset_table_tag* %11, i32 0, i32 5
  %12 = load i64, i64* %frame_len, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i64 %12)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @cli_writen(i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
